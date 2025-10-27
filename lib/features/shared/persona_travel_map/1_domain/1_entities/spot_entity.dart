import 'package:freezed_annotation/freezed_annotation.dart';

part 'spot_entity.freezed.dart';

@freezed
abstract class Spot with _$Spot {
  const Spot._();

  const factory Spot({
    required String id,
    required String title,
    required String address,
    required double lat,
    required double lng,
    required DateTime visitedAt,
    @Default(<SpotPhoto>[]) List<SpotPhoto> photos,
    @Default(0) int totalPhotoSize,
    @Default('') String reviewText,
    @Default(false) bool reviewGenerated,
    String? personaId,
    String? shareToken,
    DateTime? shareExpiresAt,
    @Default(SpotSyncStatus.local) SpotSyncStatus syncStatus,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Spot;

  bool get isShared => shareToken != null;

  bool get isSynced => syncStatus == SpotSyncStatus.synced;

  int get totalPhotos => photos.length;
}

@freezed
abstract class SpotPhoto with _$SpotPhoto {
  const factory SpotPhoto({
    required String path,
    required int size,
    required int order,
  }) = _SpotPhoto;
}

enum SpotSyncStatus { local, synced, failed }
