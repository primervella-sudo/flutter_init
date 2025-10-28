import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/create_spot_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/share_link_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/sync_drafts_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/update_spot_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/spot_editor_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/repository_providers.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/usecase_providers.dart';

part 'spot_editor_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'spotEditorNotifierProvider')
class SpotEditorNotifier extends _$SpotEditorNotifier {
  CreateSpotUsecase get _createSpotUsecase => ref.read(createSpotUsecaseProvider);
  UpdateSpotUsecase get _updateSpotUsecase => ref.read(updateSpotUsecaseProvider);
  ShareLinkUsecase get _shareLinkUsecase => ref.read(shareLinkUsecaseProvider);
  SpotRepository get _spotRepository => ref.read(spotRepositoryProvider);
  SyncDraftsUsecase get _syncDraftsUsecase => ref.read(syncDraftsUsecaseProvider);

  @override
  SpotEditorState build() => const SpotEditorState();

  Future<void> createSpot(Spot spot) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _createSpotUsecase.call(spot);
    state = result.when(
      success: (saved) => state.copyWith(lastEdited: AsyncValue.data(saved)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> updateSpot(Spot spot) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _updateSpotUsecase.call(spot);
    state = result.when(
      success: (updated) => state.copyWith(lastEdited: AsyncValue.data(updated)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> saveDraft(Spot spot) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _spotRepository.saveDraft(spot);
    state = result.when(
      success: (_) => state.copyWith(lastEdited: AsyncValue.data(spot)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> deleteSpot(String spotId) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _spotRepository.deleteSpot(spotId);
    state = result.when(
      success: (_) => state.copyWith(lastEdited: const AsyncValue<Spot?>.data(null)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> shareLink(Spot spot, {Duration? expiresIn}) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _shareLinkUsecase.createLink(spot, expiresIn: expiresIn);
    state = result.when(
      success: (shared) => state.copyWith(lastEdited: AsyncValue.data(shared)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> renewShareLink(Spot spot, {Duration? expiresIn}) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _shareLinkUsecase.renewLink(spot, expiresIn: expiresIn);
    state = result.when(
      success: (renewed) => state.copyWith(lastEdited: AsyncValue.data(renewed)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> revokeShareLink(Spot spot) async {
    state = state.copyWith(lastEdited: const AsyncValue<Spot?>.loading());
    final result = await _shareLinkUsecase.revokeLink(spot);
    state = result.when(
      success: (revoked) => state.copyWith(lastEdited: AsyncValue.data(revoked)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> enqueueSync(String spotId) async {
    final result = await _spotRepository.enqueueSync(spotId);
    result.when(
      success: (_) {},
      failure: (failure) {
        state = state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current));
      },
    );
  }

  Future<void> enqueueDraft(Spot spot) async {
    final result = await _syncDraftsUsecase.enqueue(spot);
    result.when(
      success: (_) {},
      failure: (failure) {
        state = state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current));
      },
    );
  }
}
