import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';

class AppSettingsModel {
  const AppSettingsModel(this.record);

  final AppSettingsRecord record;

  AppSettings toDomain() {
    final language = record.language == 'en' ? AppLanguage.en : AppLanguage.ja;
    final prefs = record.mapViewPreferences.isEmpty
        ? <String, dynamic>{}
        : jsonDecode(record.mapViewPreferences) as Map<String, dynamic>;
    return AppSettings(
      language: language,
      mapViewPreferences: Map<String, dynamic>.from(prefs),
      aiApiKey: record.aiApiKey,
      mapsApiKey: record.mapsApiKey,
      realtimeLocationEnabled: record.realtimeLocationEnabled,
      onboardingCompleted: record.onboardingCompleted,
      analyticsOptIn: record.analyticsOptIn,
    );
  }

  static AppSettingsTableCompanion toCompanion(AppSettings settings) {
    return AppSettingsTableCompanion(
      id: const Value.absent(),
      language: Value(settings.language == AppLanguage.en ? 'en' : 'ja'),
      mapViewPreferences: Value(jsonEncode(settings.mapViewPreferences)),
      aiApiKey: Value(settings.aiApiKey),
      mapsApiKey: Value(settings.mapsApiKey),
      realtimeLocationEnabled: Value(settings.realtimeLocationEnabled),
      onboardingCompleted: Value(settings.onboardingCompleted),
      analyticsOptIn: Value(settings.analyticsOptIn),
    );
  }
}
