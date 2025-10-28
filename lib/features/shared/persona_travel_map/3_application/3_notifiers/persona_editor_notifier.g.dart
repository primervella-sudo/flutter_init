// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_editor_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PersonaEditorNotifier)
const personaEditorNotifierProvider = PersonaEditorNotifierProvider._();

final class PersonaEditorNotifierProvider
    extends $NotifierProvider<PersonaEditorNotifier, PersonaEditorState> {
  const PersonaEditorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personaEditorNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personaEditorNotifierHash();

  @$internal
  @override
  PersonaEditorNotifier create() => PersonaEditorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PersonaEditorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PersonaEditorState>(value),
    );
  }
}

String _$personaEditorNotifierHash() =>
    r'c941b748f7580c352a520cac44edc63898b8a654';

abstract class _$PersonaEditorNotifier extends $Notifier<PersonaEditorState> {
  PersonaEditorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PersonaEditorState, PersonaEditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PersonaEditorState, PersonaEditorState>,
              PersonaEditorState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
