import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

abstract class SyncRepository {
  Future<DomainResult<void>> enqueue(Spot spot);

  Future<DomainResult<void>> processQueue();

  Stream<int> watchPendingCount();
}
