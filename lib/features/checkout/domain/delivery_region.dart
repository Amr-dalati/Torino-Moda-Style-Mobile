import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_region.freezed.dart';
part 'delivery_region.g.dart';

@freezed
abstract class DeliveryRegion with _$DeliveryRegion {
  const factory DeliveryRegion({
    required int id,
    required String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_en') String? nameEn,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _DeliveryRegion;

  factory DeliveryRegion.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRegionFromJson(json);

  const DeliveryRegion._();

  String displayName({required bool preferArabic}) {
    if (preferArabic) {
      return (nameAr?.isNotEmpty ?? false) ? nameAr! : (nameEn ?? code);
    }
    return (nameEn?.isNotEmpty ?? false) ? nameEn! : (nameAr ?? code);
  }
}
