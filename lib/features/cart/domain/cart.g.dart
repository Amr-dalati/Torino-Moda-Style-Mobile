// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  id: (json['id'] as num).toInt(),
  status: json['status'] as String,
  subtotal: json['subtotal'] as String,
  currency: json['currency'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'subtotal': instance.subtotal,
  'currency': instance.currency,
  'items': instance.items,
};
