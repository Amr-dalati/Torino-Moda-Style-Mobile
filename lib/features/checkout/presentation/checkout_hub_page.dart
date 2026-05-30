import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../shared/widgets/loading_view.dart';
import '../../../shared/widgets/primary_button.dart';
import '../application/address_controller.dart';

class CheckoutHubPage extends ConsumerWidget {
  const CheckoutHubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final addresses = ref.watch(addressControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.checkoutTitle)),
      body: addresses.when(
        loading: () => LoadingView(label: l10n.loadingAddresses),
        error: (e, _) => Center(child: Text(e.toString())),
        data: (list) {
          if (list.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(l10n.noAddressesMessage, textAlign: TextAlign.center),
                  const SizedBox(height: 24),
                  PrimaryButton(
                    label: l10n.addAddressLabel,
                    onPressed: () => context.push(RouteNames.checkoutAddress),
                  ),
                ],
              ),
            );
          }

          final defaultAddress = list.firstWhere(
            (a) => a.isDefault,
            orElse: () => list.first,
          );

          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(l10n.checkoutIntro, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 24),
                PrimaryButton(
                  label: l10n.manageAddressesLabel,
                  onPressed: () => context.push(RouteNames.checkoutAddress),
                ),
                const SizedBox(height: 12),
                PrimaryButton(
                  label: l10n.continueToReviewLabel,
                  onPressed: () => context.push(
                    RouteNames.checkoutReview,
                    extra: defaultAddress.id,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
