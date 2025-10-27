import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/1_models/sync_queue_model.dart';

class SyncQueueLocalDataSource {
  SyncQueueLocalDataSource(this._db);

  final AppDatabase _db;

  Future<void> enqueue(Spot spot) async {
    final companion = SyncQueueModel.fromSpot(spot);
    await _db.into(_db.syncQueueTable).insertOnConflictUpdate(companion);
  }

  Future<List<SyncQueueRecord>> takePending() async {
    return (_db.select(_db.syncQueueTable)
          ..where((tbl) => tbl.status.equals('pending'))
          ..orderBy([(tbl) => OrderingTerm(expression: tbl.createdAt)])).
        get();
  }

  Future<void> markCompleted(String id) async {
    await (_db.update(_db.syncQueueTable)
          ..where((tbl) => tbl.id.equals(id)))
        .write(const SyncQueueTableCompanion(status: Value('completed')));
  }

  Stream<int> watchPendingCount() {
    final query = _db.select(_db.syncQueueTable)
      ..where((tbl) => tbl.status.equals('pending'));
    return query.watch().map((rows) => rows.length);
  }
}
