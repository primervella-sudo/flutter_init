import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';

class PersonaListState {
  const PersonaListState({
    this.personas = const AsyncValue<List<Persona>>.loading(),
  });

  final AsyncValue<List<Persona>> personas;

  PersonaListState copyWith({AsyncValue<List<Persona>>? personas}) {
    return PersonaListState(
      personas: personas ?? this.personas,
    );
  }
}
