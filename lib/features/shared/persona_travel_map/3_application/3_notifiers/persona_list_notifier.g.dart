// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PersonaListNotifier)
const personaListNotifierProvider = PersonaListNotifierProvider._();

final class PersonaListNotifierProvider
    extends $NotifierProvider<PersonaListNotifier, PersonaListState> {
  const PersonaListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personaListNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personaListNotifierHash();

  @$internal
  @override
  PersonaListNotifier create() => PersonaListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonaListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonaListState>(value),
    );
  }
}

String _$personaListNotifierHash() =>
    r'222511eec6c6a0c2396e940c4977e0c8d599b76e';

abstract class _$PersonaListNotifier extends $Notifier<PersonaListState> {
  PersonaListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PersonaListState, PersonaListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PersonaListState, PersonaListState>,
              PersonaListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
