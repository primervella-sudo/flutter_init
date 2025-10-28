import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/generate_review_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/review_generator_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/usecase_providers.dart';

part 'review_generator_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'reviewGeneratorNotifierProvider')
class ReviewGeneratorNotifier extends _$ReviewGeneratorNotifier {
  GenerateReviewUsecase get _generateReviewUsecase => ref.read(generateReviewUsecaseProvider);

  @override
  ReviewGeneratorState build() {
    return const ReviewGeneratorState();
  }

  Future<void> generate(GenerateReviewInput input) async {
    state = state.copyWith(review: const AsyncValue<String>.loading());
    final result = await _generateReviewUsecase.call(input);
    state = result.when(
      success: (review) => state.copyWith(review: AsyncValue.data(review)),
      failure: (failure) => state.copyWith(review: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  void reset() {
    state = const ReviewGeneratorState();
  }
}
