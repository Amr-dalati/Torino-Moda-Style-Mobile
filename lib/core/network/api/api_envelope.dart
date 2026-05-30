import 'package:flutter/foundation.dart';

@immutable
class ApiEnvelope<T> {
  const ApiEnvelope({
    required this.success,
    required this.message,
    this.data,
    this.meta,
    this.errors,
  });

  final bool success;
  final String message;
  final T? data;
  final Map<String, dynamic>? meta;
  final Map<String, List<String>>? errors;

  bool get hasValidationErrors => errors != null && errors!.isNotEmpty;
}
