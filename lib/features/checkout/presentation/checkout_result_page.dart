import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/router/route_names.dart';
import '../../../core/localization/l10n.dart';
import '../../../core/localization/status_labels.dart';
import '../../../core/network/error/app_error.dart';
import '../../../core/observability/crash_reporting.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../cart/application/cart_controller.dart';
import '../../orders/domain/payment_status_helpers.dart';
import '../../orders/presentation/widgets/payment_status_section.dart';
import '../../orders/presentation/widgets/status_badge.dart';
import '../domain/checkout_result.dart';

class CheckoutResultPage extends ConsumerStatefulWidget {
  const CheckoutResultPage({super.key, required this.result});

  final CheckoutResult result;

  @override
  ConsumerState<CheckoutResultPage> createState() => _CheckoutResultPageState();
}

class _CheckoutResultPageState extends ConsumerState<CheckoutResultPage> {
  bool _openingUrl = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(cartControllerProvider.notifier).refresh();
    });
  }

  Future<void> _openPaymentUrl(String url) async {
    final l10n = context.l10n;
    final orderId = widget.result.order.id.toString();
    setState(() => _openingUrl = true);
    try {
      final uri = Uri.tryParse(url);
      if (uri == null) {
        if (mounted) {
          showAppErrorSnackBar(
            context,
            UnknownError(message: l10n.invalidPaymentUrl),
          );
        }
        unawaited(
          CrashReporting.captureEvent(
            message: 'payment_url_invalid',
            feature: 'checkout',
            tags: {'order_id': orderId},
          ),
        );
        return;
      }
      final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!launched && mounted) {
        showAppErrorSnackBar(
          context,
          UnknownError(message: l10n.couldNotOpenPaymentUrl),
        );
        unawaited(
          CrashReporting.captureEvent(
            message: 'payment_url_launch_failed',
            feature: 'checkout',
            tags: {'order_id': orderId},
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _openingUrl = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final order = widget.result.order;
    final payment = widget.result.payment;
    final checkoutUrl = payment.checkoutUrl;
    final hasCheckoutUrl = checkoutUrl != null && checkoutUrl.isNotEmpty;
    final pollPayment = shouldPollFromSnapshot(
      paymentStatus: order.paymentStatus,
      orderStatus: order.orderStatus,
    );

    return Scaffold(
      appBar: AppBar(title: Text(l10n.orderCreatedTitle)),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Icon(
            Icons.schedule,
            size: 64,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.paymentPendingMessage,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${l10n.orderNumberLabel}: ${order.orderNumber}'),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('${l10n.orderStatusLabel}:'),
                      StatusBadge(
                        status: order.orderStatus,
                        label: StatusLabels.orderStatus(l10n, order.orderStatus),
                        kind: StatusBadgeKind.order,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('${l10n.paymentStatusLabel}:'),
                      StatusBadge(
                        status: order.paymentStatus,
                        label: StatusLabels.paymentStatus(l10n, order.paymentStatus),
                        kind: StatusBadgeKind.payment,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('${l10n.totalLabel}: ${order.total}'),
                  const SizedBox(height: 8),
                  Text('${l10n.merchantReferenceLabel}: ${payment.merchantReference}'),
                ],
              ),
            ),
          ),
          if (pollPayment) ...[
            const SizedBox(height: 16),
            PaymentStatusSection(orderId: order.id),
          ],
          const SizedBox(height: 24),
          PrimaryButton(
            label: l10n.viewOrderLabel,
            onPressed: () => context.go(RouteNames.orderDetailPath(order.id)),
          ),
          if (hasCheckoutUrl) ...[
            const SizedBox(height: 12),
            PrimaryButton(
              label: l10n.openPaymentUrlLabel,
              onPressed: _openingUrl ? null : () => _openPaymentUrl(checkoutUrl),
            ),
          ],
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () => context.go(RouteNames.products),
            child: Text(l10n.backToProductsLabel),
          ),
        ],
      ),
    );
  }
}
