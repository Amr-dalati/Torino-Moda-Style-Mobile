import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/customer_address.dart';
import '../../domain/store_customer_address_request.dart';
import '../../domain/update_customer_address_request.dart';
import 'address_remote.dart';

class AddressRemoteDataSource implements AddressRemote {
  AddressRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<List<CustomerAddress>> listAddresses() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/customer/addresses');
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) {
          final list = json as List<dynamic>;
          return list
              .map((item) => CustomerAddress.fromJson(item as Map<String, dynamic>))
              .toList();
        },
      );
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<CustomerAddress> createAddress(StoreCustomerAddressRequest request) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customer/addresses',
        data: request.toJson(),
      );
      return _parseAddress(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<CustomerAddress> updateAddress(
    int id,
    UpdateCustomerAddressRequest request,
  ) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '/customer/addresses/$id',
        data: request.toJson(),
      );
      return _parseAddress(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<void> deleteAddress(int id) async {
    try {
      await _dio.delete<Map<String, dynamic>>('/customer/addresses/$id');
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  @override
  Future<CustomerAddress> setDefaultAddress(int id) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/customer/addresses/$id/default',
      );
      return _parseAddress(response);
    } on DioException catch (e) {
      throw _mapDio(e);
    }
  }

  CustomerAddress _parseAddress(Response<Map<String, dynamic>> response) {
    return ApiEnvelopeParser.parseDataOrThrow(
      response,
      decodeData: (json) => CustomerAddress.fromJson(json! as Map<String, dynamic>),
    );
  }

  Never _mapDio(DioException e) {
    if (e.error is AppError) throw e.error! as AppError;
    throw ApiErrorMapper.map(e);
  }
}
