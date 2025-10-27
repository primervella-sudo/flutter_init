// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PersonasTableTable extends PersonasTable
    with TableInfo<$PersonasTableTable, PersonaRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonasTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _toneStyleMeta = const VerificationMeta(
    'toneStyle',
  );
  @override
  late final GeneratedColumn<String> toneStyle = GeneratedColumn<String>(
    'tone_style',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _promptTextMeta = const VerificationMeta(
    'promptText',
  );
  @override
  late final GeneratedColumn<String> promptText = GeneratedColumn<String>(
    'prompt_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _linkedSpotCountMeta = const VerificationMeta(
    'linkedSpotCount',
  );
  @override
  late final GeneratedColumn<int> linkedSpotCount = GeneratedColumn<int>(
    'linked_spot_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    toneStyle,
    promptText,
    isDefault,
    linkedSpotCount,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'personas_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PersonaRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('tone_style')) {
      context.handle(
        _toneStyleMeta,
        toneStyle.isAcceptableOrUnknown(data['tone_style']!, _toneStyleMeta),
      );
    } else if (isInserting) {
      context.missing(_toneStyleMeta);
    }
    if (data.containsKey('prompt_text')) {
      context.handle(
        _promptTextMeta,
        promptText.isAcceptableOrUnknown(data['prompt_text']!, _promptTextMeta),
      );
    } else if (isInserting) {
      context.missing(_promptTextMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    }
    if (data.containsKey('linked_spot_count')) {
      context.handle(
        _linkedSpotCountMeta,
        linkedSpotCount.isAcceptableOrUnknown(
          data['linked_spot_count']!,
          _linkedSpotCountMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonaRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PersonaRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      toneStyle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tone_style'],
      )!,
      promptText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prompt_text'],
      )!,
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
      linkedSpotCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}linked_spot_count'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PersonasTableTable createAlias(String alias) {
    return $PersonasTableTable(attachedDatabase, alias);
  }
}

class PersonaRecord extends DataClass implements Insertable<PersonaRecord> {
  final String id;
  final String name;
  final String toneStyle;
  final String promptText;
  final bool isDefault;
  final int linkedSpotCount;
  final DateTime createdAt;
  final DateTime updatedAt;
  const PersonaRecord({
    required this.id,
    required this.name,
    required this.toneStyle,
    required this.promptText,
    required this.isDefault,
    required this.linkedSpotCount,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['tone_style'] = Variable<String>(toneStyle);
    map['prompt_text'] = Variable<String>(promptText);
    map['is_default'] = Variable<bool>(isDefault);
    map['linked_spot_count'] = Variable<int>(linkedSpotCount);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PersonasTableCompanion toCompanion(bool nullToAbsent) {
    return PersonasTableCompanion(
      id: Value(id),
      name: Value(name),
      toneStyle: Value(toneStyle),
      promptText: Value(promptText),
      isDefault: Value(isDefault),
      linkedSpotCount: Value(linkedSpotCount),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory PersonaRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonaRecord(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      toneStyle: serializer.fromJson<String>(json['toneStyle']),
      promptText: serializer.fromJson<String>(json['promptText']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      linkedSpotCount: serializer.fromJson<int>(json['linkedSpotCount']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'toneStyle': serializer.toJson<String>(toneStyle),
      'promptText': serializer.toJson<String>(promptText),
      'isDefault': serializer.toJson<bool>(isDefault),
      'linkedSpotCount': serializer.toJson<int>(linkedSpotCount),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PersonaRecord copyWith({
    String? id,
    String? name,
    String? toneStyle,
    String? promptText,
    bool? isDefault,
    int? linkedSpotCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => PersonaRecord(
    id: id ?? this.id,
    name: name ?? this.name,
    toneStyle: toneStyle ?? this.toneStyle,
    promptText: promptText ?? this.promptText,
    isDefault: isDefault ?? this.isDefault,
    linkedSpotCount: linkedSpotCount ?? this.linkedSpotCount,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PersonaRecord copyWithCompanion(PersonasTableCompanion data) {
    return PersonaRecord(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      toneStyle: data.toneStyle.present ? data.toneStyle.value : this.toneStyle,
      promptText: data.promptText.present
          ? data.promptText.value
          : this.promptText,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
      linkedSpotCount: data.linkedSpotCount.present
          ? data.linkedSpotCount.value
          : this.linkedSpotCount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PersonaRecord(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('toneStyle: $toneStyle, ')
          ..write('promptText: $promptText, ')
          ..write('isDefault: $isDefault, ')
          ..write('linkedSpotCount: $linkedSpotCount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    toneStyle,
    promptText,
    isDefault,
    linkedSpotCount,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonaRecord &&
          other.id == this.id &&
          other.name == this.name &&
          other.toneStyle == this.toneStyle &&
          other.promptText == this.promptText &&
          other.isDefault == this.isDefault &&
          other.linkedSpotCount == this.linkedSpotCount &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PersonasTableCompanion extends UpdateCompanion<PersonaRecord> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> toneStyle;
  final Value<String> promptText;
  final Value<bool> isDefault;
  final Value<int> linkedSpotCount;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const PersonasTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.toneStyle = const Value.absent(),
    this.promptText = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.linkedSpotCount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PersonasTableCompanion.insert({
    required String id,
    required String name,
    required String toneStyle,
    required String promptText,
    this.isDefault = const Value.absent(),
    this.linkedSpotCount = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       toneStyle = Value(toneStyle),
       promptText = Value(promptText),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<PersonaRecord> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? toneStyle,
    Expression<String>? promptText,
    Expression<bool>? isDefault,
    Expression<int>? linkedSpotCount,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (toneStyle != null) 'tone_style': toneStyle,
      if (promptText != null) 'prompt_text': promptText,
      if (isDefault != null) 'is_default': isDefault,
      if (linkedSpotCount != null) 'linked_spot_count': linkedSpotCount,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PersonasTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? toneStyle,
    Value<String>? promptText,
    Value<bool>? isDefault,
    Value<int>? linkedSpotCount,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return PersonasTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      toneStyle: toneStyle ?? this.toneStyle,
      promptText: promptText ?? this.promptText,
      isDefault: isDefault ?? this.isDefault,
      linkedSpotCount: linkedSpotCount ?? this.linkedSpotCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (toneStyle.present) {
      map['tone_style'] = Variable<String>(toneStyle.value);
    }
    if (promptText.present) {
      map['prompt_text'] = Variable<String>(promptText.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (linkedSpotCount.present) {
      map['linked_spot_count'] = Variable<int>(linkedSpotCount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonasTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('toneStyle: $toneStyle, ')
          ..write('promptText: $promptText, ')
          ..write('isDefault: $isDefault, ')
          ..write('linkedSpotCount: $linkedSpotCount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SpotsTableTable extends SpotsTable
    with TableInfo<$SpotsTableTable, SpotRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpotsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<double> lat = GeneratedColumn<double>(
    'lat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lngMeta = const VerificationMeta('lng');
  @override
  late final GeneratedColumn<double> lng = GeneratedColumn<double>(
    'lng',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _visitedAtMeta = const VerificationMeta(
    'visitedAt',
  );
  @override
  late final GeneratedColumn<DateTime> visitedAt = GeneratedColumn<DateTime>(
    'visited_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reviewTextMeta = const VerificationMeta(
    'reviewText',
  );
  @override
  late final GeneratedColumn<String> reviewText = GeneratedColumn<String>(
    'review_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _reviewGeneratedMeta = const VerificationMeta(
    'reviewGenerated',
  );
  @override
  late final GeneratedColumn<bool> reviewGenerated = GeneratedColumn<bool>(
    'review_generated',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("review_generated" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _personaIdMeta = const VerificationMeta(
    'personaId',
  );
  @override
  late final GeneratedColumn<String> personaId = GeneratedColumn<String>(
    'persona_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: 'REFERENCES personas_table(id) ON DELETE SET NULL',
  );
  static const VerificationMeta _shareTokenMeta = const VerificationMeta(
    'shareToken',
  );
  @override
  late final GeneratedColumn<String> shareToken = GeneratedColumn<String>(
    'share_token',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _shareExpiresAtMeta = const VerificationMeta(
    'shareExpiresAt',
  );
  @override
  late final GeneratedColumn<DateTime> shareExpiresAt =
      GeneratedColumn<DateTime>(
        'share_expires_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _syncStatusMeta = const VerificationMeta(
    'syncStatus',
  );
  @override
  late final GeneratedColumn<String> syncStatus = GeneratedColumn<String>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('local'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    address,
    lat,
    lng,
    visitedAt,
    reviewText,
    reviewGenerated,
    personaId,
    shareToken,
    shareExpiresAt,
    syncStatus,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'spots_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SpotRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
        _latMeta,
        lat.isAcceptableOrUnknown(data['lat']!, _latMeta),
      );
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
        _lngMeta,
        lng.isAcceptableOrUnknown(data['lng']!, _lngMeta),
      );
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    if (data.containsKey('visited_at')) {
      context.handle(
        _visitedAtMeta,
        visitedAt.isAcceptableOrUnknown(data['visited_at']!, _visitedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_visitedAtMeta);
    }
    if (data.containsKey('review_text')) {
      context.handle(
        _reviewTextMeta,
        reviewText.isAcceptableOrUnknown(data['review_text']!, _reviewTextMeta),
      );
    }
    if (data.containsKey('review_generated')) {
      context.handle(
        _reviewGeneratedMeta,
        reviewGenerated.isAcceptableOrUnknown(
          data['review_generated']!,
          _reviewGeneratedMeta,
        ),
      );
    }
    if (data.containsKey('persona_id')) {
      context.handle(
        _personaIdMeta,
        personaId.isAcceptableOrUnknown(data['persona_id']!, _personaIdMeta),
      );
    }
    if (data.containsKey('share_token')) {
      context.handle(
        _shareTokenMeta,
        shareToken.isAcceptableOrUnknown(data['share_token']!, _shareTokenMeta),
      );
    }
    if (data.containsKey('share_expires_at')) {
      context.handle(
        _shareExpiresAtMeta,
        shareExpiresAt.isAcceptableOrUnknown(
          data['share_expires_at']!,
          _shareExpiresAtMeta,
        ),
      );
    }
    if (data.containsKey('sync_status')) {
      context.handle(
        _syncStatusMeta,
        syncStatus.isAcceptableOrUnknown(data['sync_status']!, _syncStatusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SpotRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpotRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      lat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lat'],
      )!,
      lng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}lng'],
      )!,
      visitedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}visited_at'],
      )!,
      reviewText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}review_text'],
      )!,
      reviewGenerated: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}review_generated'],
      )!,
      personaId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}persona_id'],
      ),
      shareToken: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}share_token'],
      ),
      shareExpiresAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}share_expires_at'],
      ),
      syncStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sync_status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $SpotsTableTable createAlias(String alias) {
    return $SpotsTableTable(attachedDatabase, alias);
  }
}

class SpotRecord extends DataClass implements Insertable<SpotRecord> {
  final String id;
  final String title;
  final String address;
  final double lat;
  final double lng;
  final DateTime visitedAt;
  final String reviewText;
  final bool reviewGenerated;
  final String? personaId;
  final String? shareToken;
  final DateTime? shareExpiresAt;
  final String syncStatus;
  final DateTime createdAt;
  final DateTime updatedAt;
  const SpotRecord({
    required this.id,
    required this.title,
    required this.address,
    required this.lat,
    required this.lng,
    required this.visitedAt,
    required this.reviewText,
    required this.reviewGenerated,
    this.personaId,
    this.shareToken,
    this.shareExpiresAt,
    required this.syncStatus,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['address'] = Variable<String>(address);
    map['lat'] = Variable<double>(lat);
    map['lng'] = Variable<double>(lng);
    map['visited_at'] = Variable<DateTime>(visitedAt);
    map['review_text'] = Variable<String>(reviewText);
    map['review_generated'] = Variable<bool>(reviewGenerated);
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<String>(personaId);
    }
    if (!nullToAbsent || shareToken != null) {
      map['share_token'] = Variable<String>(shareToken);
    }
    if (!nullToAbsent || shareExpiresAt != null) {
      map['share_expires_at'] = Variable<DateTime>(shareExpiresAt);
    }
    map['sync_status'] = Variable<String>(syncStatus);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SpotsTableCompanion toCompanion(bool nullToAbsent) {
    return SpotsTableCompanion(
      id: Value(id),
      title: Value(title),
      address: Value(address),
      lat: Value(lat),
      lng: Value(lng),
      visitedAt: Value(visitedAt),
      reviewText: Value(reviewText),
      reviewGenerated: Value(reviewGenerated),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      shareToken: shareToken == null && nullToAbsent
          ? const Value.absent()
          : Value(shareToken),
      shareExpiresAt: shareExpiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(shareExpiresAt),
      syncStatus: Value(syncStatus),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory SpotRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpotRecord(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      address: serializer.fromJson<String>(json['address']),
      lat: serializer.fromJson<double>(json['lat']),
      lng: serializer.fromJson<double>(json['lng']),
      visitedAt: serializer.fromJson<DateTime>(json['visitedAt']),
      reviewText: serializer.fromJson<String>(json['reviewText']),
      reviewGenerated: serializer.fromJson<bool>(json['reviewGenerated']),
      personaId: serializer.fromJson<String?>(json['personaId']),
      shareToken: serializer.fromJson<String?>(json['shareToken']),
      shareExpiresAt: serializer.fromJson<DateTime?>(json['shareExpiresAt']),
      syncStatus: serializer.fromJson<String>(json['syncStatus']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'address': serializer.toJson<String>(address),
      'lat': serializer.toJson<double>(lat),
      'lng': serializer.toJson<double>(lng),
      'visitedAt': serializer.toJson<DateTime>(visitedAt),
      'reviewText': serializer.toJson<String>(reviewText),
      'reviewGenerated': serializer.toJson<bool>(reviewGenerated),
      'personaId': serializer.toJson<String?>(personaId),
      'shareToken': serializer.toJson<String?>(shareToken),
      'shareExpiresAt': serializer.toJson<DateTime?>(shareExpiresAt),
      'syncStatus': serializer.toJson<String>(syncStatus),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  SpotRecord copyWith({
    String? id,
    String? title,
    String? address,
    double? lat,
    double? lng,
    DateTime? visitedAt,
    String? reviewText,
    bool? reviewGenerated,
    Value<String?> personaId = const Value.absent(),
    Value<String?> shareToken = const Value.absent(),
    Value<DateTime?> shareExpiresAt = const Value.absent(),
    String? syncStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => SpotRecord(
    id: id ?? this.id,
    title: title ?? this.title,
    address: address ?? this.address,
    lat: lat ?? this.lat,
    lng: lng ?? this.lng,
    visitedAt: visitedAt ?? this.visitedAt,
    reviewText: reviewText ?? this.reviewText,
    reviewGenerated: reviewGenerated ?? this.reviewGenerated,
    personaId: personaId.present ? personaId.value : this.personaId,
    shareToken: shareToken.present ? shareToken.value : this.shareToken,
    shareExpiresAt: shareExpiresAt.present
        ? shareExpiresAt.value
        : this.shareExpiresAt,
    syncStatus: syncStatus ?? this.syncStatus,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  SpotRecord copyWithCompanion(SpotsTableCompanion data) {
    return SpotRecord(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      address: data.address.present ? data.address.value : this.address,
      lat: data.lat.present ? data.lat.value : this.lat,
      lng: data.lng.present ? data.lng.value : this.lng,
      visitedAt: data.visitedAt.present ? data.visitedAt.value : this.visitedAt,
      reviewText: data.reviewText.present
          ? data.reviewText.value
          : this.reviewText,
      reviewGenerated: data.reviewGenerated.present
          ? data.reviewGenerated.value
          : this.reviewGenerated,
      personaId: data.personaId.present ? data.personaId.value : this.personaId,
      shareToken: data.shareToken.present
          ? data.shareToken.value
          : this.shareToken,
      shareExpiresAt: data.shareExpiresAt.present
          ? data.shareExpiresAt.value
          : this.shareExpiresAt,
      syncStatus: data.syncStatus.present
          ? data.syncStatus.value
          : this.syncStatus,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpotRecord(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('address: $address, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('visitedAt: $visitedAt, ')
          ..write('reviewText: $reviewText, ')
          ..write('reviewGenerated: $reviewGenerated, ')
          ..write('personaId: $personaId, ')
          ..write('shareToken: $shareToken, ')
          ..write('shareExpiresAt: $shareExpiresAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    address,
    lat,
    lng,
    visitedAt,
    reviewText,
    reviewGenerated,
    personaId,
    shareToken,
    shareExpiresAt,
    syncStatus,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpotRecord &&
          other.id == this.id &&
          other.title == this.title &&
          other.address == this.address &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.visitedAt == this.visitedAt &&
          other.reviewText == this.reviewText &&
          other.reviewGenerated == this.reviewGenerated &&
          other.personaId == this.personaId &&
          other.shareToken == this.shareToken &&
          other.shareExpiresAt == this.shareExpiresAt &&
          other.syncStatus == this.syncStatus &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SpotsTableCompanion extends UpdateCompanion<SpotRecord> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> address;
  final Value<double> lat;
  final Value<double> lng;
  final Value<DateTime> visitedAt;
  final Value<String> reviewText;
  final Value<bool> reviewGenerated;
  final Value<String?> personaId;
  final Value<String?> shareToken;
  final Value<DateTime?> shareExpiresAt;
  final Value<String> syncStatus;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SpotsTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.address = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.visitedAt = const Value.absent(),
    this.reviewText = const Value.absent(),
    this.reviewGenerated = const Value.absent(),
    this.personaId = const Value.absent(),
    this.shareToken = const Value.absent(),
    this.shareExpiresAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpotsTableCompanion.insert({
    required String id,
    required String title,
    required String address,
    required double lat,
    required double lng,
    required DateTime visitedAt,
    this.reviewText = const Value.absent(),
    this.reviewGenerated = const Value.absent(),
    this.personaId = const Value.absent(),
    this.shareToken = const Value.absent(),
    this.shareExpiresAt = const Value.absent(),
    this.syncStatus = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       address = Value(address),
       lat = Value(lat),
       lng = Value(lng),
       visitedAt = Value(visitedAt),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<SpotRecord> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? address,
    Expression<double>? lat,
    Expression<double>? lng,
    Expression<DateTime>? visitedAt,
    Expression<String>? reviewText,
    Expression<bool>? reviewGenerated,
    Expression<String>? personaId,
    Expression<String>? shareToken,
    Expression<DateTime>? shareExpiresAt,
    Expression<String>? syncStatus,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (address != null) 'address': address,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (visitedAt != null) 'visited_at': visitedAt,
      if (reviewText != null) 'review_text': reviewText,
      if (reviewGenerated != null) 'review_generated': reviewGenerated,
      if (personaId != null) 'persona_id': personaId,
      if (shareToken != null) 'share_token': shareToken,
      if (shareExpiresAt != null) 'share_expires_at': shareExpiresAt,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpotsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? address,
    Value<double>? lat,
    Value<double>? lng,
    Value<DateTime>? visitedAt,
    Value<String>? reviewText,
    Value<bool>? reviewGenerated,
    Value<String?>? personaId,
    Value<String?>? shareToken,
    Value<DateTime?>? shareExpiresAt,
    Value<String>? syncStatus,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return SpotsTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      address: address ?? this.address,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      visitedAt: visitedAt ?? this.visitedAt,
      reviewText: reviewText ?? this.reviewText,
      reviewGenerated: reviewGenerated ?? this.reviewGenerated,
      personaId: personaId ?? this.personaId,
      shareToken: shareToken ?? this.shareToken,
      shareExpiresAt: shareExpiresAt ?? this.shareExpiresAt,
      syncStatus: syncStatus ?? this.syncStatus,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<double>(lng.value);
    }
    if (visitedAt.present) {
      map['visited_at'] = Variable<DateTime>(visitedAt.value);
    }
    if (reviewText.present) {
      map['review_text'] = Variable<String>(reviewText.value);
    }
    if (reviewGenerated.present) {
      map['review_generated'] = Variable<bool>(reviewGenerated.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<String>(personaId.value);
    }
    if (shareToken.present) {
      map['share_token'] = Variable<String>(shareToken.value);
    }
    if (shareExpiresAt.present) {
      map['share_expires_at'] = Variable<DateTime>(shareExpiresAt.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<String>(syncStatus.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpotsTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('address: $address, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('visitedAt: $visitedAt, ')
          ..write('reviewText: $reviewText, ')
          ..write('reviewGenerated: $reviewGenerated, ')
          ..write('personaId: $personaId, ')
          ..write('shareToken: $shareToken, ')
          ..write('shareExpiresAt: $shareExpiresAt, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SpotPhotosTableTable extends SpotPhotosTable
    with TableInfo<$SpotPhotosTableTable, SpotPhotoRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpotPhotosTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
    'path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _spotIdMeta = const VerificationMeta('spotId');
  @override
  late final GeneratedColumn<String> spotId = GeneratedColumn<String>(
    'spot_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'REFERENCES spots_table(id) ON DELETE CASCADE',
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<int> size = GeneratedColumn<int>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
    'order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [path, spotId, size, order];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'spot_photos_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SpotPhotoRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('path')) {
      context.handle(
        _pathMeta,
        path.isAcceptableOrUnknown(data['path']!, _pathMeta),
      );
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('spot_id')) {
      context.handle(
        _spotIdMeta,
        spotId.isAcceptableOrUnknown(data['spot_id']!, _spotIdMeta),
      );
    } else if (isInserting) {
      context.missing(_spotIdMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
        _orderMeta,
        order.isAcceptableOrUnknown(data['order']!, _orderMeta),
      );
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {path};
  @override
  SpotPhotoRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpotPhotoRecord(
      path: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}path'],
      )!,
      spotId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}spot_id'],
      )!,
      size: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}size'],
      )!,
      order: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order'],
      )!,
    );
  }

  @override
  $SpotPhotosTableTable createAlias(String alias) {
    return $SpotPhotosTableTable(attachedDatabase, alias);
  }
}

class SpotPhotoRecord extends DataClass implements Insertable<SpotPhotoRecord> {
  final String path;
  final String spotId;
  final int size;
  final int order;
  const SpotPhotoRecord({
    required this.path,
    required this.spotId,
    required this.size,
    required this.order,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['path'] = Variable<String>(path);
    map['spot_id'] = Variable<String>(spotId);
    map['size'] = Variable<int>(size);
    map['order'] = Variable<int>(order);
    return map;
  }

  SpotPhotosTableCompanion toCompanion(bool nullToAbsent) {
    return SpotPhotosTableCompanion(
      path: Value(path),
      spotId: Value(spotId),
      size: Value(size),
      order: Value(order),
    );
  }

  factory SpotPhotoRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpotPhotoRecord(
      path: serializer.fromJson<String>(json['path']),
      spotId: serializer.fromJson<String>(json['spotId']),
      size: serializer.fromJson<int>(json['size']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'path': serializer.toJson<String>(path),
      'spotId': serializer.toJson<String>(spotId),
      'size': serializer.toJson<int>(size),
      'order': serializer.toJson<int>(order),
    };
  }

  SpotPhotoRecord copyWith({
    String? path,
    String? spotId,
    int? size,
    int? order,
  }) => SpotPhotoRecord(
    path: path ?? this.path,
    spotId: spotId ?? this.spotId,
    size: size ?? this.size,
    order: order ?? this.order,
  );
  SpotPhotoRecord copyWithCompanion(SpotPhotosTableCompanion data) {
    return SpotPhotoRecord(
      path: data.path.present ? data.path.value : this.path,
      spotId: data.spotId.present ? data.spotId.value : this.spotId,
      size: data.size.present ? data.size.value : this.size,
      order: data.order.present ? data.order.value : this.order,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpotPhotoRecord(')
          ..write('path: $path, ')
          ..write('spotId: $spotId, ')
          ..write('size: $size, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(path, spotId, size, order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpotPhotoRecord &&
          other.path == this.path &&
          other.spotId == this.spotId &&
          other.size == this.size &&
          other.order == this.order);
}

class SpotPhotosTableCompanion extends UpdateCompanion<SpotPhotoRecord> {
  final Value<String> path;
  final Value<String> spotId;
  final Value<int> size;
  final Value<int> order;
  final Value<int> rowid;
  const SpotPhotosTableCompanion({
    this.path = const Value.absent(),
    this.spotId = const Value.absent(),
    this.size = const Value.absent(),
    this.order = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpotPhotosTableCompanion.insert({
    required String path,
    required String spotId,
    required int size,
    required int order,
    this.rowid = const Value.absent(),
  }) : path = Value(path),
       spotId = Value(spotId),
       size = Value(size),
       order = Value(order);
  static Insertable<SpotPhotoRecord> custom({
    Expression<String>? path,
    Expression<String>? spotId,
    Expression<int>? size,
    Expression<int>? order,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (path != null) 'path': path,
      if (spotId != null) 'spot_id': spotId,
      if (size != null) 'size': size,
      if (order != null) 'order': order,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpotPhotosTableCompanion copyWith({
    Value<String>? path,
    Value<String>? spotId,
    Value<int>? size,
    Value<int>? order,
    Value<int>? rowid,
  }) {
    return SpotPhotosTableCompanion(
      path: path ?? this.path,
      spotId: spotId ?? this.spotId,
      size: size ?? this.size,
      order: order ?? this.order,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (spotId.present) {
      map['spot_id'] = Variable<String>(spotId.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpotPhotosTableCompanion(')
          ..write('path: $path, ')
          ..write('spotId: $spotId, ')
          ..write('size: $size, ')
          ..write('order: $order, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AppSettingsTableTable extends AppSettingsTable
    with TableInfo<$AppSettingsTableTable, AppSettingsRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _languageMeta = const VerificationMeta(
    'language',
  );
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
    'language',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('ja'),
  );
  static const VerificationMeta _mapViewPreferencesMeta =
      const VerificationMeta('mapViewPreferences');
  @override
  late final GeneratedColumn<String> mapViewPreferences =
      GeneratedColumn<String>(
        'map_view_preferences',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('{}'),
      );
  static const VerificationMeta _aiApiKeyMeta = const VerificationMeta(
    'aiApiKey',
  );
  @override
  late final GeneratedColumn<String> aiApiKey = GeneratedColumn<String>(
    'ai_api_key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _mapsApiKeyMeta = const VerificationMeta(
    'mapsApiKey',
  );
  @override
  late final GeneratedColumn<String> mapsApiKey = GeneratedColumn<String>(
    'maps_api_key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _realtimeLocationEnabledMeta =
      const VerificationMeta('realtimeLocationEnabled');
  @override
  late final GeneratedColumn<bool> realtimeLocationEnabled =
      GeneratedColumn<bool>(
        'realtime_location_enabled',
        aliasedName,
        false,
        type: DriftSqlType.bool,
        requiredDuringInsert: false,
        defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("realtime_location_enabled" IN (0, 1))',
        ),
        defaultValue: const Constant(true),
      );
  static const VerificationMeta _onboardingCompletedMeta =
      const VerificationMeta('onboardingCompleted');
  @override
  late final GeneratedColumn<bool> onboardingCompleted = GeneratedColumn<bool>(
    'onboarding_completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("onboarding_completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _analyticsOptInMeta = const VerificationMeta(
    'analyticsOptIn',
  );
  @override
  late final GeneratedColumn<bool> analyticsOptIn = GeneratedColumn<bool>(
    'analytics_opt_in',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("analytics_opt_in" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    language,
    mapViewPreferences,
    aiApiKey,
    mapsApiKey,
    realtimeLocationEnabled,
    onboardingCompleted,
    analyticsOptIn,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AppSettingsRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('language')) {
      context.handle(
        _languageMeta,
        language.isAcceptableOrUnknown(data['language']!, _languageMeta),
      );
    }
    if (data.containsKey('map_view_preferences')) {
      context.handle(
        _mapViewPreferencesMeta,
        mapViewPreferences.isAcceptableOrUnknown(
          data['map_view_preferences']!,
          _mapViewPreferencesMeta,
        ),
      );
    }
    if (data.containsKey('ai_api_key')) {
      context.handle(
        _aiApiKeyMeta,
        aiApiKey.isAcceptableOrUnknown(data['ai_api_key']!, _aiApiKeyMeta),
      );
    }
    if (data.containsKey('maps_api_key')) {
      context.handle(
        _mapsApiKeyMeta,
        mapsApiKey.isAcceptableOrUnknown(
          data['maps_api_key']!,
          _mapsApiKeyMeta,
        ),
      );
    }
    if (data.containsKey('realtime_location_enabled')) {
      context.handle(
        _realtimeLocationEnabledMeta,
        realtimeLocationEnabled.isAcceptableOrUnknown(
          data['realtime_location_enabled']!,
          _realtimeLocationEnabledMeta,
        ),
      );
    }
    if (data.containsKey('onboarding_completed')) {
      context.handle(
        _onboardingCompletedMeta,
        onboardingCompleted.isAcceptableOrUnknown(
          data['onboarding_completed']!,
          _onboardingCompletedMeta,
        ),
      );
    }
    if (data.containsKey('analytics_opt_in')) {
      context.handle(
        _analyticsOptInMeta,
        analyticsOptIn.isAcceptableOrUnknown(
          data['analytics_opt_in']!,
          _analyticsOptInMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppSettingsRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSettingsRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      language: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language'],
      )!,
      mapViewPreferences: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}map_view_preferences'],
      )!,
      aiApiKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ai_api_key'],
      ),
      mapsApiKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}maps_api_key'],
      ),
      realtimeLocationEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}realtime_location_enabled'],
      )!,
      onboardingCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}onboarding_completed'],
      )!,
      analyticsOptIn: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}analytics_opt_in'],
      )!,
    );
  }

  @override
  $AppSettingsTableTable createAlias(String alias) {
    return $AppSettingsTableTable(attachedDatabase, alias);
  }
}

class AppSettingsRecord extends DataClass
    implements Insertable<AppSettingsRecord> {
  final int id;
  final String language;
  final String mapViewPreferences;
  final String? aiApiKey;
  final String? mapsApiKey;
  final bool realtimeLocationEnabled;
  final bool onboardingCompleted;
  final bool analyticsOptIn;
  const AppSettingsRecord({
    required this.id,
    required this.language,
    required this.mapViewPreferences,
    this.aiApiKey,
    this.mapsApiKey,
    required this.realtimeLocationEnabled,
    required this.onboardingCompleted,
    required this.analyticsOptIn,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['language'] = Variable<String>(language);
    map['map_view_preferences'] = Variable<String>(mapViewPreferences);
    if (!nullToAbsent || aiApiKey != null) {
      map['ai_api_key'] = Variable<String>(aiApiKey);
    }
    if (!nullToAbsent || mapsApiKey != null) {
      map['maps_api_key'] = Variable<String>(mapsApiKey);
    }
    map['realtime_location_enabled'] = Variable<bool>(realtimeLocationEnabled);
    map['onboarding_completed'] = Variable<bool>(onboardingCompleted);
    map['analytics_opt_in'] = Variable<bool>(analyticsOptIn);
    return map;
  }

  AppSettingsTableCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsTableCompanion(
      id: Value(id),
      language: Value(language),
      mapViewPreferences: Value(mapViewPreferences),
      aiApiKey: aiApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(aiApiKey),
      mapsApiKey: mapsApiKey == null && nullToAbsent
          ? const Value.absent()
          : Value(mapsApiKey),
      realtimeLocationEnabled: Value(realtimeLocationEnabled),
      onboardingCompleted: Value(onboardingCompleted),
      analyticsOptIn: Value(analyticsOptIn),
    );
  }

  factory AppSettingsRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSettingsRecord(
      id: serializer.fromJson<int>(json['id']),
      language: serializer.fromJson<String>(json['language']),
      mapViewPreferences: serializer.fromJson<String>(
        json['mapViewPreferences'],
      ),
      aiApiKey: serializer.fromJson<String?>(json['aiApiKey']),
      mapsApiKey: serializer.fromJson<String?>(json['mapsApiKey']),
      realtimeLocationEnabled: serializer.fromJson<bool>(
        json['realtimeLocationEnabled'],
      ),
      onboardingCompleted: serializer.fromJson<bool>(
        json['onboardingCompleted'],
      ),
      analyticsOptIn: serializer.fromJson<bool>(json['analyticsOptIn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'language': serializer.toJson<String>(language),
      'mapViewPreferences': serializer.toJson<String>(mapViewPreferences),
      'aiApiKey': serializer.toJson<String?>(aiApiKey),
      'mapsApiKey': serializer.toJson<String?>(mapsApiKey),
      'realtimeLocationEnabled': serializer.toJson<bool>(
        realtimeLocationEnabled,
      ),
      'onboardingCompleted': serializer.toJson<bool>(onboardingCompleted),
      'analyticsOptIn': serializer.toJson<bool>(analyticsOptIn),
    };
  }

  AppSettingsRecord copyWith({
    int? id,
    String? language,
    String? mapViewPreferences,
    Value<String?> aiApiKey = const Value.absent(),
    Value<String?> mapsApiKey = const Value.absent(),
    bool? realtimeLocationEnabled,
    bool? onboardingCompleted,
    bool? analyticsOptIn,
  }) => AppSettingsRecord(
    id: id ?? this.id,
    language: language ?? this.language,
    mapViewPreferences: mapViewPreferences ?? this.mapViewPreferences,
    aiApiKey: aiApiKey.present ? aiApiKey.value : this.aiApiKey,
    mapsApiKey: mapsApiKey.present ? mapsApiKey.value : this.mapsApiKey,
    realtimeLocationEnabled:
        realtimeLocationEnabled ?? this.realtimeLocationEnabled,
    onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
    analyticsOptIn: analyticsOptIn ?? this.analyticsOptIn,
  );
  AppSettingsRecord copyWithCompanion(AppSettingsTableCompanion data) {
    return AppSettingsRecord(
      id: data.id.present ? data.id.value : this.id,
      language: data.language.present ? data.language.value : this.language,
      mapViewPreferences: data.mapViewPreferences.present
          ? data.mapViewPreferences.value
          : this.mapViewPreferences,
      aiApiKey: data.aiApiKey.present ? data.aiApiKey.value : this.aiApiKey,
      mapsApiKey: data.mapsApiKey.present
          ? data.mapsApiKey.value
          : this.mapsApiKey,
      realtimeLocationEnabled: data.realtimeLocationEnabled.present
          ? data.realtimeLocationEnabled.value
          : this.realtimeLocationEnabled,
      onboardingCompleted: data.onboardingCompleted.present
          ? data.onboardingCompleted.value
          : this.onboardingCompleted,
      analyticsOptIn: data.analyticsOptIn.present
          ? data.analyticsOptIn.value
          : this.analyticsOptIn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsRecord(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('mapViewPreferences: $mapViewPreferences, ')
          ..write('aiApiKey: $aiApiKey, ')
          ..write('mapsApiKey: $mapsApiKey, ')
          ..write('realtimeLocationEnabled: $realtimeLocationEnabled, ')
          ..write('onboardingCompleted: $onboardingCompleted, ')
          ..write('analyticsOptIn: $analyticsOptIn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    language,
    mapViewPreferences,
    aiApiKey,
    mapsApiKey,
    realtimeLocationEnabled,
    onboardingCompleted,
    analyticsOptIn,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSettingsRecord &&
          other.id == this.id &&
          other.language == this.language &&
          other.mapViewPreferences == this.mapViewPreferences &&
          other.aiApiKey == this.aiApiKey &&
          other.mapsApiKey == this.mapsApiKey &&
          other.realtimeLocationEnabled == this.realtimeLocationEnabled &&
          other.onboardingCompleted == this.onboardingCompleted &&
          other.analyticsOptIn == this.analyticsOptIn);
}

class AppSettingsTableCompanion extends UpdateCompanion<AppSettingsRecord> {
  final Value<int> id;
  final Value<String> language;
  final Value<String> mapViewPreferences;
  final Value<String?> aiApiKey;
  final Value<String?> mapsApiKey;
  final Value<bool> realtimeLocationEnabled;
  final Value<bool> onboardingCompleted;
  final Value<bool> analyticsOptIn;
  const AppSettingsTableCompanion({
    this.id = const Value.absent(),
    this.language = const Value.absent(),
    this.mapViewPreferences = const Value.absent(),
    this.aiApiKey = const Value.absent(),
    this.mapsApiKey = const Value.absent(),
    this.realtimeLocationEnabled = const Value.absent(),
    this.onboardingCompleted = const Value.absent(),
    this.analyticsOptIn = const Value.absent(),
  });
  AppSettingsTableCompanion.insert({
    this.id = const Value.absent(),
    this.language = const Value.absent(),
    this.mapViewPreferences = const Value.absent(),
    this.aiApiKey = const Value.absent(),
    this.mapsApiKey = const Value.absent(),
    this.realtimeLocationEnabled = const Value.absent(),
    this.onboardingCompleted = const Value.absent(),
    this.analyticsOptIn = const Value.absent(),
  });
  static Insertable<AppSettingsRecord> custom({
    Expression<int>? id,
    Expression<String>? language,
    Expression<String>? mapViewPreferences,
    Expression<String>? aiApiKey,
    Expression<String>? mapsApiKey,
    Expression<bool>? realtimeLocationEnabled,
    Expression<bool>? onboardingCompleted,
    Expression<bool>? analyticsOptIn,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (language != null) 'language': language,
      if (mapViewPreferences != null)
        'map_view_preferences': mapViewPreferences,
      if (aiApiKey != null) 'ai_api_key': aiApiKey,
      if (mapsApiKey != null) 'maps_api_key': mapsApiKey,
      if (realtimeLocationEnabled != null)
        'realtime_location_enabled': realtimeLocationEnabled,
      if (onboardingCompleted != null)
        'onboarding_completed': onboardingCompleted,
      if (analyticsOptIn != null) 'analytics_opt_in': analyticsOptIn,
    });
  }

  AppSettingsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? language,
    Value<String>? mapViewPreferences,
    Value<String?>? aiApiKey,
    Value<String?>? mapsApiKey,
    Value<bool>? realtimeLocationEnabled,
    Value<bool>? onboardingCompleted,
    Value<bool>? analyticsOptIn,
  }) {
    return AppSettingsTableCompanion(
      id: id ?? this.id,
      language: language ?? this.language,
      mapViewPreferences: mapViewPreferences ?? this.mapViewPreferences,
      aiApiKey: aiApiKey ?? this.aiApiKey,
      mapsApiKey: mapsApiKey ?? this.mapsApiKey,
      realtimeLocationEnabled:
          realtimeLocationEnabled ?? this.realtimeLocationEnabled,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      analyticsOptIn: analyticsOptIn ?? this.analyticsOptIn,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (mapViewPreferences.present) {
      map['map_view_preferences'] = Variable<String>(mapViewPreferences.value);
    }
    if (aiApiKey.present) {
      map['ai_api_key'] = Variable<String>(aiApiKey.value);
    }
    if (mapsApiKey.present) {
      map['maps_api_key'] = Variable<String>(mapsApiKey.value);
    }
    if (realtimeLocationEnabled.present) {
      map['realtime_location_enabled'] = Variable<bool>(
        realtimeLocationEnabled.value,
      );
    }
    if (onboardingCompleted.present) {
      map['onboarding_completed'] = Variable<bool>(onboardingCompleted.value);
    }
    if (analyticsOptIn.present) {
      map['analytics_opt_in'] = Variable<bool>(analyticsOptIn.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsTableCompanion(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('mapViewPreferences: $mapViewPreferences, ')
          ..write('aiApiKey: $aiApiKey, ')
          ..write('mapsApiKey: $mapsApiKey, ')
          ..write('realtimeLocationEnabled: $realtimeLocationEnabled, ')
          ..write('onboardingCompleted: $onboardingCompleted, ')
          ..write('analyticsOptIn: $analyticsOptIn')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTableTable extends SyncQueueTable
    with TableInfo<$SyncQueueTableTable, SyncQueueRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  @override
  List<GeneratedColumn> get $columns => [id, payload, createdAt, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncQueueRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $SyncQueueTableTable createAlias(String alias) {
    return $SyncQueueTableTable(attachedDatabase, alias);
  }
}

class SyncQueueRecord extends DataClass implements Insertable<SyncQueueRecord> {
  final String id;
  final String payload;
  final DateTime createdAt;
  final String status;
  const SyncQueueRecord({
    required this.id,
    required this.payload,
    required this.createdAt,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['payload'] = Variable<String>(payload);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['status'] = Variable<String>(status);
    return map;
  }

  SyncQueueTableCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueTableCompanion(
      id: Value(id),
      payload: Value(payload),
      createdAt: Value(createdAt),
      status: Value(status),
    );
  }

  factory SyncQueueRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueRecord(
      id: serializer.fromJson<String>(json['id']),
      payload: serializer.fromJson<String>(json['payload']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'payload': serializer.toJson<String>(payload),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'status': serializer.toJson<String>(status),
    };
  }

  SyncQueueRecord copyWith({
    String? id,
    String? payload,
    DateTime? createdAt,
    String? status,
  }) => SyncQueueRecord(
    id: id ?? this.id,
    payload: payload ?? this.payload,
    createdAt: createdAt ?? this.createdAt,
    status: status ?? this.status,
  );
  SyncQueueRecord copyWithCompanion(SyncQueueTableCompanion data) {
    return SyncQueueRecord(
      id: data.id.present ? data.id.value : this.id,
      payload: data.payload.present ? data.payload.value : this.payload,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueRecord(')
          ..write('id: $id, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, payload, createdAt, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueRecord &&
          other.id == this.id &&
          other.payload == this.payload &&
          other.createdAt == this.createdAt &&
          other.status == this.status);
}

class SyncQueueTableCompanion extends UpdateCompanion<SyncQueueRecord> {
  final Value<String> id;
  final Value<String> payload;
  final Value<DateTime> createdAt;
  final Value<String> status;
  final Value<int> rowid;
  const SyncQueueTableCompanion({
    this.id = const Value.absent(),
    this.payload = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncQueueTableCompanion.insert({
    required String id,
    required String payload,
    required DateTime createdAt,
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       payload = Value(payload),
       createdAt = Value(createdAt);
  static Insertable<SyncQueueRecord> custom({
    Expression<String>? id,
    Expression<String>? payload,
    Expression<DateTime>? createdAt,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (payload != null) 'payload': payload,
      if (createdAt != null) 'created_at': createdAt,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncQueueTableCompanion copyWith({
    Value<String>? id,
    Value<String>? payload,
    Value<DateTime>? createdAt,
    Value<String>? status,
    Value<int>? rowid,
  }) {
    return SyncQueueTableCompanion(
      id: id ?? this.id,
      payload: payload ?? this.payload,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueTableCompanion(')
          ..write('id: $id, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PersonasTableTable personasTable = $PersonasTableTable(this);
  late final $SpotsTableTable spotsTable = $SpotsTableTable(this);
  late final $SpotPhotosTableTable spotPhotosTable = $SpotPhotosTableTable(
    this,
  );
  late final $AppSettingsTableTable appSettingsTable = $AppSettingsTableTable(
    this,
  );
  late final $SyncQueueTableTable syncQueueTable = $SyncQueueTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    personasTable,
    spotsTable,
    spotPhotosTable,
    appSettingsTable,
    syncQueueTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'personas_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('spots_table', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'spots_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('spot_photos_table', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PersonasTableTableCreateCompanionBuilder =
    PersonasTableCompanion Function({
      required String id,
      required String name,
      required String toneStyle,
      required String promptText,
      Value<bool> isDefault,
      Value<int> linkedSpotCount,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$PersonasTableTableUpdateCompanionBuilder =
    PersonasTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> toneStyle,
      Value<String> promptText,
      Value<bool> isDefault,
      Value<int> linkedSpotCount,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$PersonasTableTableReferences
    extends BaseReferences<_$AppDatabase, $PersonasTableTable, PersonaRecord> {
  $$PersonasTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$SpotsTableTable, List<SpotRecord>>
  _spotsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.spotsTable,
    aliasName: $_aliasNameGenerator(
      db.personasTable.id,
      db.spotsTable.personaId,
    ),
  );

  $$SpotsTableTableProcessedTableManager get spotsTableRefs {
    final manager = $$SpotsTableTableTableManager(
      $_db,
      $_db.spotsTable,
    ).filter((f) => f.personaId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_spotsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PersonasTableTableFilterComposer
    extends Composer<_$AppDatabase, $PersonasTableTable> {
  $$PersonasTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get toneStyle => $composableBuilder(
    column: $table.toneStyle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promptText => $composableBuilder(
    column: $table.promptText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get linkedSpotCount => $composableBuilder(
    column: $table.linkedSpotCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> spotsTableRefs(
    Expression<bool> Function($$SpotsTableTableFilterComposer f) f,
  ) {
    final $$SpotsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.spotsTable,
      getReferencedColumn: (t) => t.personaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotsTableTableFilterComposer(
            $db: $db,
            $table: $db.spotsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PersonasTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PersonasTableTable> {
  $$PersonasTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get toneStyle => $composableBuilder(
    column: $table.toneStyle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promptText => $composableBuilder(
    column: $table.promptText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get linkedSpotCount => $composableBuilder(
    column: $table.linkedSpotCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PersonasTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PersonasTableTable> {
  $$PersonasTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get toneStyle =>
      $composableBuilder(column: $table.toneStyle, builder: (column) => column);

  GeneratedColumn<String> get promptText => $composableBuilder(
    column: $table.promptText,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  GeneratedColumn<int> get linkedSpotCount => $composableBuilder(
    column: $table.linkedSpotCount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> spotsTableRefs<T extends Object>(
    Expression<T> Function($$SpotsTableTableAnnotationComposer a) f,
  ) {
    final $$SpotsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.spotsTable,
      getReferencedColumn: (t) => t.personaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.spotsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PersonasTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PersonasTableTable,
          PersonaRecord,
          $$PersonasTableTableFilterComposer,
          $$PersonasTableTableOrderingComposer,
          $$PersonasTableTableAnnotationComposer,
          $$PersonasTableTableCreateCompanionBuilder,
          $$PersonasTableTableUpdateCompanionBuilder,
          (PersonaRecord, $$PersonasTableTableReferences),
          PersonaRecord,
          PrefetchHooks Function({bool spotsTableRefs})
        > {
  $$PersonasTableTableTableManager(_$AppDatabase db, $PersonasTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PersonasTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PersonasTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PersonasTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> toneStyle = const Value.absent(),
                Value<String> promptText = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                Value<int> linkedSpotCount = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PersonasTableCompanion(
                id: id,
                name: name,
                toneStyle: toneStyle,
                promptText: promptText,
                isDefault: isDefault,
                linkedSpotCount: linkedSpotCount,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String toneStyle,
                required String promptText,
                Value<bool> isDefault = const Value.absent(),
                Value<int> linkedSpotCount = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => PersonasTableCompanion.insert(
                id: id,
                name: name,
                toneStyle: toneStyle,
                promptText: promptText,
                isDefault: isDefault,
                linkedSpotCount: linkedSpotCount,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PersonasTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({spotsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (spotsTableRefs) db.spotsTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (spotsTableRefs)
                    await $_getPrefetchedData<
                      PersonaRecord,
                      $PersonasTableTable,
                      SpotRecord
                    >(
                      currentTable: table,
                      referencedTable: $$PersonasTableTableReferences
                          ._spotsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$PersonasTableTableReferences(
                            db,
                            table,
                            p0,
                          ).spotsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.personaId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$PersonasTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PersonasTableTable,
      PersonaRecord,
      $$PersonasTableTableFilterComposer,
      $$PersonasTableTableOrderingComposer,
      $$PersonasTableTableAnnotationComposer,
      $$PersonasTableTableCreateCompanionBuilder,
      $$PersonasTableTableUpdateCompanionBuilder,
      (PersonaRecord, $$PersonasTableTableReferences),
      PersonaRecord,
      PrefetchHooks Function({bool spotsTableRefs})
    >;
typedef $$SpotsTableTableCreateCompanionBuilder =
    SpotsTableCompanion Function({
      required String id,
      required String title,
      required String address,
      required double lat,
      required double lng,
      required DateTime visitedAt,
      Value<String> reviewText,
      Value<bool> reviewGenerated,
      Value<String?> personaId,
      Value<String?> shareToken,
      Value<DateTime?> shareExpiresAt,
      Value<String> syncStatus,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$SpotsTableTableUpdateCompanionBuilder =
    SpotsTableCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> address,
      Value<double> lat,
      Value<double> lng,
      Value<DateTime> visitedAt,
      Value<String> reviewText,
      Value<bool> reviewGenerated,
      Value<String?> personaId,
      Value<String?> shareToken,
      Value<DateTime?> shareExpiresAt,
      Value<String> syncStatus,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$SpotsTableTableReferences
    extends BaseReferences<_$AppDatabase, $SpotsTableTable, SpotRecord> {
  $$SpotsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonasTableTable _personaIdTable(_$AppDatabase db) =>
      db.personasTable.createAlias(
        $_aliasNameGenerator(db.spotsTable.personaId, db.personasTable.id),
      );

  $$PersonasTableTableProcessedTableManager? get personaId {
    final $_column = $_itemColumn<String>('persona_id');
    if ($_column == null) return null;
    final manager = $$PersonasTableTableTableManager(
      $_db,
      $_db.personasTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$SpotPhotosTableTable, List<SpotPhotoRecord>>
  _spotPhotosTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.spotPhotosTable,
    aliasName: $_aliasNameGenerator(
      db.spotsTable.id,
      db.spotPhotosTable.spotId,
    ),
  );

  $$SpotPhotosTableTableProcessedTableManager get spotPhotosTableRefs {
    final manager = $$SpotPhotosTableTableTableManager(
      $_db,
      $_db.spotPhotosTable,
    ).filter((f) => f.spotId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _spotPhotosTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SpotsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SpotsTableTable> {
  $$SpotsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get lng => $composableBuilder(
    column: $table.lng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get visitedAt => $composableBuilder(
    column: $table.visitedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get reviewGenerated => $composableBuilder(
    column: $table.reviewGenerated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shareToken => $composableBuilder(
    column: $table.shareToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get shareExpiresAt => $composableBuilder(
    column: $table.shareExpiresAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PersonasTableTableFilterComposer get personaId {
    final $$PersonasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personaId,
      referencedTable: $db.personasTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonasTableTableFilterComposer(
            $db: $db,
            $table: $db.personasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> spotPhotosTableRefs(
    Expression<bool> Function($$SpotPhotosTableTableFilterComposer f) f,
  ) {
    final $$SpotPhotosTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.spotPhotosTable,
      getReferencedColumn: (t) => t.spotId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotPhotosTableTableFilterComposer(
            $db: $db,
            $table: $db.spotPhotosTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SpotsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SpotsTableTable> {
  $$SpotsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lat => $composableBuilder(
    column: $table.lat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get lng => $composableBuilder(
    column: $table.lng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get visitedAt => $composableBuilder(
    column: $table.visitedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get reviewGenerated => $composableBuilder(
    column: $table.reviewGenerated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shareToken => $composableBuilder(
    column: $table.shareToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get shareExpiresAt => $composableBuilder(
    column: $table.shareExpiresAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PersonasTableTableOrderingComposer get personaId {
    final $$PersonasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personaId,
      referencedTable: $db.personasTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonasTableTableOrderingComposer(
            $db: $db,
            $table: $db.personasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpotsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SpotsTableTable> {
  $$SpotsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<double> get lat =>
      $composableBuilder(column: $table.lat, builder: (column) => column);

  GeneratedColumn<double> get lng =>
      $composableBuilder(column: $table.lng, builder: (column) => column);

  GeneratedColumn<DateTime> get visitedAt =>
      $composableBuilder(column: $table.visitedAt, builder: (column) => column);

  GeneratedColumn<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get reviewGenerated => $composableBuilder(
    column: $table.reviewGenerated,
    builder: (column) => column,
  );

  GeneratedColumn<String> get shareToken => $composableBuilder(
    column: $table.shareToken,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get shareExpiresAt => $composableBuilder(
    column: $table.shareExpiresAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get syncStatus => $composableBuilder(
    column: $table.syncStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$PersonasTableTableAnnotationComposer get personaId {
    final $$PersonasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personaId,
      referencedTable: $db.personasTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.personasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> spotPhotosTableRefs<T extends Object>(
    Expression<T> Function($$SpotPhotosTableTableAnnotationComposer a) f,
  ) {
    final $$SpotPhotosTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.spotPhotosTable,
      getReferencedColumn: (t) => t.spotId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotPhotosTableTableAnnotationComposer(
            $db: $db,
            $table: $db.spotPhotosTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SpotsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SpotsTableTable,
          SpotRecord,
          $$SpotsTableTableFilterComposer,
          $$SpotsTableTableOrderingComposer,
          $$SpotsTableTableAnnotationComposer,
          $$SpotsTableTableCreateCompanionBuilder,
          $$SpotsTableTableUpdateCompanionBuilder,
          (SpotRecord, $$SpotsTableTableReferences),
          SpotRecord,
          PrefetchHooks Function({bool personaId, bool spotPhotosTableRefs})
        > {
  $$SpotsTableTableTableManager(_$AppDatabase db, $SpotsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpotsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SpotsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpotsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> address = const Value.absent(),
                Value<double> lat = const Value.absent(),
                Value<double> lng = const Value.absent(),
                Value<DateTime> visitedAt = const Value.absent(),
                Value<String> reviewText = const Value.absent(),
                Value<bool> reviewGenerated = const Value.absent(),
                Value<String?> personaId = const Value.absent(),
                Value<String?> shareToken = const Value.absent(),
                Value<DateTime?> shareExpiresAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SpotsTableCompanion(
                id: id,
                title: title,
                address: address,
                lat: lat,
                lng: lng,
                visitedAt: visitedAt,
                reviewText: reviewText,
                reviewGenerated: reviewGenerated,
                personaId: personaId,
                shareToken: shareToken,
                shareExpiresAt: shareExpiresAt,
                syncStatus: syncStatus,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String address,
                required double lat,
                required double lng,
                required DateTime visitedAt,
                Value<String> reviewText = const Value.absent(),
                Value<bool> reviewGenerated = const Value.absent(),
                Value<String?> personaId = const Value.absent(),
                Value<String?> shareToken = const Value.absent(),
                Value<DateTime?> shareExpiresAt = const Value.absent(),
                Value<String> syncStatus = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => SpotsTableCompanion.insert(
                id: id,
                title: title,
                address: address,
                lat: lat,
                lng: lng,
                visitedAt: visitedAt,
                reviewText: reviewText,
                reviewGenerated: reviewGenerated,
                personaId: personaId,
                shareToken: shareToken,
                shareExpiresAt: shareExpiresAt,
                syncStatus: syncStatus,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SpotsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({personaId = false, spotPhotosTableRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (spotPhotosTableRefs) db.spotPhotosTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (personaId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.personaId,
                                    referencedTable: $$SpotsTableTableReferences
                                        ._personaIdTable(db),
                                    referencedColumn:
                                        $$SpotsTableTableReferences
                                            ._personaIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (spotPhotosTableRefs)
                        await $_getPrefetchedData<
                          SpotRecord,
                          $SpotsTableTable,
                          SpotPhotoRecord
                        >(
                          currentTable: table,
                          referencedTable: $$SpotsTableTableReferences
                              ._spotPhotosTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SpotsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).spotPhotosTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.spotId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SpotsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SpotsTableTable,
      SpotRecord,
      $$SpotsTableTableFilterComposer,
      $$SpotsTableTableOrderingComposer,
      $$SpotsTableTableAnnotationComposer,
      $$SpotsTableTableCreateCompanionBuilder,
      $$SpotsTableTableUpdateCompanionBuilder,
      (SpotRecord, $$SpotsTableTableReferences),
      SpotRecord,
      PrefetchHooks Function({bool personaId, bool spotPhotosTableRefs})
    >;
typedef $$SpotPhotosTableTableCreateCompanionBuilder =
    SpotPhotosTableCompanion Function({
      required String path,
      required String spotId,
      required int size,
      required int order,
      Value<int> rowid,
    });
typedef $$SpotPhotosTableTableUpdateCompanionBuilder =
    SpotPhotosTableCompanion Function({
      Value<String> path,
      Value<String> spotId,
      Value<int> size,
      Value<int> order,
      Value<int> rowid,
    });

final class $$SpotPhotosTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $SpotPhotosTableTable, SpotPhotoRecord> {
  $$SpotPhotosTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SpotsTableTable _spotIdTable(_$AppDatabase db) =>
      db.spotsTable.createAlias(
        $_aliasNameGenerator(db.spotPhotosTable.spotId, db.spotsTable.id),
      );

  $$SpotsTableTableProcessedTableManager get spotId {
    final $_column = $_itemColumn<String>('spot_id')!;

    final manager = $$SpotsTableTableTableManager(
      $_db,
      $_db.spotsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_spotIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SpotPhotosTableTableFilterComposer
    extends Composer<_$AppDatabase, $SpotPhotosTableTable> {
  $$SpotPhotosTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get path => $composableBuilder(
    column: $table.path,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnFilters(column),
  );

  $$SpotsTableTableFilterComposer get spotId {
    final $$SpotsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.spotId,
      referencedTable: $db.spotsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotsTableTableFilterComposer(
            $db: $db,
            $table: $db.spotsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpotPhotosTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SpotPhotosTableTable> {
  $$SpotPhotosTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get path => $composableBuilder(
    column: $table.path,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnOrderings(column),
  );

  $$SpotsTableTableOrderingComposer get spotId {
    final $$SpotsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.spotId,
      referencedTable: $db.spotsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotsTableTableOrderingComposer(
            $db: $db,
            $table: $db.spotsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpotPhotosTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SpotPhotosTableTable> {
  $$SpotPhotosTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumn<int> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  $$SpotsTableTableAnnotationComposer get spotId {
    final $$SpotsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.spotId,
      referencedTable: $db.spotsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpotsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.spotsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpotPhotosTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SpotPhotosTableTable,
          SpotPhotoRecord,
          $$SpotPhotosTableTableFilterComposer,
          $$SpotPhotosTableTableOrderingComposer,
          $$SpotPhotosTableTableAnnotationComposer,
          $$SpotPhotosTableTableCreateCompanionBuilder,
          $$SpotPhotosTableTableUpdateCompanionBuilder,
          (SpotPhotoRecord, $$SpotPhotosTableTableReferences),
          SpotPhotoRecord,
          PrefetchHooks Function({bool spotId})
        > {
  $$SpotPhotosTableTableTableManager(
    _$AppDatabase db,
    $SpotPhotosTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpotPhotosTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SpotPhotosTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpotPhotosTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> path = const Value.absent(),
                Value<String> spotId = const Value.absent(),
                Value<int> size = const Value.absent(),
                Value<int> order = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SpotPhotosTableCompanion(
                path: path,
                spotId: spotId,
                size: size,
                order: order,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String path,
                required String spotId,
                required int size,
                required int order,
                Value<int> rowid = const Value.absent(),
              }) => SpotPhotosTableCompanion.insert(
                path: path,
                spotId: spotId,
                size: size,
                order: order,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SpotPhotosTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({spotId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (spotId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.spotId,
                                referencedTable:
                                    $$SpotPhotosTableTableReferences
                                        ._spotIdTable(db),
                                referencedColumn:
                                    $$SpotPhotosTableTableReferences
                                        ._spotIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SpotPhotosTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SpotPhotosTableTable,
      SpotPhotoRecord,
      $$SpotPhotosTableTableFilterComposer,
      $$SpotPhotosTableTableOrderingComposer,
      $$SpotPhotosTableTableAnnotationComposer,
      $$SpotPhotosTableTableCreateCompanionBuilder,
      $$SpotPhotosTableTableUpdateCompanionBuilder,
      (SpotPhotoRecord, $$SpotPhotosTableTableReferences),
      SpotPhotoRecord,
      PrefetchHooks Function({bool spotId})
    >;
typedef $$AppSettingsTableTableCreateCompanionBuilder =
    AppSettingsTableCompanion Function({
      Value<int> id,
      Value<String> language,
      Value<String> mapViewPreferences,
      Value<String?> aiApiKey,
      Value<String?> mapsApiKey,
      Value<bool> realtimeLocationEnabled,
      Value<bool> onboardingCompleted,
      Value<bool> analyticsOptIn,
    });
typedef $$AppSettingsTableTableUpdateCompanionBuilder =
    AppSettingsTableCompanion Function({
      Value<int> id,
      Value<String> language,
      Value<String> mapViewPreferences,
      Value<String?> aiApiKey,
      Value<String?> mapsApiKey,
      Value<bool> realtimeLocationEnabled,
      Value<bool> onboardingCompleted,
      Value<bool> analyticsOptIn,
    });

class $$AppSettingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mapViewPreferences => $composableBuilder(
    column: $table.mapViewPreferences,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get aiApiKey => $composableBuilder(
    column: $table.aiApiKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mapsApiKey => $composableBuilder(
    column: $table.mapsApiKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get realtimeLocationEnabled => $composableBuilder(
    column: $table.realtimeLocationEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get analyticsOptIn => $composableBuilder(
    column: $table.analyticsOptIn,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppSettingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mapViewPreferences => $composableBuilder(
    column: $table.mapViewPreferences,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get aiApiKey => $composableBuilder(
    column: $table.aiApiKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mapsApiKey => $composableBuilder(
    column: $table.mapsApiKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get realtimeLocationEnabled => $composableBuilder(
    column: $table.realtimeLocationEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get analyticsOptIn => $composableBuilder(
    column: $table.analyticsOptIn,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppSettingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<String> get mapViewPreferences => $composableBuilder(
    column: $table.mapViewPreferences,
    builder: (column) => column,
  );

  GeneratedColumn<String> get aiApiKey =>
      $composableBuilder(column: $table.aiApiKey, builder: (column) => column);

  GeneratedColumn<String> get mapsApiKey => $composableBuilder(
    column: $table.mapsApiKey,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get realtimeLocationEnabled => $composableBuilder(
    column: $table.realtimeLocationEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get analyticsOptIn => $composableBuilder(
    column: $table.analyticsOptIn,
    builder: (column) => column,
  );
}

class $$AppSettingsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AppSettingsTableTable,
          AppSettingsRecord,
          $$AppSettingsTableTableFilterComposer,
          $$AppSettingsTableTableOrderingComposer,
          $$AppSettingsTableTableAnnotationComposer,
          $$AppSettingsTableTableCreateCompanionBuilder,
          $$AppSettingsTableTableUpdateCompanionBuilder,
          (
            AppSettingsRecord,
            BaseReferences<
              _$AppDatabase,
              $AppSettingsTableTable,
              AppSettingsRecord
            >,
          ),
          AppSettingsRecord,
          PrefetchHooks Function()
        > {
  $$AppSettingsTableTableTableManager(
    _$AppDatabase db,
    $AppSettingsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> language = const Value.absent(),
                Value<String> mapViewPreferences = const Value.absent(),
                Value<String?> aiApiKey = const Value.absent(),
                Value<String?> mapsApiKey = const Value.absent(),
                Value<bool> realtimeLocationEnabled = const Value.absent(),
                Value<bool> onboardingCompleted = const Value.absent(),
                Value<bool> analyticsOptIn = const Value.absent(),
              }) => AppSettingsTableCompanion(
                id: id,
                language: language,
                mapViewPreferences: mapViewPreferences,
                aiApiKey: aiApiKey,
                mapsApiKey: mapsApiKey,
                realtimeLocationEnabled: realtimeLocationEnabled,
                onboardingCompleted: onboardingCompleted,
                analyticsOptIn: analyticsOptIn,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> language = const Value.absent(),
                Value<String> mapViewPreferences = const Value.absent(),
                Value<String?> aiApiKey = const Value.absent(),
                Value<String?> mapsApiKey = const Value.absent(),
                Value<bool> realtimeLocationEnabled = const Value.absent(),
                Value<bool> onboardingCompleted = const Value.absent(),
                Value<bool> analyticsOptIn = const Value.absent(),
              }) => AppSettingsTableCompanion.insert(
                id: id,
                language: language,
                mapViewPreferences: mapViewPreferences,
                aiApiKey: aiApiKey,
                mapsApiKey: mapsApiKey,
                realtimeLocationEnabled: realtimeLocationEnabled,
                onboardingCompleted: onboardingCompleted,
                analyticsOptIn: analyticsOptIn,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppSettingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AppSettingsTableTable,
      AppSettingsRecord,
      $$AppSettingsTableTableFilterComposer,
      $$AppSettingsTableTableOrderingComposer,
      $$AppSettingsTableTableAnnotationComposer,
      $$AppSettingsTableTableCreateCompanionBuilder,
      $$AppSettingsTableTableUpdateCompanionBuilder,
      (
        AppSettingsRecord,
        BaseReferences<
          _$AppDatabase,
          $AppSettingsTableTable,
          AppSettingsRecord
        >,
      ),
      AppSettingsRecord,
      PrefetchHooks Function()
    >;
typedef $$SyncQueueTableTableCreateCompanionBuilder =
    SyncQueueTableCompanion Function({
      required String id,
      required String payload,
      required DateTime createdAt,
      Value<String> status,
      Value<int> rowid,
    });
typedef $$SyncQueueTableTableUpdateCompanionBuilder =
    SyncQueueTableCompanion Function({
      Value<String> id,
      Value<String> payload,
      Value<DateTime> createdAt,
      Value<String> status,
      Value<int> rowid,
    });

class $$SyncQueueTableTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncQueueTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncQueueTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTableTable> {
  $$SyncQueueTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$SyncQueueTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncQueueTableTable,
          SyncQueueRecord,
          $$SyncQueueTableTableFilterComposer,
          $$SyncQueueTableTableOrderingComposer,
          $$SyncQueueTableTableAnnotationComposer,
          $$SyncQueueTableTableCreateCompanionBuilder,
          $$SyncQueueTableTableUpdateCompanionBuilder,
          (
            SyncQueueRecord,
            BaseReferences<
              _$AppDatabase,
              $SyncQueueTableTable,
              SyncQueueRecord
            >,
          ),
          SyncQueueRecord,
          PrefetchHooks Function()
        > {
  $$SyncQueueTableTableTableManager(
    _$AppDatabase db,
    $SyncQueueTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncQueueTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncQueueTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncQueueTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncQueueTableCompanion(
                id: id,
                payload: payload,
                createdAt: createdAt,
                status: status,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String payload,
                required DateTime createdAt,
                Value<String> status = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncQueueTableCompanion.insert(
                id: id,
                payload: payload,
                createdAt: createdAt,
                status: status,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncQueueTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncQueueTableTable,
      SyncQueueRecord,
      $$SyncQueueTableTableFilterComposer,
      $$SyncQueueTableTableOrderingComposer,
      $$SyncQueueTableTableAnnotationComposer,
      $$SyncQueueTableTableCreateCompanionBuilder,
      $$SyncQueueTableTableUpdateCompanionBuilder,
      (
        SyncQueueRecord,
        BaseReferences<_$AppDatabase, $SyncQueueTableTable, SyncQueueRecord>,
      ),
      SyncQueueRecord,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PersonasTableTableTableManager get personasTable =>
      $$PersonasTableTableTableManager(_db, _db.personasTable);
  $$SpotsTableTableTableManager get spotsTable =>
      $$SpotsTableTableTableManager(_db, _db.spotsTable);
  $$SpotPhotosTableTableTableManager get spotPhotosTable =>
      $$SpotPhotosTableTableTableManager(_db, _db.spotPhotosTable);
  $$AppSettingsTableTableTableManager get appSettingsTable =>
      $$AppSettingsTableTableTableManager(_db, _db.appSettingsTable);
  $$SyncQueueTableTableTableManager get syncQueueTable =>
      $$SyncQueueTableTableTableManager(_db, _db.syncQueueTable);
}
