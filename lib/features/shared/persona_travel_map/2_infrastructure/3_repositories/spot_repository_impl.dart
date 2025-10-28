import 'dart:io';

import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/photo_storage_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/spot_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/sync_queue_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/repository_error_mapper.dart';

class SpotRepositoryImpl implements SpotRepository {
  const SpotRepositoryImpl(
    this._spotLocalDataSource,
    this._photoStorageDataSource,
    this._syncQueueLocalDataSource,
  );

  final SpotLocalDataSource _spotLocalDataSource;
  final PhotoStorageDataSource _photoStorageDataSource;
  final SyncQueueLocalDataSource _syncQueueLocalDataSource;

  @override
  Future<DomainResult<Spot>> createSpot(Spot spot) async {
    try {
      final saved = await _spotLocalDataSource.create(spot);
      return DomainResult.success(saved);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<Spot>> updateSpot(Spot spot) async {
    try {
      final updated = await _spotLocalDataSource.update(spot);
      return DomainResult.success(updated);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<void>> deleteSpot(String id) async {
    try {
      await _spotLocalDataSource.delete(id);
      await _photoStorageDataSource.deleteBySpot(id);
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } on FileSystemException catch (error) {
      return DomainResult.failure(
        DomainFailure.validation(message: '写真の削除に失敗しました: ${error.message}'),
      );
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<Spot?>> fetchSpotById(String id) async {
    try {
      final spot = await _spotLocalDataSource.fetchById(id);
      return DomainResult.success(spot);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Stream<List<Spot>> watchAllSpots() {
    return _spotLocalDataSource.watchAll();
  }

  @override
  Stream<List<Spot>> watchSpotsByPersona(String personaId) {
    return _spotLocalDataSource.watchByPersona(personaId);
  }

  @override
  Future<DomainResult<void>> saveDraft(Spot spot) async {
    try {
      await _spotLocalDataSource.update(spot);
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<void>> enqueueSync(String spotId) async {
    try {
      final spot = await _spotLocalDataSource.fetchById(spotId);
      if (spot == null) {
        return DomainResult.failure(
          DomainFailure.notFound(resource: 'spot:$spotId'),
        );
      }
      await _syncQueueLocalDataSource.enqueue(
        spot.copyWith(updatedAt: DateTime.now()),
      );
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }
}
