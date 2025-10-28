import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/1_models/app_settings_model.dart';

class SettingsLocalDataSource {
  SettingsLocalDataSource(this._db);

  final AppDatabase _db;

  Future<AppSettings> load() async {
    final row = await _loadRow();
    return AppSettingsModel(row).toDomain();
  }

  Stream<AppSettings> watch() {
    final query = _db.select(_db.appSettingsTable);
    return query.watchSingleOrNull().asyncMap((row) async {
      final resolved = row ?? await _loadRow();
      return AppSettingsModel(resolved).toDomain();
    });
  }

  Future<void> save(AppSettings settings) async {
    final companion = AppSettingsModel.toCompanion(settings);
    final existing = await _db.select(_db.appSettingsTable).getSingleOrNull();
    if (existing == null) {
      await _db.into(_db.appSettingsTable).insert(companion);
    } else {
      await (_db.update(_db.appSettingsTable)
            ..where((tbl) => tbl.id.equals(existing.id)))
          .write(companion.copyWith(id: Value(existing.id)));
    }
  }

  Future<AppSettingsRecord> _loadRow() async {
    final row = await _db.select(_db.appSettingsTable).getSingleOrNull();
    if (row != null) {
      return row;
    }
    final defaultSettings = AppSettings();
    final companion = AppSettingsModel.toCompanion(defaultSettings);
    final id = await _db.into(_db.appSettingsTable).insert(companion);
    final query = _db.select(_db.appSettingsTable)
      ..where((tbl) => tbl.id.equals(id));
    return query.getSingle();
  }
}
