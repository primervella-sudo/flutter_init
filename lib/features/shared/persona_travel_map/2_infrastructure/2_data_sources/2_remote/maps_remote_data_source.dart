import 'package:dio/dio.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/exceptions/remote_data_exceptions.dart';

class MapsRemoteDataSource {
  MapsRemoteDataSource(this._dio, {required this.apiKey});

  final Dio _dio;
  final String apiKey;

  Future<String> reverseGeocode({
    required double lat,
    required double lng,
    String language = 'ja',
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        'https://maps.googleapis.com/maps/api/geocode/json',
        queryParameters: {
          'latlng': '$lat,$lng',
          'language': language,
          'key': apiKey,
        },
      );
      final data = response.data as Map<String, dynamic>?;
      final results = data?['results'] as List<dynamic>?;
      if (results == null || results.isEmpty) {
        return '';
      }
      final first = results.first as Map<String, dynamic>;
      return (first['formatted_address'] as String?) ?? '';
    } on DioException catch (error) {
      throw _mapDioException(error);
    }
  }

  Future<void> validateApiKey() async {
    try {
      await _dio.get<dynamic>(
        'https://maps.googleapis.com/maps/api/geocode/json',
        queryParameters: {
          'latlng': '0,0',
          'key': apiKey,
        },
      );
    } on DioException catch (error) {
      throw _mapDioException(error);
    }
  }

  RemoteDataException _mapDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return RemoteTimeoutException(cause: error);
      case DioExceptionType.badResponse:
        final status = error.response?.statusCode ?? 0;
        if (status == 403) {
          return RemoteAuthException(statusCode: status, cause: error);
        }
        if (status == 429) {
          return RemoteQuotaExceededException(cause: error);
        }
        return RemoteUnexpectedException(statusCode: status, cause: error);
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
        return RemoteUnexpectedException(cause: error);
    }
  }
}
