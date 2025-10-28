import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/app_settings_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/toggle_language_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/1_states/app_settings_state.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/repository_providers.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/usecase_providers.dart';

part 'app_settings_notifier.g.dart';

@Riverpod(keepAlive: false, name: 'appSettingsNotifierProvider')
class AppSettingsNotifier extends _$AppSettingsNotifier {
  StreamSubscription<AppSettings>? _subscription;

  AppSettingsRepository get _repository => ref.read(appSettingsRepositoryProvider);
  ToggleLanguageUsecase get _toggleLanguageUsecase => ref.read(toggleLanguageUsecaseProvider);

  @override
  AppSettingsState build() {
    ref.onDispose(() => _subscription?.cancel());
    Future.microtask(_load);
    _subscribe();
    return const AppSettingsState();
  }

  Future<void> toggleLanguage(AppLanguage targetLanguage) async {
    state = state.copyWith(action: const AsyncValue<void>.loading());
    final result = await _toggleLanguageUsecase.call(targetLanguage);
    state = result.when(
      success: (_) => state.copyWith(action: const AsyncValue<void>.data(null)),
      failure: (failure) => state.copyWith(action: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  Future<void> _load() async {
    state = state.copyWith(settings: const AsyncValue<AppSettings>.loading());
    final result = await _repository.load();
    state = result.when(
      success: (settings) => state.copyWith(settings: AsyncValue.data(settings)),
      failure: (failure) => state.copyWith(settings: AsyncValue.error(failure, StackTrace.current)),
    );
  }

  void _subscribe() {
    _subscription?.cancel();
    _subscription = _repository.watch().listen(
      (settings) {
        state = state.copyWith(settings: AsyncValue.data(settings));
      },
      onError: (error, stackTrace) {
        state = state.copyWith(settings: AsyncValue.error(error, stackTrace));
      },
    );
  }
}
