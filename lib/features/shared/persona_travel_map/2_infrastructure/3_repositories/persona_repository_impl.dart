import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/persona_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/persona_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/spot_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/repository_error_mapper.dart';

class PersonaRepositoryImpl implements PersonaRepository {
  const PersonaRepositoryImpl(
    this._personaLocalDataSource,
    this._spotLocalDataSource,
  );

  final PersonaLocalDataSource _personaLocalDataSource;
  final SpotLocalDataSource _spotLocalDataSource;

  @override
  Future<DomainResult<List<Persona>>> fetchAll() async {
    try {
      final personas = await _personaLocalDataSource.fetchAll();
      return DomainResult.success(personas);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Stream<List<Persona>> watchAll() {
    return _personaLocalDataSource.watchAll();
  }

  @override
  Future<DomainResult<Persona>> create(Persona persona) {
    return _upsert(persona);
  }

  @override
  Future<DomainResult<Persona>> update(Persona persona) {
    return _upsert(persona);
  }

  @override
  Future<DomainResult<void>> delete(
    String personaId, {
    String? migrateToPersonaId,
  }) async {
    try {
      if (migrateToPersonaId != null && migrateToPersonaId == personaId) {
        return DomainResult.failure(
          const DomainFailure.validation(message: '移行先のペルソナが元のペルソナと同じです'),
        );
      }

      if (migrateToPersonaId != null) {
        final personas = await _personaLocalDataSource.fetchAll();
        final exists = personas.any((persona) => persona.id == migrateToPersonaId);
        if (!exists) {
          return DomainResult.failure(
            DomainFailure.notFound(resource: 'persona:$migrateToPersonaId'),
          );
        }
      }

      await _spotLocalDataSource.reassignPersona(
        fromPersonaId: personaId,
        toPersonaId: migrateToPersonaId,
      );
      await _personaLocalDataSource.delete(personaId);
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<void>> setDefault(String personaId) async {
    try {
      await _personaLocalDataSource.setDefault(personaId);
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  Future<DomainResult<Persona>> _upsert(Persona persona) async {
    try {
      final saved = await _personaLocalDataSource.upsert(persona);
      return DomainResult.success(saved);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }
}
