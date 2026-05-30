// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedMeta _$PaginatedMetaFromJson(Map<String, dynamic> json) =>
    _PaginatedMeta(
      currentPage: (json['current_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
    );

Map<String, dynamic> _$PaginatedMetaToJson(_PaginatedMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };
