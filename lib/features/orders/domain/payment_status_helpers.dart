import '../domain/payment_status_response.dart';

const terminalPaymentStatuses = {'paid', 'failed', 'expired'};
const terminalOrderStatuses = {'cancelled', 'delivered'};

/// Whether payment status should be polled for updates.
bool shouldPollPaymentStatus(PaymentStatusResponse status) {
  if (terminalPaymentStatuses.contains(status.paymentStatus)) return false;
  if (terminalOrderStatuses.contains(status.orderStatus)) return false;
  return status.paymentStatus == 'pending' ||
      status.orderStatus == 'awaiting_payment';
}

/// Whether polling should start from checkout/order snapshot fields.
bool shouldPollFromSnapshot({
  required String paymentStatus,
  required String orderStatus,
}) {
  return shouldPollPaymentStatus(
    PaymentStatusResponse(
      orderStatus: orderStatus,
      paymentStatus: paymentStatus,
    ),
  );
}
