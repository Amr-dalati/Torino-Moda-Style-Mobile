import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_item_request.freezed.dart';
part 'update_cart_item_request.g.dart';

@freezed
abstract class UpdateCartItemRequest with _$UpdateCartItemRequest {
  const factory UpdateCartItemRequest({
    required int quantity,
  }) = _UpdateCartItemRequest;

  factory UpdateCartItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartItemRequestFromJson(json);
}
