import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/app_settings_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

class ToggleLanguageUsecase {
  const ToggleLanguageUsecase(this._repository);

  final AppSettingsRepository _repository;

  Future<DomainResult<AppSettings>> call(AppLanguage targetLanguage) async {
    final current = await _repository.load();
    return current.when(
      success: (settings) async {
        if (settings.language == targetLanguage) {
          return DomainResult.success(settings);
        }
        final updated = settings.copyWith(language: targetLanguage);
        final saveResult = await _repository.save(updated);
        return saveResult.when(
          success: (_) => DomainResult.success(updated),
          failure: DomainResult.failure,
        );
      },
      failure: (failure) async => DomainResult.failure(failure),
    );
  }
}
