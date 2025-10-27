import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/sync_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

class SyncDraftsUsecase {
  const SyncDraftsUsecase(this._syncRepository);

  final SyncRepository _syncRepository;

  Future<DomainResult<void>> enqueue(Spot spot) {
    return _syncRepository.enqueue(spot);
  }

  Future<DomainResult<void>> processQueue() {
    return _syncRepository.processQueue();
  }

  Stream<int> watchPendingCount() {
    return _syncRepository.watchPendingCount();
  }
}
