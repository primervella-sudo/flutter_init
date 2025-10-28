import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/core/database/app_database.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase.create();
  ref.onDispose(db.close);
  return db;
});
