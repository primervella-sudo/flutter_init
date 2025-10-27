import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';

class SyncQueueModel {
  const SyncQueueModel(this.record);

  final SyncQueueRecord record;

  static SyncQueueTableCompanion fromSpot(Spot spot) {
    final payload = jsonEncode({
      'spotId': spot.id,
      'syncStatus': spot.syncStatus.name,
    });
    return SyncQueueTableCompanion(
      id: Value(spot.id),
      payload: Value(payload),
      createdAt: Value(DateTime.now()),
      status: const Value('pending'),
    );
  }

  Map<String, dynamic> payload() {
    return jsonDecode(record.payload) as Map<String, dynamic>;
  }
}
