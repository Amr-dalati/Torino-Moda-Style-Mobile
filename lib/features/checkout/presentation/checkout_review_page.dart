import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/address_controller.dart';
import '../application/checkout_controller.dart';
import '../domain/customer_address.dart';

class CheckoutReviewPage extends ConsumerStatefulWidget {
  const CheckoutReviewPage({super.key, this.addressId});

  final int? addressId;

  @override
  ConsumerState<CheckoutReviewPage> createState() => _CheckoutReviewPageState();
}

class _CheckoutReviewPageState extends ConsumerState<CheckoutReviewPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadQuote());
  }

  void _loadQuote() {
    final addressId = widget.addressId ??
        ref.read(selectedCheckoutAddressIdProvider);
    if (addressId != null) {
      ref.read(selectedCheckoutAddressIdProvider.notifier).select(addressId);
      ref.read(checkoutQuoteControllerProvider.notifier).loadQuote(addressId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final addressId = widget.addressId ?? ref.watch(selectedCheckoutAddressIdProvider);
    final addresses = ref.watch(addressControllerProvider);
    final quote = ref.watch(checkoutQuoteControllerProvider);
    final submit = ref.watch(checkoutSubmitControllerProvider);

    ref.listen(checkoutSubmitControllerProvider, (prev, next) {
      next.whenOrNull(
        data: (result) {
          if (result != null && context.mounted) {
            context.go(RouteNames.checkoutResult, extra: result);
          }
        },
      );
    });

    CustomerAddress? address;
    addresses.whenData((list) {
      if (addressId != null) {
        address = list.where((a) => a.id == addressId).firstOrNull;
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(l10n.checkoutReviewTitle)),
      body: addressId == null
          ? Center(child: Text(l10n.selectAddressFirst))
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (address != null)
                  Card(
                    child: ListTile(
                      title: Text(address!.displayName(preferArabic: preferArabic)),
                      subtitle: Text(address!.addressLine1),
                      trailing: TextButton(
                        onPressed: () => context.push(RouteNames.checkoutAddress),
                        child: Text(l10n.changeLabel),
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
                quote.when(
                  loading: () => LoadingView(label: l10n.loadingQuote),
                  error: (e, _) => Column(
                    children: [
                      Text(e.toString()),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: _loadQuote,
                        child: Text(l10n.retryLabel),
                      ),
                    ],
                  ),
                  data: (q) {
                    if (q == null) {
                      return LoadingView(label: l10n.loadingQuote);
                    }
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _TotalRow(label: l10n.subtotalLabel, value: q.subtotal),
                            _TotalRow(label: l10n.deliveryFeeLabel, value: q.deliveryFee),
                            if (q.discountTotal != '0' && q.discountTotal != '0.00')
                              _TotalRow(label: l10n.discountLabel, value: q.discountTotal),
                            const Divider(),
                            _TotalRow(
                              label: l10n.totalLabel,
                              value: q.total,
                              emphasize: true,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  label: l10n.placeOrderLabel,
                  onPressed: submit.isLoading || quote.valueOrNull == null
                      ? null
                      : () => _placeOrder(addressId),
                ),
                if (submit.isLoading)
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Center(child: CircularProgressIndicator()),
                  ),
              ],
            ),
    );
  }

  Future<void> _placeOrder(int addressId) async {
    try {
      await ref.read(checkoutSubmitControllerProvider.notifier).submit(addressId);
    } on AppError catch (e) {
      if (mounted) showAppErrorSnackBar(context, e);
    }
  }
}

class _TotalRow extends StatelessWidget {
  const _TotalRow({
    required this.label,
    required this.value,
    this.emphasize = false,
  });

  final String label;
  final String value;
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    final style = emphasize
        ? Theme.of(context).textTheme.titleMedium
        : Theme.of(context).textTheme.bodyLarge;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: style),
          Text(value, style: style),
        ],
      ),
    );
  }
}
