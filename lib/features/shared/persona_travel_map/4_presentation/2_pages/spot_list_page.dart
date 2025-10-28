import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/app_settings_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/notifier_providers.dart';
import 'package:persona_travel/features/shared/persona_travel_map/4_presentation/1_widgets/3_organisms/spot_map_view.dart';

class SpotListPage extends ConsumerWidget {
  const SpotListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spotState = ref.watch(spotListNotifierProvider);
    final personaState = ref.watch(personaListNotifierProvider);
    final syncState = ref.watch(syncQueueNotifierProvider);
    final settingsState = ref.watch(appSettingsNotifierProvider);

    final languageLabel = settingsState.settings.when(
      data: (settings) => settings.language == AppLanguage.ja ? '日本語' : 'English',
      loading: () => '...',
      error: (_, __) => 'Error',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Persona Travel Map'),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            tooltip: '言語を切り替える',
            onPressed: settingsState.settings.whenOrNull(
              data: (settings) => () {
                final target = settings.language == AppLanguage.ja ? AppLanguage.en : AppLanguage.ja;
                ref.read(appSettingsNotifierProvider.notifier).toggleLanguage(target);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: syncState.pendingCount.when(
                data: (count) => Text('Pending: $count'),
                loading: () => const SizedBox.square(dimension: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                error: (_, __) => const Icon(Icons.error, color: Colors.redAccent, size: 16),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: personaState.personas.when(
              data: (personas) => Row(
                children: [
                  const Text('フィルター:'),
                  const SizedBox(width: 12),
                  DropdownButton<String?>(
                    value: spotState.selectedPersonaId,
                    hint: const Text('すべて'),
                    onChanged: (value) => ref.read(spotListNotifierProvider.notifier).setPersonaFilter(value),
                    items: [
                      const DropdownMenuItem<String?>(value: null, child: Text('すべて')),
                      ...personas.map(
                        (persona) => DropdownMenuItem<String?>(
                          value: persona.id,
                          child: Text(persona.name),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Text('言語: $languageLabel'),
                ],
              ),
              loading: () => const SizedBox(height: 24, child: Center(child: CircularProgressIndicator(strokeWidth: 2))),
              error: (_, __) => const Text('ペルソナの読み込みに失敗しました'),
            ),
          ),
        ),
      ),
      body: spotState.spots.when(
        data: (spots) => _SpotListWithMap(spots: spots),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('スポットの読み込みに失敗しました: $error')),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(syncQueueNotifierProvider.notifier).processQueue(),
        label: const Text('同期キューを処理'),
        icon: const Icon(Icons.sync),
      ),
    );
  }
}

class _SpotListWithMap extends StatelessWidget {
  const _SpotListWithMap({required this.spots});

  final List<Spot> spots;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SpotMapView(spots: spots),
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: spots.isEmpty
              ? const Center(child: Text('登録されたスポットはまだありません'))
              : ListView.separated(
                  itemCount: spots.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final spot = spots[index];
                    return ListTile(
                      title: Text(spot.title),
                      subtitle: Text(spot.address),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('写真: ${spot.photos.length}枚'),
                          Text('共有: ${spot.isShared ? 'ON' : 'OFF'}'),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
