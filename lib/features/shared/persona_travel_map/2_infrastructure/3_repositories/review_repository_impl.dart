import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/review_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/settings_local_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/ai_review_remote_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/exceptions/remote_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/3_repositories/repository_error_mapper.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  const ReviewRepositoryImpl(
    this._remoteDataSource,
    this._settingsLocalDataSource,
  );

  final AiReviewRemoteDataSource _remoteDataSource;
  final SettingsLocalDataSource _settingsLocalDataSource;

  @override
  Future<DomainResult<String>> generateReview({
    required Spot spot,
    required Persona persona,
    required AppLanguage language,
  }) async {
    try {
      final settings = await _settingsLocalDataSource.load();
      final apiKey = settings.aiApiKey;
      if (apiKey == null || apiKey.isEmpty) {
        return DomainResult.failure(
          const DomainFailure.permission(
            permission: 'ai_api_key',
            message: 'AIレビューを生成するにはAPIキーが必要です',
          ),
        );
      }

      final review = await _remoteDataSource.generateReview(
        apiKey: apiKey,
        spot: spot,
        persona: persona,
        language: language,
      );
      return DomainResult.success(review);
    } on LocalDataException catch (error) {
      return DomainResult.failure(mapLocalDataException(error));
    } on RemoteDataException catch (error) {
      return DomainResult.failure(
        mapRemoteDataException(error, credential: 'ai_api_key'),
      );
    } catch (error) {
      return DomainResult.failure(mapUnknownException(error));
    }
  }
}
