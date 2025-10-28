import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';

class SpotEditorState {
  const SpotEditorState({
    this.lastEdited = const AsyncValue<Spot?>.data(null),
  });

  final AsyncValue<Spot?> lastEdited;

  SpotEditorState copyWith({AsyncValue<Spot?>? lastEdited}) {
    return SpotEditorState(
      lastEdited: lastEdited ?? this.lastEdited,
    );
  }
}
