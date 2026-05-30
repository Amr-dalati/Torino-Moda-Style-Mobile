import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/localization/l10n.dart';
import '../../../core/localization/status_labels.dart';
import '../../../core/network/error/app_error.dart';
import '../../../shared/utils/app_error_ui.dart';
import '../../../shared/widgets/loading_view.dart';
import '../application/order_details_controller.dart';
import '../application/payment_status_controller.dart';
import '../domain/order.dart';
import '../domain/order_item.dart';
import '../domain/order_payment.dart';
import '../domain/order_shipping.dart';
import 'widgets/order_date_formatter.dart';
import 'widgets/payment_status_section.dart';
import 'widgets/status_badge.dart';

class OrderDetailPage extends ConsumerWidget {
  const OrderDetailPage({super.key, required this.orderId});

  final int orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final preferArabic = Localizations.localeOf(context).languageCode == 'ar';
    final orderState = ref.watch(orderDetailsControllerProvider(orderId));

    return Scaffold(
      appBar: AppBar(title: Text(l10n.orderDetailsTitle)),
      body: orderState.when(
        loading: () => LoadingView(label: l10n.loadingOrderDetails),
        error: (e, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(e is AppError ? appErrorMessage(e) : e.toString()),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () =>
                    ref.read(orderDetailsControllerProvider(orderId).notifier).refresh(),
                child: Text(l10n.retryLabel),
              ),
            ],
          ),
        ),
        data: (order) => RefreshIndicator(
          onRefresh: () async {
            await ref.read(orderDetailsControllerProvider(orderId).notifier).refresh();
            await ref.read(paymentStatusControllerProvider(orderId).notifier).refresh();
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              _OrderSummaryCard(order: order),
              const SizedBox(height: 16),
              PaymentStatusSection(orderId: orderId),
              const SizedBox(height: 16),
              Text(l10n.orderItemsTitle, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              ...order.items.map(
                (item) => _OrderItemTile(item: item, preferArabic: preferArabic),
              ),
              const SizedBox(height: 16),
              _TotalsCard(order: order),
              if (order.shipping != null) ...[
                const SizedBox(height: 16),
                _ShippingCard(shipping: order.shipping!),
              ],
              if (order.latestPayment != null) ...[
                const SizedBox(height: 16),
                _PaymentInfoCard(payment: order.latestPayment!),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderSummaryCard extends StatelessWidget {
  const _OrderSummaryCard({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final created = formatOrderDate(order.createdAt);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${l10n.orderNumberLabel}: ${order.orderNumber}'),
            if (created.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text('${l10n.orderDateLabel}: $created'),
            ],
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                StatusBadge(
                  status: order.paymentStatus,
                  label: StatusLabels.paymentStatus(l10n, order.paymentStatus),
                  kind: StatusBadgeKind.payment,
                ),
                StatusBadge(
                  status: order.orderStatus,
                  label: StatusLabels.orderStatus(l10n, order.orderStatus),
                  kind: StatusBadgeKind.order,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderItemTile extends StatelessWidget {
  const _OrderItemTile({required this.item, required this.preferArabic});

  final OrderItem item;
  final bool preferArabic;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(item.displayName(preferArabic: preferArabic)),
        subtitle: Text(
          [
            '${l10n.productCodeLabel}: ${item.productCode}',
            if (item.colorCode != null) '${l10n.colorLabel}: ${item.colorCode}',
            if (item.sizeCode != null) '${l10n.sizeLabel}: ${item.sizeCode}',
            '${l10n.quantityLabel}: ${item.quantity}',
            '${l10n.unitPriceLabel}: ${item.unitPriceSnapshot}',
          ].join(' · '),
        ),
        trailing: Text(item.lineTotal),
      ),
    );
  }
}

class _TotalsCard extends StatelessWidget {
  const _TotalsCard({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _TotalRow(label: l10n.subtotalLabel, value: order.subtotal),
            _TotalRow(label: l10n.deliveryFeeLabel, value: order.deliveryFee),
            if (order.discountTotal != '0' && order.discountTotal != '0.00')
              _TotalRow(label: l10n.discountLabel, value: order.discountTotal),
            const Divider(),
            _TotalRow(
              label: l10n.totalLabel,
              value: '${order.total} ${order.currency}',
              emphasize: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _ShippingCard extends StatelessWidget {
  const _ShippingCard({required this.shipping});

  final OrderShipping shipping;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final summary = shipping.summaryLine();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.shippingInfoTitle, style: Theme.of(context).textTheme.titleMedium),
            if (shipping.recipientName != null) ...[
              const SizedBox(height: 8),
              Text('${l10n.recipientNameLabel}: ${shipping.recipientName}'),
            ],
            if (shipping.recipientPhone != null) ...[
              const SizedBox(height: 8),
              Text('${l10n.recipientPhoneLabel}: ${shipping.recipientPhone}'),
            ],
            if (summary.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(summary),
            ],
          ],
        ),
      ),
    );
  }
}

class _PaymentInfoCard extends StatelessWidget {
  const _PaymentInfoCard({required this.payment});

  final OrderPayment payment;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.paymentInfoTitle, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            StatusBadge(
              status: payment.status,
              label: StatusLabels.paymentStatus(l10n, payment.status),
              kind: StatusBadgeKind.payment,
            ),
            const SizedBox(height: 8),
            Text('${l10n.totalLabel}: ${payment.amount} ${payment.currency}'),
            const SizedBox(height: 8),
            Text('${l10n.merchantReferenceLabel}: ${payment.merchantReference}'),
            if (payment.checkoutUrl != null && payment.checkoutUrl!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text('${l10n.checkoutUrlLabel}: ${payment.checkoutUrl}'),
            ],
          ],
        ),
      ),
    );
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
