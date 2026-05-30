import '../../l10n/app_localizations.dart';

/// Localized labels for backend order/payment status codes.
class StatusLabels {
  const StatusLabels._();

  static String orderStatus(AppLocalizations l10n, String value) {
    return switch (value) {
      'awaiting_payment' => l10n.orderStatusAwaitingPayment,
      'paid' => l10n.orderStatusPaid,
      'processing' => l10n.orderStatusProcessing,
      'shipped' => l10n.orderStatusShipped,
      'delivered' => l10n.orderStatusDelivered,
      'cancelled' => l10n.orderStatusCancelled,
      _ => value,
    };
  }

  static String paymentStatus(AppLocalizations l10n, String value) {
    return switch (value) {
      'pending' => l10n.paymentStatusPending,
      'paid' => l10n.paymentStatusPaid,
      'failed' => l10n.paymentStatusFailed,
      'expired' => l10n.paymentStatusExpired,
      _ => value,
    };
  }
}
