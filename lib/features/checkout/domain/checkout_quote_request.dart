import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_quote_request.freezed.dart';
part 'checkout_quote_request.g.dart';

@freezed
abstract class CheckoutQuoteRequest with _$CheckoutQuoteRequest {
  const factory CheckoutQuoteRequest({
    @JsonKey(name: 'address_id') required int addressId,
  }) = _CheckoutQuoteRequest;

  factory CheckoutQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckoutQuoteRequestFromJson(json);
}
