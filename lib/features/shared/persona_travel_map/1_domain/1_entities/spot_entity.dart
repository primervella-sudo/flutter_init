import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_entity.freezed.dart';

@freezed
class Spot with _$Spot {
  const factory Spot({
    required String id,
    required String title,
    required String address,
    required double lat,
    required double lng,
    required DateTime visitedAt,
    required List<SpotPhoto> photos,
    required int totalPhotoSize,
    required String reviewText,
    required bool reviewGenerated,
    String? personaId,
    String? shareToken,
    DateTime? shareExpiresAt,
    required SpotSyncStatus syncStatus,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Spot;
}

@freezed
class SpotPhoto with _$SpotPhoto {
  const factory SpotPhoto({
    required String path,
    required int size,
    required int order,
  }) = _SpotPhoto;
}

enum SpotSyncStatus { local, synced, failed }
