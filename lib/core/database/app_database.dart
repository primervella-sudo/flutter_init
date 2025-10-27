import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DataClassName('SpotRecord')
class SpotsTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get address => text()();
  RealColumn get lat => real()();
  RealColumn get lng => real()();
  DateTimeColumn get visitedAt => dateTime()();
  TextColumn get reviewText => text().withDefault(const Constant(''))();
  BoolColumn get reviewGenerated => boolean().withDefault(const Constant(false))();
  TextColumn get personaId => text()
    .nullable()
    .customConstraint('REFERENCES personas_table(id) ON DELETE SET NULL')();
  TextColumn get shareToken => text().nullable()();
  DateTimeColumn get shareExpiresAt => dateTime().nullable()();
  TextColumn get syncStatus => text().withDefault(const Constant('local'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('SpotPhotoRecord')
class SpotPhotosTable extends Table {
  TextColumn get path => text()();
  TextColumn get spotId => text().references(SpotsTable, #id)();
  IntColumn get size => integer()();
  IntColumn get order => integer()();

  @override
  Set<Column> get primaryKey => {path};
}

@DataClassName('PersonaRecord')
class PersonasTable extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get toneStyle => text()();
  TextColumn get promptText => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
  IntColumn get linkedSpotCount => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AppSettingsRecord')
class AppSettingsTable extends Table {
  @override
  String get tableName => 'app_settings_table';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get language => text().withDefault(const Constant('ja'))();
  TextColumn get mapViewPreferences =>
      text().withDefault(const Constant('{}'))();
  TextColumn get aiApiKey => text().nullable()();
  TextColumn get mapsApiKey => text().nullable()();
  BoolColumn get realtimeLocationEnabled =>
      boolean().withDefault(const Constant(true))();
  BoolColumn get onboardingCompleted =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get analyticsOptIn =>
      boolean().withDefault(const Constant(false))();
}

@DataClassName('SyncQueueRecord')
class SyncQueueTable extends Table {
  TextColumn get id => text()();
  TextColumn get payload => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get status => text().withDefault(const Constant('pending'))();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(
  tables: [
    SpotsTable,
    SpotPhotosTable,
    PersonasTable,
    AppSettingsTable,
    SyncQueueTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.executor);

  AppDatabase._internal() : super(_openConnection());

  factory AppDatabase.create() => AppDatabase._internal();

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (migrator, from, to) async {
          if (from != to) {
            await migrator.createAll();
          }
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'persona_travel.db'));
    return NativeDatabase.createInBackground(file);
  });
}
