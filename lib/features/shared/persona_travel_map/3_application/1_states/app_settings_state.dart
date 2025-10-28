import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';

class AppSettingsState {
  const AppSettingsState({
    this.settings = const AsyncValue<AppSettings>.loading(),
    this.action = const AsyncValue<void>.data(null),
  });

  final AsyncValue<AppSettings> settings;
  final AsyncValue<void> action;

  AppSettingsState copyWith({
    AsyncValue<AppSettings>? settings,
    AsyncValue<void>? action,
  }) {
    return AppSettingsState(
      settings: settings ?? this.settings,
      action: action ?? this.action,
    );
  }
}
