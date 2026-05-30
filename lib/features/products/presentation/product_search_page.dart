import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/product_list_state.dart';
import '../application/product_search_controller.dart';
import 'widgets/product_list_body.dart';

class ProductSearchPage extends ConsumerStatefulWidget {
  const ProductSearchPage({super.key, this.initialQuery = ''});

  final String initialQuery;

  @override
  ConsumerState<ProductSearchPage> createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends ConsumerState<ProductSearchPage> {
  late final TextEditingController _queryController;
  String? _queryError;

  @override
  void initState() {
    super.initState();
    _queryController = TextEditingController(text: widget.initialQuery);
    if (widget.initialQuery.trim().isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _submit());
    }
  }

  @override
  void dispose() {
    _queryController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _queryError = null);
    final query = _queryController.text.trim();
    if (query.isEmpty) {
      setState(() => _queryError = context.l10n.searchQueryRequired);
      return;
    }
    await ref.read(productSearchControllerProvider.notifier).search(query);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final searchState = ref.watch(productSearchControllerProvider);

    ref.listen(productSearchControllerProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          if (error is ValidationError) {
            setState(() {
              _queryError = error.firstFor('q') ?? error.message;
            });
          } else if (error is AppError) {
            showAppErrorSnackBar(context, error);
          }
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: Text(l10n.searchProducts)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _queryController,
                    decoration: InputDecoration(
                      labelText: l10n.searchHint,
                      errorText: _queryError,
                    ),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => _submit(),
                  ),
                ),
                const SizedBox(width: 12),
                PrimaryButton(
                  label: l10n.searchAction,
                  onPressed: _submit,
                ),
              ],
            ),
          ),
          Expanded(child: _buildResults(l10n, searchState)),
        ],
      ),
    );
  }

  Widget _buildResults(
    dynamic l10n,
    AsyncValue<ProductListState?> searchState,
  ) {
    return searchState.when(
      loading: () => LoadingView(label: l10n.loadingProducts),
      error: (error, _) => Center(
        child: Text(
          error is AppError ? appErrorMessage(error) : error.toString(),
        ),
      ),
      data: (data) {
        if (data == null) {
          return Center(child: Text(l10n.searchPrompt));
        }
        return ProductListBody(
          listState: AsyncData(data),
          emptyMessage: l10n.noSearchResults,
          onRefresh: _submit,
          onLoadMore: () =>
              ref.read(productSearchControllerProvider.notifier).loadMore(),
          onProductTap: (id) => context.push(RouteNames.productDetailPath(id)),
        );
      },
    );
  }
}
