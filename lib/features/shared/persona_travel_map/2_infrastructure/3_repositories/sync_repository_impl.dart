import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/sync_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/1_models/sync_queue_model.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/spot_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/sync_queue_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/repository_error_mapper.dart';

class SyncRepositoryImpl implements SyncRepository {
  const SyncRepositoryImpl(
    this._queueLocalDataSource,
    this._spotLocalDataSource,
  );

  final SyncQueueLocalDataSource _queueLocalDataSource;
  final SpotLocalDataSource _spotLocalDataSource;

  @override
  Future<DomainResult<void>> enqueue(Spot spot) async {
    try {
      await _queueLocalDataSource.enqueue(spot.copyWith(updatedAt: DateTime.now()));
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<void>> processQueue() async {
    try {
      final pending = await _queueLocalDataSource.takePending();
      for (final record in pending) {
        final payload = SyncQueueModel(record).payload();
        final spotId = payload['spotId'] as String?;
        if (spotId == null) {
          await _queueLocalDataSource.markCompleted(record.id);
          continue;
        }

        final spot = await _spotLocalDataSource.fetchById(spotId);
        if (spot == null) {
          await _queueLocalDataSource.markCompleted(record.id);
          continue;
        }

        final syncedSpot = spot.copyWith(
          syncStatus: SpotSyncStatus.synced,
          updatedAt: DateTime.now(),
        );
        await _spotLocalDataSource.update(syncedSpot);
        await _queueLocalDataSource.markCompleted(record.id);
      }
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Stream<int> watchPendingCount() {
    return _queueLocalDataSource.watchPendingCount();
  }
}
