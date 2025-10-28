import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/manage_persona_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/persona_editor_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/usecase_providers.dart';

part 'persona_editor_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'personaEditorNotifierProvider')
class PersonaEditorNotifier extends _$PersonaEditorNotifier {
  ManagePersonaUsecase get _managePersonaUsecase => ref.read(managePersonaUsecaseProvider);

  @override
  PersonaEditorState build() => const PersonaEditorState();

  Future<void> create(Persona persona) async {
    state = state.copyWith(lastEdited: const AsyncValue<Persona?>.loading());
    final result = await _managePersonaUsecase.create(persona);
    state = result.when(
      success: (saved) => state.copyWith(lastEdited: AsyncValue.data(saved)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> update(Persona persona) async {
    state = state.copyWith(lastEdited: const AsyncValue<Persona?>.loading());
    final result = await _managePersonaUsecase.update(persona);
    state = result.when(
      success: (updated) => state.copyWith(lastEdited: AsyncValue.data(updated)),
      failure: (failure) => state.copyWith(lastEdited: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> delete(Persona persona, {String? migrateToPersonaId}) async {
    state = state.copyWith(operation: const AsyncValue<void>.loading());
    final result = await _managePersonaUsecase.delete(persona, migrateToPersonaId: migrateToPersonaId);
    state = result.when(
      success: (_) => state.copyWith(
        lastEdited: const AsyncValue<Persona?>.data(null),
        operation: const AsyncValue<void>.data(null),
      ),
      failure: (failure) => state.copyWith(operation: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> setDefault(String personaId) async {
    state = state.copyWith(operation: const AsyncValue<void>.loading());
    final result = await _managePersonaUsecase.setAsDefault(personaId);
    state = result.when(
      success: (_) => state.copyWith(operation: const AsyncValue<void>.data(null)),
      failure: (failure) => state.copyWith(operation: AsyncValue.error(failure, StackTrace.current)),
    );
  }
}
