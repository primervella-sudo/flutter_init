// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_generator_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReviewGeneratorNotifier)
const reviewGeneratorNotifierProvider = ReviewGeneratorNotifierProvider._();

final class ReviewGeneratorNotifierProvider
    extends $NotifierProvider<ReviewGeneratorNotifier, ReviewGeneratorState> {
  const ReviewGeneratorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewGeneratorNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewGeneratorNotifierHash();

  @$internal
  @override
  ReviewGeneratorNotifier create() => ReviewGeneratorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewGeneratorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewGeneratorState>(value),
    );
  }
}

String _$reviewGeneratorNotifierHash() =>
    r'26e6f6e2d426173c3debc0c2925bd87bc61d29db';

abstract class _$ReviewGeneratorNotifier
    extends $Notifier<ReviewGeneratorState> {
  ReviewGeneratorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ReviewGeneratorState, ReviewGeneratorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReviewGeneratorState, ReviewGeneratorState>,
              ReviewGeneratorState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
