import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/persona_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

class ManagePersonaUsecase {
  const ManagePersonaUsecase(this._personaRepository);

  final PersonaRepository _personaRepository;

  Future<DomainResult<Persona>> create(Persona persona) async {
    final failure = _validate(persona);
    if (failure != null) {
      return DomainResult.failure(failure);
    }
    return _personaRepository.create(persona);
  }

  Future<DomainResult<Persona>> update(Persona persona) async {
    final failure = _validate(persona);
    if (failure != null) {
      return DomainResult.failure(failure);
    }
    return _personaRepository.update(persona);
  }

  Future<DomainResult<void>> delete(Persona persona, {String? migrateToPersonaId}) {
    if (persona.isDefault) {
      return Future.value(
        const DomainResult.failure(
          DomainFailure.conflict(message: 'デフォルトペルソナは削除できません'),
        ),
      );
    }
    return _personaRepository.delete(persona.id, migrateToPersonaId: migrateToPersonaId);
  }

  Future<DomainResult<void>> setAsDefault(String personaId) {
    return _personaRepository.setDefault(personaId);
  }

  DomainFailure? _validate(Persona persona) {
    if (persona.name.trim().isEmpty || persona.name.trim().length > 50) {
      return const DomainFailure.validation(message: 'ペルソナ名は1～50文字で入力してください');
    }

    if (persona.promptText.trim().isEmpty || persona.promptText.length > 10000) {
      return const DomainFailure.validation(message: 'プロンプトは1～10,000文字で入力してください');
    }

    return null;
  }
}
