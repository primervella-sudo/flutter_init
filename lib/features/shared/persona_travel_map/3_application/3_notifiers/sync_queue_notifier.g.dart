// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_queue_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SyncQueueNotifier)
const syncQueueNotifierProvider = SyncQueueNotifierProvider._();

final class SyncQueueNotifierProvider
    extends $NotifierProvider<SyncQueueNotifier, SyncQueueState> {
  const SyncQueueNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'syncQueueNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$syncQueueNotifierHash();

  @$internal
  @override
  SyncQueueNotifier create() => SyncQueueNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SyncQueueState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SyncQueueState>(value),
    );
  }
}

String _$syncQueueNotifierHash() => r'3c86c7f98938b9833ae7b13e0a587c94d48b1fb8';

abstract class _$SyncQueueNotifier extends $Notifier<SyncQueueState> {
  SyncQueueState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SyncQueueState, SyncQueueState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SyncQueueState, SyncQueueState>,
              SyncQueueState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
