import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';



import '../../features/auth/application/auth_controller.dart';

import '../config/env.dart' show Env;
import 'error/app_error.dart';

import 'error/api_error_mapper.dart';

import 'interceptors/auth_interceptor.dart';

import 'interceptors/logging_interceptor.dart';



bool _isPublicAuthPath(String path) {

  return path.contains('/customer/login') || path.contains('/customer/register');

}



Dio createDio({required Env env, required Ref ref}) {

  final dio = Dio(

    BaseOptions(

      baseUrl: env.baseUrl,

      connectTimeout: env.connectTimeout,

      receiveTimeout: env.receiveTimeout,

      sendTimeout: env.receiveTimeout,

      headers: const {

        'Accept': 'application/json',

        'Content-Type': 'application/json',

      },

    ),

  );



  dio.interceptors.addAll([

    AuthInterceptor(ref: ref),

    if (kDebugMode) LoggingInterceptor(),

  ]);



  dio.transformer = BackgroundTransformer();



  dio.interceptors.add(

    InterceptorsWrapper(

      onError: (e, handler) {

        final mapped = ApiErrorMapper.map(e);

        if ((mapped is UnauthorizedError || mapped is ForbiddenError) &&

            !_isPublicAuthPath(e.requestOptions.path)) {

          ref.read(authControllerProvider.notifier).handleUnauthorized();

        }

        handler.reject(

          e.copyWith(error: mapped),

        );

      },

    ),

  );



  return dio;

}


