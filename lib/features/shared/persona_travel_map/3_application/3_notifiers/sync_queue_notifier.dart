import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/sync_drafts_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/sync_queue_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/usecase_providers.dart';

part 'sync_queue_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'syncQueueNotifierProvider')
class SyncQueueNotifier extends _$SyncQueueNotifier {
  StreamSubscription<int>? _subscription;

  SyncDraftsUsecase get _usecase => ref.read(syncDraftsUsecaseProvider);

  @override
  SyncQueueState build() {
    ref.onDispose(() => _subscription?.cancel());
    _subscribe();
    return const SyncQueueState();
  }

  Future<void> enqueue(Spot spot) async {
    final result = await _usecase.enqueue(spot);
    result.when(
      success: (_) {},
      failure: (failure) {
        state = state.copyWith(pendingCount: AsyncValue.error(failure, StackTrace.current));
      },
    );
  }

  Future<void> processQueue() async {
    final result = await _usecase.processQueue();
    result.when(
      success: (_) {},
      failure: (failure) {
        state = state.copyWith(pendingCount: AsyncValue.error(failure, StackTrace.current));
      },
    );
  }

  void _subscribe() {
    _subscription?.cancel();
    state = state.copyWith(pendingCount: const AsyncValue<int>.loading());
    _subscription = _usecase.watchPendingCount().listen(
      (count) {
        state = state.copyWith(pendingCount: AsyncValue.data(count));
      },
      onError: (error, stackTrace) {
        state = state.copyWith(pendingCount: AsyncValue.error(error, stackTrace));
      },
    );
  }
}
