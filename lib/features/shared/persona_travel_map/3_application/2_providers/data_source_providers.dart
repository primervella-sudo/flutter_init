import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/persona_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/photo_storage_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/settings_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/spot_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/sync_queue_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/ai_review_remote_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/maps_remote_data_source.dart';

import 'api_client_provider.dart';
import 'app_database_provider.dart';

final settingsLocalDataSourceProvider = Provider<SettingsLocalDataSource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return SettingsLocalDataSource(db);
});

final personaLocalDataSourceProvider = Provider<PersonaLocalDataSource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return PersonaLocalDataSource(db);
});

final spotLocalDataSourceProvider = Provider<SpotLocalDataSource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return SpotLocalDataSource(db);
});

final syncQueueLocalDataSourceProvider = Provider<SyncQueueLocalDataSource>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return SyncQueueLocalDataSource(db);
});

final photoStorageDataSourceProvider = Provider<PhotoStorageDataSource>((ref) {
  return PhotoStorageDataSource();
});

final aiReviewRemoteDataSourceProvider = Provider<AiReviewRemoteDataSource>((ref) {
  return AiReviewRemoteDataSource();
});

final mapsRemoteDataSourceProvider = Provider<MapsRemoteDataSource>((ref) {
  final dio = ref.watch(dioProvider);
  return MapsRemoteDataSource(dio);
});
