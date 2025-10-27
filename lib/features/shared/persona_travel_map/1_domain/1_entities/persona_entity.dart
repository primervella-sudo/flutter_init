import 'package:freezed_annotation/freezed_annotation.dart';

part 'persona_entity.freezed.dart';

@freezed
abstract class Persona with _$Persona {
  const Persona._();

  const factory Persona({
    required String id,
    required String name,
    required String toneStyle,
    required String promptText,
    @Default(false) bool isDefault,
    @Default(0) int linkedSpotCount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Persona;

  bool get isPrimary => isDefault;
}
