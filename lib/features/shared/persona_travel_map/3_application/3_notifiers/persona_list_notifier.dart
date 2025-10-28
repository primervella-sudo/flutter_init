import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/persona_list_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/repository_providers.dart';

part 'persona_list_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'personaListNotifierProvider')
class PersonaListNotifier extends _$PersonaListNotifier {
  StreamSubscription<List<Persona>>? _subscription;

  @override
  PersonaListState build() {
    ref.onDispose(() => _subscription?.cancel());
    Future.microtask(_subscribe);
    return const PersonaListState();
  }

  Future<void> refresh() async {
    state = state.copyWith(personas: const AsyncValue<List<Persona>>.loading());
    final repository = ref.read(personaRepositoryProvider);
    final result = await repository.fetchAll();
    state = result.when(
      success: (personas) => state.copyWith(personas: AsyncValue.data(personas)),
      failure: (failure) => state.copyWith(personas: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  void _subscribe() {
    _subscription?.cancel();
    state = const PersonaListState(personas: AsyncValue<List<Persona>>.loading());
    final repository = ref.read(personaRepositoryProvider);
    _subscription = repository.watchAll().listen(
      (personas) {
        state = state.copyWith(personas: AsyncValue.data(personas));
      },
      onError: (error, stackTrace) {
        state = state.copyWith(personas: AsyncValue.error(error, stackTrace));
      },
    );
  }
}
