import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/review_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

part 'generate_review_usecase.freezed.dart';

class GenerateReviewUsecase {
  const GenerateReviewUsecase(this._reviewRepository);

  final ReviewRepository _reviewRepository;

  Future<DomainResult<String>> call(GenerateReviewInput input) async {
    if (!input.forceRegenerate && input.spot.reviewText.isNotEmpty) {
      return DomainResult.success(input.spot.reviewText);
    }

    return _reviewRepository.generateReview(
      spot: input.spot,
      persona: input.persona,
      language: input.language,
    );
  }
}

@freezed
abstract class GenerateReviewInput with _$GenerateReviewInput {
  const factory GenerateReviewInput({
    required Spot spot,
    required Persona persona,
    @Default(AppLanguage.ja) AppLanguage language,
    @Default(false) bool forceRegenerate,
  }) = _GenerateReviewInput;
}
