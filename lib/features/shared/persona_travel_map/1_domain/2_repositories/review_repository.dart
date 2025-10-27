import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

abstract class ReviewRepository {
  Future<DomainResult<String>> generateReview({
    required Spot spot,
    required Persona persona,
    required AppLanguage language,
  });
}
