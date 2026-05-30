// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductColor _$ProductColorFromJson(Map<String, dynamic> json) =>
    _ProductColor(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
    );

Map<String, dynamic> _$ProductColorToJson(_ProductColor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
    };
