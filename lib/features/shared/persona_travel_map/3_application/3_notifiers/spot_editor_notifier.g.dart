// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_editor_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SpotEditorNotifier)
const spotEditorNotifierProvider = SpotEditorNotifierProvider._();

final class SpotEditorNotifierProvider
    extends $NotifierProvider<SpotEditorNotifier, SpotEditorState> {
  const SpotEditorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spotEditorNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spotEditorNotifierHash();

  @$internal
  @override
  SpotEditorNotifier create() => SpotEditorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpotEditorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpotEditorState>(value),
    );
  }
}

String _$spotEditorNotifierHash() =>
    r'25115a70b359f68dc085fc75eb9bb9cf1c2bc2a6';

abstract class _$SpotEditorNotifier extends $Notifier<SpotEditorState> {
  SpotEditorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SpotEditorState, SpotEditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SpotEditorState, SpotEditorState>,
              SpotEditorState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
