import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/exceptions/remote_data_exceptions.dart';

class AiReviewRemoteDataSource {
  AiReviewRemoteDataSource({this.modelName = 'gemini-1.5-flash'});

  final String modelName;

  Future<String> generateReview({
    required String apiKey,
    required Spot spot,
    required Persona persona,
    required AppLanguage language,
  }) async {
    try {
      final model = GenerativeModel(model: modelName, apiKey: apiKey);
      final response = await model.generateContent([
        Content.text(_buildPrompt(spot: spot, persona: persona, language: language)),
      ]);
      final text = response.text?.trim();
      if (text == null || text.isEmpty) {
        throw const RemoteContentFilteredException();
      }
      return text;
    } on GenerativeAIException catch (error) {
      throw _mapGenerativeError(error);
    } catch (error) {
      throw RemoteUnexpectedException(cause: error);
    }
  }

  String _buildPrompt({
    required Spot spot,
    required Persona persona,
    required AppLanguage language,
  }) {
    final locale = language == AppLanguage.en ? 'English' : 'Japanese';
    return '''You are the AI travel companion "${persona.name}" with the following tone:
${persona.toneStyle}

Create a short travel review in $locale for the spot described below.

Spot name: ${spot.title}
Address: ${spot.address}
Visited at: ${spot.visitedAt.toIso8601String()}
Existing review: ${spot.reviewText}

Focus on vivid descriptions, sensory impressions, and the persona's roleplay perspective. Output 2-3 paragraphs.''';
  }

  RemoteDataException _mapGenerativeError(GenerativeAIException error) {
    final message = error.message;
    if (message.contains('PERMISSION') || message.contains('permission')) {
      return RemoteAuthException(cause: error);
    }
    if (message.contains('RESOURCE_EXHAUSTED') || message.contains('quota')) {
      return RemoteQuotaExceededException(cause: error);
    }
    if (message.contains('DEADLINE_EXCEEDED') || message.contains('timeout')) {
      return RemoteTimeoutException(cause: error);
    }
    if (message.contains('SAFETY') || message.contains('blocked')) {
      return RemoteContentFilteredException(cause: error);
    }
    return RemoteUnexpectedException(cause: error);
  }
}
