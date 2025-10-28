import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/create_spot_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/generate_review_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/manage_persona_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/share_link_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/sync_drafts_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/toggle_language_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/update_spot_usecase.dart';

import 'repository_providers.dart';

final createSpotUsecaseProvider = Provider<CreateSpotUsecase>((ref) {
  final repository = ref.watch(spotRepositoryProvider);
  return CreateSpotUsecase(repository);
});

final updateSpotUsecaseProvider = Provider<UpdateSpotUsecase>((ref) {
  final repository = ref.watch(spotRepositoryProvider);
  final validator = ref.watch(createSpotUsecaseProvider);
  return UpdateSpotUsecase(repository, validator);
});

final managePersonaUsecaseProvider = Provider<ManagePersonaUsecase>((ref) {
  final repository = ref.watch(personaRepositoryProvider);
  return ManagePersonaUsecase(repository);
});

final shareLinkUsecaseProvider = Provider<ShareLinkUsecase>((ref) {
  final repository = ref.watch(spotRepositoryProvider);
  return ShareLinkUsecase(repository);
});

final generateReviewUsecaseProvider = Provider<GenerateReviewUsecase>((ref) {
  final repository = ref.watch(reviewRepositoryProvider);
  return GenerateReviewUsecase(repository);
});

final toggleLanguageUsecaseProvider = Provider<ToggleLanguageUsecase>((ref) {
  final repository = ref.watch(appSettingsRepositoryProvider);
  return ToggleLanguageUsecase(repository);
});

final syncDraftsUsecaseProvider = Provider<SyncDraftsUsecase>((ref) {
  final repository = ref.watch(syncRepositoryProvider);
  return SyncDraftsUsecase(repository);
});
