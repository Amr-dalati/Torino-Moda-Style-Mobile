import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status_polling_state.freezed.dart';

@freezed
abstract class PaymentStatusPollingState with _$PaymentStatusPollingState {
  const factory PaymentStatusPollingState({
    @Default(false) bool isPolling,
    @Default(false) bool isChecking,
    DateTime? lastCheckedAt,
  }) = _PaymentStatusPollingState;
}
