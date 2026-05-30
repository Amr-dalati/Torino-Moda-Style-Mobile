import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/api/paginated_envelope_parser.dart';
import '../../../../core/network/api/paginated_result.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/order.dart';
import '../../domain/payment_status_response.dart';
import 'orders_remote.dart';

class OrdersRemoteDataSource implements OrdersRemote {
  OrdersRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<PaginatedResult<Order>> listOrders({
    int page = 1,
    int perPage = 20,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/customer/orders',
        queryParameters: _pageParams(page: page, perPage: perPage),
      );
      return PaginatedEnvelopeParser.parseDataOrThrow(
        response,
        decodeItem: Order.fromJson,
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<Order> getOrder(int id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/customer/orders/$id');
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) => Order.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<PaymentStatusResponse> getPaymentStatus(int id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/customer/orders/$id/payment-status',
      );
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) =>
            PaymentStatusResponse.fromJson(json! as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Map<String, dynamic> _pageParams({required int page, required int perPage}) {
    return {
      'per_page': perPage,
      if (page > 1) 'page': page,
    };
  }

  Never _mapDio(DioException e) {
    if (e.error is AppError) throw e.error! as AppError;
    throw ApiErrorMapper.map(e);
  }
}
