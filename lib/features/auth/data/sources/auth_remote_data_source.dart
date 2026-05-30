import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import 'auth_remote.dart';
import '../../domain/auth_response.dart';
import '../../domain/customer.dart';
import '../../domain/login_request.dart';
import '../../domain/register_request.dart';
import '../../../profile/domain/update_profile_request.dart';

class AuthRemoteDataSource implements AuthRemote {
  AuthRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<AuthResponse> login(LoginRequest request) async {
    return _postAuth('/customer/login', body: request.toJson());
  }

  @override
  Future<AuthResponse> register(RegisterRequest request) async {
    return _postAuth('/customer/register', body: request.toJson());
  }

  @override
  Future<Customer> me() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/customer/me');
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => Customer.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<Customer> updateProfile(UpdateProfileRequest request) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/customer/profile',
        data: request.toJson(),
      );
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => Customer.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _dio.post<Map<String, dynamic>>('/customer/logout');
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Future<AuthResponse> _postAuth(
    String path, {
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(path, data: body);
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => AuthResponse.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Never _mapDio(DioException e) {
    if (e.error is AppError) throw e.error! as AppError;
    throw ApiErrorMapper.map(e);
  }
}
