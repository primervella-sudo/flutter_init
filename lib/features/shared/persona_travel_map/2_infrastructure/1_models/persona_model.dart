import 'package:drift/drift.dart';
import 'package:persona_travel/core/database/app_database.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/persona_entity.dart';

class PersonaModel {
  const PersonaModel(this.record);

  final PersonaRecord record;

  Persona toDomain() {
    return Persona(
      id: record.id,
      name: record.name,
      toneStyle: record.toneStyle,
      promptText: record.promptText,
      isDefault: record.isDefault,
      linkedSpotCount: record.linkedSpotCount,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    );
  }

  static PersonasTableCompanion toCompanion(Persona persona) {
    return PersonasTableCompanion(
      id: Value(persona.id),
      name: Value(persona.name),
      toneStyle: Value(persona.toneStyle),
      promptText: Value(persona.promptText),
      isDefault: Value(persona.isDefault),
      linkedSpotCount: Value(persona.linkedSpotCount),
      createdAt: Value(persona.createdAt),
      updatedAt: Value(persona.updatedAt),
    );
  }
}
