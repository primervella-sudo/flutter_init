import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/1_models/spot_model.dart';

class SpotLocalDataSource {
  SpotLocalDataSource(this._db);

  final AppDatabase _db;

  Future<Spot> create(Spot spot) async {
    await _db.transaction(() async {
      await _db.into(_db.spotsTable).insertOnConflictUpdate(
            SpotModel.toCompanion(spot),
          );
      await _replacePhotos(spot);
    });
    final updated = await fetchById(spot.id);
    return updated ?? spot;
  }

  Future<Spot> update(Spot spot) => create(spot);

  Future<void> delete(String id) async {
    await _db.transaction(() async {
      await (_db.delete(_db.spotPhotosTable)
            ..where((tbl) => tbl.spotId.equals(id)))
          .go();
      await (_db.delete(_db.spotsTable)
            ..where((tbl) => tbl.id.equals(id)))
          .go();
    });
  }

  Future<Spot?> fetchById(String id) async {
    final record = await (_db.select(_db.spotsTable)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    if (record == null) {
      return null;
    }
    final photos = await _loadPhotos(id);
    return SpotModel.fromRecords(record, photos).toDomain();
  }

  Stream<List<Spot>> watchAll() {
    final query = _db.select(_db.spotsTable);
    return query.watch().asyncMap(_mapRecordsToEntities);
  }

  Stream<List<Spot>> watchByPersona(String personaId) {
    final query = _db.select(_db.spotsTable)
      ..where((tbl) => tbl.personaId.equals(personaId));
    return query.watch().asyncMap(_mapRecordsToEntities);
  }

  Future<List<Spot>> _mapRecordsToEntities(List<SpotRecord> records) async {
    final results = <Spot>[];
    for (final record in records) {
      final photos = await _loadPhotos(record.id);
      results.add(SpotModel.fromRecords(record, photos).toDomain());
    }
    return results;
  }

  Future<void> _replacePhotos(Spot spot) async {
    await (_db.delete(_db.spotPhotosTable)
          ..where((tbl) => tbl.spotId.equals(spot.id)))
        .go();
    final photoCompanions = SpotModel.photoCompanions(spot);
    if (photoCompanions.isEmpty) {
      return;
    }
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.spotPhotosTable, photoCompanions);
    });
  }

  Future<List<SpotPhotoRecord>> _loadPhotos(String spotId) {
    final query = _db.select(_db.spotPhotosTable)
      ..where((tbl) => tbl.spotId.equals(spotId))
      ..orderBy([(tbl) => OrderingTerm(expression: tbl.order)]);
    return query.get();
  }
}
