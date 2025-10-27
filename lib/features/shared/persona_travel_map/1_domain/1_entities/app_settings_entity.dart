import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

enum AppLanguage { ja, en }

typedef MapPreferences = Map<String, dynamic>;

@freezed
abstract class AppSettings with _$AppSettings {
  const AppSettings._();

  const factory AppSettings({
    @Default(AppLanguage.ja) AppLanguage language,
    @Default(<String, dynamic>{}) MapPreferences mapViewPreferences,
    String? aiApiKey,
    String? mapsApiKey,
    @Default(true) bool realtimeLocationEnabled,
    @Default(false) bool onboardingCompleted,
    @Default(false) bool analyticsOptIn,
  }) = _AppSettings;

  bool get isOnboardingNeeded => !onboardingCompleted;
}
