import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/add_cart_item_request.dart';
import '../../domain/cart.dart';
import '../../domain/update_cart_item_request.dart';
import 'cart_remote.dart';

class CartRemoteDataSource implements CartRemote {
  CartRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<Cart> getCart() => _getCart('/customer/cart');

  @override
  Future<Cart> addItem(AddCartItemRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customer/cart/items',
        data: request.toJson(),
      );
      return _parseCart(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<Cart> updateItem(int itemId, UpdateCartItemRequest request) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/customer/cart/items/$itemId',
        data: request.toJson(),
      );
      return _parseCart(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<Cart> removeItem(int itemId) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '/customer/cart/items/$itemId',
      );
      return _parseCart(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<Cart> clearCart() => _getCart('/customer/cart', method: 'delete');

  Future<Cart> _getCart(String path, {String method = 'get'}) async {
    try {
      final Response<Map<String, dynamic>> response;
      if (method == 'delete') {
        response = await _dio.delete<Map<String, dynamic>>(path);
      } else {
        response = await _dio.get<Map<String, dynamic>>(path);
      }
      return _parseCart(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  Cart _parseCart(Response<Map<String, dynamic>> response) {
    return ApiEnvelopeParser.parseDataOrThrow(
      response,
      decodeData: (json) => Cart.fromJson(json! as Map<String, dynamic>),
    );
  }

  Never _mapDio(DioException e) {
    if (e.error is AppError) throw e.error! as AppError;
    throw ApiErrorMapper.map(e);
  }
}
