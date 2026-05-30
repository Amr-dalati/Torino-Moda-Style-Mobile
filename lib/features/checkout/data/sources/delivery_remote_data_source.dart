import 'package:dio/dio.dart';

import '../../../../core/network/api/api_envelope_parser.dart';
import '../../../../core/network/error/api_error_mapper.dart';
import '../../../../core/network/error/app_error.dart';
import '../../domain/delivery_area.dart';
import '../../domain/delivery_region.dart';
import 'delivery_remote.dart';

class DeliveryRemoteDataSource implements DeliveryRemote {
  DeliveryRemoteDataSource(this._dio);

  final Dio _dio;

  @override
  Future<List<DeliveryRegion>> listRegions() async {
    return _fetchList(
      '/delivery/regions',
      decodeItem: DeliveryRegion.fromJson,
    );
  }

  @override
  Future<List<DeliveryArea>> listAreas({int? regionId}) async {
    return _fetchList(
      '/delivery/areas',
      queryParameters: regionId == null ? null : {'region_id': regionId},
      decodeItem: DeliveryArea.fromJson,
    );
  }

  Future<List<T>> _fetchList<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) decodeItem,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParameters,
      );
      return ApiEnvelopeParser.parseDataOrThrow(
        response,
        decodeData: (json) {
          final list = json as List<dynamic>;
          return list
              .map((item) => decodeItem(item as Map<String, dynamic>))
              .toList();
        },
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
