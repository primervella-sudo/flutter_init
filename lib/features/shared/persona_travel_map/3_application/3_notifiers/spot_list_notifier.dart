import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/spot_list_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/repository_providers.dart';

part 'spot_list_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'spotListNotifierProvider')
class SpotListNotifier extends _$SpotListNotifier {
  StreamSubscription<List<Spot>>? _subscription;

  @override
  SpotListState build() {
    ref.onDispose(() => _subscription?.cancel());
    Future.microtask(_subscribe);
    return const SpotListState();
  }

  void setPersonaFilter(String? personaId) {
    if (state.selectedPersonaId == personaId) {
      return;
    }
    state = state.copyWith(selectedPersonaId: personaId);
    _subscribe();
  }

  void _subscribe() {
    _subscription?.cancel();
    state = state.copyWith(spots: const AsyncValue<List<Spot>>.loading());
    final repository = ref.read(spotRepositoryProvider);
    final stream = state.selectedPersonaId == null
        ? repository.watchAllSpots()
        : repository.watchSpotsByPersona(state.selectedPersonaId!);
    _subscription = stream.listen(
      (spots) {
        state = state.copyWith(spots: AsyncValue.data(spots));
      },
      onError: (error, stackTrace) {
        state = state.copyWith(spots: AsyncValue.error(error, stackTrace));
      },
    );
  }
}
