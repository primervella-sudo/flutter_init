import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

abstract class AppSettingsRepository {
  Future<DomainResult<AppSettings>> load();

  Future<DomainResult<void>> save(AppSettings settings);

  Stream<AppSettings> watch();
}
