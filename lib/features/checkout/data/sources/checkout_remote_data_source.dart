import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/checkout_quote.dart';
import '../../domain/checkout_quote_request.dart';
import '../../domain/checkout_request.dart';
import '../../domain/checkout_result.dart';
import 'checkout_remote.dart';

class CheckoutRemoteDataSource implements CheckoutRemote {
  CheckoutRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<CheckoutQuote> quote(CheckoutQuoteRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customer/checkout/quote',
        data: request.toJson(),
      );
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => CheckoutQuote.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<CheckoutResult> checkout(CheckoutRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customer/checkout',
        data: request.toJson(),
      );
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => CheckoutResult.fromJson(json! as Map<String, dynamic>),
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
