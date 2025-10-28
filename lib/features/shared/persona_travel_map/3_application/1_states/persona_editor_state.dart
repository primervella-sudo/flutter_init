import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';

class PersonaEditorState {
  const PersonaEditorState({
    this.lastEdited = const AsyncValue<Persona?>.data(null),
    this.operation = const AsyncValue<void>.data(null),
  });

  final AsyncValue<Persona?> lastEdited;
  final AsyncValue<void> operation;

  PersonaEditorState copyWith({
    AsyncValue<Persona?>? lastEdited,
    AsyncValue<void>? operation,
  }) {
    return PersonaEditorState(
      lastEdited: lastEdited ?? this.lastEdited,
      operation: operation ?? this.operation,
    );
  }
}
