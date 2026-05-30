import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_area.freezed.dart';
part 'delivery_area.g.dart';

@freezed
abstract class DeliveryArea with _$DeliveryArea {
  const factory DeliveryArea({
    required int id,
    @JsonKey(name: 'region_id') required int regionId,
    required String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_en') String? nameEn,
    @JsonKey(name: 'delivery_fee') required String deliveryFee,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _DeliveryArea;

  factory DeliveryArea.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAreaFromJson(json);

  const DeliveryArea._();

  String displayName({required bool preferArabic}) {
    if (preferArabic) {
      return (nameAr?.isNotEmpty ?? false) ? nameAr! : (nameEn ?? code);
    }
    return (nameEn?.isNotEmpty ?? false) ? nameEn! : (nameAr ?? code);
  }
}
