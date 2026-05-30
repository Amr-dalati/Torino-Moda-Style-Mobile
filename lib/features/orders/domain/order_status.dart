enum OrderStatus {
  awaitingPayment('awaiting_payment'),
  paid('paid'),
  processing('processing'),
  shipped('shipped'),
  delivered('delivered'),
  cancelled('cancelled'),
  unknown('');

  const OrderStatus(this.apiValue);

  final String apiValue;

  static OrderStatus fromApi(String value) {
    return OrderStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () => OrderStatus.unknown,
    );
  }
}

enum PaymentStatus {
  pending('pending'),
  paid('paid'),
  failed('failed'),
  expired('expired'),
  unknown('');

  const PaymentStatus(this.apiValue);

  final String apiValue;

  static PaymentStatus fromApi(String value) {
    return PaymentStatus.values.firstWhere(
      (status) => status.apiValue == value,
      orElse: () => PaymentStatus.unknown,
    );
  }
}
