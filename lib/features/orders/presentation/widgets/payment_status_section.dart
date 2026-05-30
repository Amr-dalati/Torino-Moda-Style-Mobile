import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n.dart';
import '../../../../core/localization/status_labels.dart';
import '../../../../core/network/error/app_error.dart';
import '../../../../shared/utils/app_error_ui.dart';
import '../../../../shared/widgets/loading_view.dart';
import '../../application/payment_status_controller.dart';
import '../../application/payment_status_polling_controller.dart';
import '../../domain/payment_status_response.dart';
import 'payment_status_time_formatter.dart';
import 'status_badge.dart';

/// Live payment status with optional polling and manual refresh.
class PaymentStatusSection extends ConsumerStatefulWidget {
  const PaymentStatusSection({
    super.key,
    required this.orderId,
    this.enablePolling = true,
  });

  final int orderId;
  final bool enablePolling;

  @override
  ConsumerState<PaymentStatusSection> createState() => _PaymentStatusSectionState();
}

class _PaymentStatusSectionState extends ConsumerState<PaymentStatusSection> {
  bool _manualRefreshing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _maybeStartPolling());
  }

  void _maybeStartPolling() {
    if (!widget.enablePolling) return;
    final status = ref.read(paymentStatusControllerProvider(widget.orderId)).valueOrNull;
    if (status != null) {
      ref
          .read(paymentStatusPollingControllerProvider(widget.orderId).notifier)
          .evaluateFromStatus(status);
    }
  }

  Future<void> _manualRefresh() async {
    setState(() => _manualRefreshing = true);
    try {
      await ref.read(paymentStatusControllerProvider(widget.orderId).notifier).refresh();
      final status = ref.read(paymentStatusControllerProvider(widget.orderId)).valueOrNull;
      if (status != null && widget.enablePolling) {
        ref
            .read(paymentStatusPollingControllerProvider(widget.orderId).notifier)
            .evaluateFromStatus(status);
      }
    } finally {
      if (mounted) setState(() => _manualRefreshing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final paymentState = ref.watch(paymentStatusControllerProvider(widget.orderId));
    final pollingState = ref.watch(paymentStatusPollingControllerProvider(widget.orderId));

    ref.listen(paymentStatusControllerProvider(widget.orderId), (previous, next) {
      next.whenData((status) {
        if (widget.enablePolling) {
          ref
              .read(paymentStatusPollingControllerProvider(widget.orderId).notifier)
              .evaluateFromStatus(status);
        }
      });
    });

    final busy = _manualRefreshing || pollingState.isChecking;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.paymentStatusSectionTitle, style: Theme.of(context).textTheme.titleMedium),
            if (pollingState.isPolling) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(l10n.checkingPaymentStatusLabel)),
                ],
              ),
            ],
            if (pollingState.lastCheckedAt != null) ...[
              const SizedBox(height: 4),
              Text(
                '${l10n.lastCheckedLabel}: ${formatPaymentStatusTime(pollingState.lastCheckedAt!)}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
            const SizedBox(height: 12),
            paymentState.when(
              loading: () => LoadingView(label: l10n.loadingPaymentStatus),
              error: (e, _) => Text(
                e is AppError ? localizedAppErrorMessage(l10n, e) : l10n.unknownError,
              ),
              data: (status) => _StatusBody(status: status),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: busy ? null : _manualRefresh,
              icon: busy
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.refresh),
              label: Text(l10n.refreshPaymentStatusLabel),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBody extends StatelessWidget {
  const _StatusBody({required this.status});

  final PaymentStatusResponse status;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            StatusBadge(
              status: status.paymentStatus,
              label: StatusLabels.paymentStatus(l10n, status.paymentStatus),
              kind: StatusBadgeKind.payment,
            ),
            StatusBadge(
              status: status.orderStatus,
              label: StatusLabels.orderStatus(l10n, status.orderStatus),
              kind: StatusBadgeKind.order,
            ),
          ],
        ),
        if (status.latestPayment != null) ...[
          const SizedBox(height: 8),
          Text('${l10n.merchantReferenceLabel}: ${status.latestPayment!.merchantReference}'),
        ],
      ],
    );
  }
}
