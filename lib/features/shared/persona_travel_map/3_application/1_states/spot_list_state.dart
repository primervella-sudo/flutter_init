import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';

class SpotListState {
  const SpotListState({
    this.spots = const AsyncValue<List<Spot>>.loading(),
    this.selectedPersonaId,
  });

  final AsyncValue<List<Spot>> spots;
  final String? selectedPersonaId;

  SpotListState copyWith({
    AsyncValue<List<Spot>>? spots,
    String? selectedPersonaId,
  }) {
    return SpotListState(
      spots: spots ?? this.spots,
      selectedPersonaId: selectedPersonaId ?? this.selectedPersonaId,
    );
  }
}
