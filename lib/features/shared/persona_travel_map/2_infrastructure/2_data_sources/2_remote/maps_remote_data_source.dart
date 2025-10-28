import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:persona_travel/core/env/env.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/exceptions/remote_data_exceptions.dart';

class MapsRemoteDataSource {
  MapsRemoteDataSource(this._dio, {String? apiKey}) : _apiKey = apiKey ?? Env.mapsApiKey;

  final Dio _dio;
  final String _apiKey;

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
          'key': _apiKey,
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

  Future<Uint8List> fetchStaticMapImage({
    required double centerLat,
    required double centerLng,
    int zoom = 13,
    int width = 640,
    int height = 360,
    Iterable<MapMarkerCoordinate> markers = const <MapMarkerCoordinate>[],
    String mapType = 'roadmap',
    int scale = 2,
  }) async {
    try {
      final response = await _dio.get<List<int>>(
        'https://maps.googleapis.com/maps/api/staticmap',
        queryParameters: <String, Object?>{
          'center': '$centerLat,$centerLng',
          'zoom': zoom.toString(),
          'size': '${width}x$height',
          'scale': scale.toString(),
          'maptype': mapType,
          'key': _apiKey,
          if (markers.isNotEmpty)
            'markers': markers.map((marker) => marker.toQuery()).join('|'),
        },
        options: Options(responseType: ResponseType.bytes),
      );
      final payload = response.data;
      if (payload == null) {
        throw const RemoteUnexpectedException(cause: 'Empty map image response');
      }
      return Uint8List.fromList(payload);
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
          'key': _apiKey,
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

class MapMarkerCoordinate {
  const MapMarkerCoordinate({required this.lat, required this.lng});

  final double lat;
  final double lng;

  String toQuery() => '$lat,$lng';
}
