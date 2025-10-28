import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReviewGeneratorState {
  const ReviewGeneratorState({
    this.review = const AsyncValue<String>.data(''),
  });

  final AsyncValue<String> review;

  ReviewGeneratorState copyWith({AsyncValue<String>? review}) {
    return ReviewGeneratorState(
      review: review ?? this.review,
    );
  }
}
