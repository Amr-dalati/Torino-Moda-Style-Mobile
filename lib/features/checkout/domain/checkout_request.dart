import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_request.freezed.dart';
part 'checkout_request.g.dart';

@freezed
abstract class CheckoutRequest with _$CheckoutRequest {
  const factory CheckoutRequest({
    @JsonKey(name: 'address_id') required int addressId,
  }) = _CheckoutRequest;

  factory CheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestFromJson(json);
}
