import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_item_request.freezed.dart';
part 'add_cart_item_request.g.dart';

@freezed
abstract class AddCartItemRequest with _$AddCartItemRequest {
  const factory AddCartItemRequest({
    @JsonKey(name: 'product_variant_id') required int productVariantId,
    required int quantity,
  }) = _AddCartItemRequest;

  factory AddCartItemRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCartItemRequestFromJson(json);
}
