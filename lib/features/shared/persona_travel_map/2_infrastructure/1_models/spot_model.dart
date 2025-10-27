import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';

class SpotModel {
  const SpotModel({required this.record, required this.photos});

  final SpotRecord record;
  final List<SpotPhotoRecord> photos;

  Spot toDomain() {
    final ordered = [...photos]..sort((a, b) => a.order.compareTo(b.order));
    final photoEntities = ordered
        .map(
          (photo) => SpotPhoto(
            path: photo.path,
            size: photo.size,
            order: photo.order,
          ),
        )
        .toList(growable: false);
    return Spot(
      id: record.id,
      title: record.title,
      address: record.address,
      lat: record.lat,
      lng: record.lng,
      visitedAt: record.visitedAt,
      photos: photoEntities,
      totalPhotoSize: ordered.fold(0, (sum, photo) => sum + photo.size),
      reviewText: record.reviewText,
      reviewGenerated: record.reviewGenerated,
      personaId: record.personaId,
      shareToken: record.shareToken,
      shareExpiresAt: record.shareExpiresAt,
      syncStatus: _statusFromString(record.syncStatus),
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    );
  }

  static SpotsTableCompanion toCompanion(Spot spot) {
    return SpotsTableCompanion(
      id: Value(spot.id),
      title: Value(spot.title),
      address: Value(spot.address),
      lat: Value(spot.lat),
      lng: Value(spot.lng),
      visitedAt: Value(spot.visitedAt),
      reviewText: Value(spot.reviewText),
      reviewGenerated: Value(spot.reviewGenerated),
      personaId: Value(spot.personaId),
      shareToken: Value(spot.shareToken),
      shareExpiresAt: Value(spot.shareExpiresAt),
      syncStatus: Value(_statusToString(spot.syncStatus)),
      createdAt: Value(spot.createdAt),
      updatedAt: Value(spot.updatedAt),
    );
  }

  static List<SpotPhotosTableCompanion> photoCompanions(Spot spot) {
    return spot.photos
        .map(
          (photo) => SpotPhotosTableCompanion(
            path: Value(photo.path),
            spotId: Value(spot.id),
            size: Value(photo.size),
            order: Value(photo.order),
          ),
        )
        .toList(growable: false);
  }

  static SpotModel fromRecords(
    SpotRecord record,
    List<SpotPhotoRecord> photos,
  ) {
    return SpotModel(record: record, photos: photos);
  }

  static SpotSyncStatus _statusFromString(String value) {
    switch (value) {
      case 'synced':
        return SpotSyncStatus.synced;
      case 'failed':
        return SpotSyncStatus.failed;
      case 'local':
      default:
        return SpotSyncStatus.local;
    }
  }

  static String _statusToString(SpotSyncStatus status) {
    switch (status) {
      case SpotSyncStatus.synced:
        return 'synced';
      case SpotSyncStatus.failed:
        return 'failed';
      case SpotSyncStatus.local:
        return 'local';
    }
  }
}
