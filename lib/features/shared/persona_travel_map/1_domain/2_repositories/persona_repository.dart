import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

abstract class PersonaRepository {
  Future<DomainResult<List<Persona>>> fetchAll();

  Stream<List<Persona>> watchAll();

  Future<DomainResult<Persona>> create(Persona persona);

  Future<DomainResult<Persona>> update(Persona persona);

  Future<DomainResult<void>> delete(String personaId, {String? migrateToPersonaId});

  Future<DomainResult<void>> setDefault(String personaId);
}
