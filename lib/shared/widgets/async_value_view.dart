import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/localization/l10n.dart';
import '../../core/network/error/app_error.dart';
import '../utils/app_error_ui.dart';
import 'loading_view.dart';

class AsyncValueView<T> extends StatelessWidget {
  const AsyncValueView({
    super.key,
    required this.value,
    required this.data,
    this.loadingLabel,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final String? loadingLabel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return value.when(
      data: data,
      loading: () => LoadingView(label: loadingLabel),
      error: (e, st) => Center(
        child: Text(
          e is AppError ? localizedAppErrorMessage(l10n, e) : l10n.unknownError,
        ),
      ),
    );
  }
}
