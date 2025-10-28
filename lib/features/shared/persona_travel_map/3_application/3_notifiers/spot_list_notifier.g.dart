// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SpotListNotifier)
const spotListNotifierProvider = SpotListNotifierProvider._();

final class SpotListNotifierProvider
    extends $NotifierProvider<SpotListNotifier, SpotListState> {
  const SpotListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'spotListNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$spotListNotifierHash();

  @$internal
  @override
  SpotListNotifier create() => SpotListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpotListState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpotListState>(value),
    );
  }
}

String _$spotListNotifierHash() => r'4e7df0d72ce4ee5ba9a0b996b5b62e3f20b09e1e';

abstract class _$SpotListNotifier extends $Notifier<SpotListState> {
  SpotListState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SpotListState, SpotListState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SpotListState, SpotListState>,
              SpotListState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
