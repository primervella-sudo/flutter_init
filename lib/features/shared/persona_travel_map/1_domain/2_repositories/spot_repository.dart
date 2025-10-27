import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

abstract class SpotRepository {
  Future<DomainResult<Spot>> createSpot(Spot spot);

  Future<DomainResult<Spot>> updateSpot(Spot spot);

  Future<DomainResult<void>> deleteSpot(String id);

  Future<DomainResult<Spot?>> fetchSpotById(String id);

  Stream<List<Spot>> watchAllSpots();

  Stream<List<Spot>> watchSpotsByPersona(String personaId);

  Future<DomainResult<void>> saveDraft(Spot spot);

  Future<DomainResult<void>> enqueueSync(String spotId);
}
