import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/app_settings_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/persona_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/review_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/sync_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/app_settings_repository_impl.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/persona_repository_impl.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/review_repository_impl.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/spot_repository_impl.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/sync_repository_impl.dart';

import 'data_source_providers.dart';

final appSettingsRepositoryProvider = Provider<AppSettingsRepository>((ref) {
  final local = ref.watch(settingsLocalDataSourceProvider);
  return AppSettingsRepositoryImpl(local);
});

final personaRepositoryProvider = Provider<PersonaRepository>((ref) {
  final personaLocal = ref.watch(personaLocalDataSourceProvider);
  final spotLocal = ref.watch(spotLocalDataSourceProvider);
  return PersonaRepositoryImpl(personaLocal, spotLocal);
});

final spotRepositoryProvider = Provider<SpotRepository>((ref) {
  final spotLocal = ref.watch(spotLocalDataSourceProvider);
  final photoStorage = ref.watch(photoStorageDataSourceProvider);
  final queueLocal = ref.watch(syncQueueLocalDataSourceProvider);
  return SpotRepositoryImpl(spotLocal, photoStorage, queueLocal);
});

final reviewRepositoryProvider = Provider<ReviewRepository>((ref) {
  final remote = ref.watch(aiReviewRemoteDataSourceProvider);
  final settingsLocal = ref.watch(settingsLocalDataSourceProvider);
  return ReviewRepositoryImpl(remote, settingsLocal);
});

final syncRepositoryProvider = Provider<SyncRepository>((ref) {
  final queueLocal = ref.watch(syncQueueLocalDataSourceProvider);
  final spotLocal = ref.watch(spotLocalDataSourceProvider);
  return SyncRepositoryImpl(queueLocal, spotLocal);
});
