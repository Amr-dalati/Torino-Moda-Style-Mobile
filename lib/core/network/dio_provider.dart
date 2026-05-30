import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/env_provider.dart';
import 'dio_client.dart';

final dioProvider = Provider<Dio>((ref) {
  final env = ref.watch(envProvider);
  return createDio(env: env, ref: ref);
});
