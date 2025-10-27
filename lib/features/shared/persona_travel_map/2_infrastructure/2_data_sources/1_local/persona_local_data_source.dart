import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/1_models/persona_model.dart';

class PersonaLocalDataSource {
  PersonaLocalDataSource(this._db);

  final AppDatabase _db;

  Future<List<Persona>> fetchAll() async {
    final rows = await _db.select(_db.personasTable).get();
    return rows.map((row) => PersonaModel(row).toDomain()).toList(growable: false);
  }

  Stream<List<Persona>> watchAll() {
    return _db.select(_db.personasTable).watch().map(
          (rows) => rows
              .map((row) => PersonaModel(row).toDomain())
              .toList(growable: false),
        );
  }

  Future<Persona> upsert(Persona persona) async {
    final companion = PersonaModel.toCompanion(persona);
    await _db.into(_db.personasTable).insertOnConflictUpdate(companion);
    final updated = await (_db.select(_db.personasTable)
          ..where((tbl) => tbl.id.equals(persona.id)))
        .getSingle();
    return PersonaModel(updated).toDomain();
  }

  Future<void> delete(String id) async {
    await (_db.delete(_db.personasTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> setDefault(String id) async {
    await _db.transaction(() async {
      await (_db.update(_db.personasTable)
            ..where((tbl) => tbl.isDefault.equals(true)))
          .write(const PersonasTableCompanion(isDefault: Value(false)));
      await (_db.update(_db.personasTable)
            ..where((tbl) => tbl.id.equals(id)))
          .write(const PersonasTableCompanion(isDefault: Value(true)));
    });
  }
}
