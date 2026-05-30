// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num).toInt(),
  code: json['code'] as String,
  nameAr: json['name_ar'] as String?,
  nameEn: json['name_en'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name_ar': instance.nameAr,
  'name_en': instance.nameEn,
};
