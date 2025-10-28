import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/app_settings_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/settings_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/repository_error_mapper.dart';

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  const AppSettingsRepositoryImpl(this._localDataSource);

  final SettingsLocalDataSource _localDataSource;

  @override
  Future<DomainResult<AppSettings>> load() async {
    try {
      final settings = await _localDataSource.load();
      return DomainResult.success(settings);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Future<DomainResult<void>> save(AppSettings settings) async {
    try {
      await _localDataSource.save(settings);
      return const DomainResult.success(null);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }

  @override
  Stream<AppSettings> watch() {
    return _localDataSource.watch();
  }
}
