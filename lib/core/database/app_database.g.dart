// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $StopwatchSessionsTable extends StopwatchSessions
    with TableInfo<$StopwatchSessionsTable, StopwatchSessionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StopwatchSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<StopwatchStatus, int> status =
      GeneratedColumn<int>(
        'status',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<StopwatchStatus>(
        $StopwatchSessionsTable.$converterstatus,
      );
  static const VerificationMeta _startedAtEpochMsMeta = const VerificationMeta(
    'startedAtEpochMs',
  );
  @override
  late final GeneratedColumn<int> startedAtEpochMs = GeneratedColumn<int>(
    'started_at_epoch_ms',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accumulatedMsMeta = const VerificationMeta(
    'accumulatedMs',
  );
  @override
  late final GeneratedColumn<int> accumulatedMs = GeneratedColumn<int>(
    'accumulated_ms',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    status,
    startedAtEpochMs,
    accumulatedMs,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stopwatch_sessions';
  @override
  VerificationContext validateIntegrity(
    Insertable<StopwatchSessionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('started_at_epoch_ms')) {
      context.handle(
        _startedAtEpochMsMeta,
        startedAtEpochMs.isAcceptableOrUnknown(
          data['started_at_epoch_ms']!,
          _startedAtEpochMsMeta,
        ),
      );
    }
    if (data.containsKey('accumulated_ms')) {
      context.handle(
        _accumulatedMsMeta,
        accumulatedMs.isAcceptableOrUnknown(
          data['accumulated_ms']!,
          _accumulatedMsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_accumulatedMsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StopwatchSessionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StopwatchSessionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      status: $StopwatchSessionsTable.$converterstatus.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}status'],
        )!,
      ),
      startedAtEpochMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}started_at_epoch_ms'],
      ),
      accumulatedMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}accumulated_ms'],
      )!,
    );
  }

  @override
  $StopwatchSessionsTable createAlias(String alias) {
    return $StopwatchSessionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<StopwatchStatus, int, int> $converterstatus =
      const EnumIndexConverter<StopwatchStatus>(StopwatchStatus.values);
}

class StopwatchSessionRow extends DataClass
    implements Insertable<StopwatchSessionRow> {
  final int id;
  final StopwatchStatus status;
  final int? startedAtEpochMs;
  final int accumulatedMs;
  const StopwatchSessionRow({
    required this.id,
    required this.status,
    this.startedAtEpochMs,
    required this.accumulatedMs,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      map['status'] = Variable<int>(
        $StopwatchSessionsTable.$converterstatus.toSql(status),
      );
    }
    if (!nullToAbsent || startedAtEpochMs != null) {
      map['started_at_epoch_ms'] = Variable<int>(startedAtEpochMs);
    }
    map['accumulated_ms'] = Variable<int>(accumulatedMs);
    return map;
  }

  StopwatchSessionsCompanion toCompanion(bool nullToAbsent) {
    return StopwatchSessionsCompanion(
      id: Value(id),
      status: Value(status),
      startedAtEpochMs: startedAtEpochMs == null && nullToAbsent
          ? const Value.absent()
          : Value(startedAtEpochMs),
      accumulatedMs: Value(accumulatedMs),
    );
  }

  factory StopwatchSessionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StopwatchSessionRow(
      id: serializer.fromJson<int>(json['id']),
      status: $StopwatchSessionsTable.$converterstatus.fromJson(
        serializer.fromJson<int>(json['status']),
      ),
      startedAtEpochMs: serializer.fromJson<int?>(json['startedAtEpochMs']),
      accumulatedMs: serializer.fromJson<int>(json['accumulatedMs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'status': serializer.toJson<int>(
        $StopwatchSessionsTable.$converterstatus.toJson(status),
      ),
      'startedAtEpochMs': serializer.toJson<int?>(startedAtEpochMs),
      'accumulatedMs': serializer.toJson<int>(accumulatedMs),
    };
  }

  StopwatchSessionRow copyWith({
    int? id,
    StopwatchStatus? status,
    Value<int?> startedAtEpochMs = const Value.absent(),
    int? accumulatedMs,
  }) => StopwatchSessionRow(
    id: id ?? this.id,
    status: status ?? this.status,
    startedAtEpochMs: startedAtEpochMs.present
        ? startedAtEpochMs.value
        : this.startedAtEpochMs,
    accumulatedMs: accumulatedMs ?? this.accumulatedMs,
  );
  StopwatchSessionRow copyWithCompanion(StopwatchSessionsCompanion data) {
    return StopwatchSessionRow(
      id: data.id.present ? data.id.value : this.id,
      status: data.status.present ? data.status.value : this.status,
      startedAtEpochMs: data.startedAtEpochMs.present
          ? data.startedAtEpochMs.value
          : this.startedAtEpochMs,
      accumulatedMs: data.accumulatedMs.present
          ? data.accumulatedMs.value
          : this.accumulatedMs,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StopwatchSessionRow(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('startedAtEpochMs: $startedAtEpochMs, ')
          ..write('accumulatedMs: $accumulatedMs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, status, startedAtEpochMs, accumulatedMs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StopwatchSessionRow &&
          other.id == this.id &&
          other.status == this.status &&
          other.startedAtEpochMs == this.startedAtEpochMs &&
          other.accumulatedMs == this.accumulatedMs);
}

class StopwatchSessionsCompanion extends UpdateCompanion<StopwatchSessionRow> {
  final Value<int> id;
  final Value<StopwatchStatus> status;
  final Value<int?> startedAtEpochMs;
  final Value<int> accumulatedMs;
  const StopwatchSessionsCompanion({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.startedAtEpochMs = const Value.absent(),
    this.accumulatedMs = const Value.absent(),
  });
  StopwatchSessionsCompanion.insert({
    this.id = const Value.absent(),
    required StopwatchStatus status,
    this.startedAtEpochMs = const Value.absent(),
    required int accumulatedMs,
  }) : status = Value(status),
       accumulatedMs = Value(accumulatedMs);
  static Insertable<StopwatchSessionRow> custom({
    Expression<int>? id,
    Expression<int>? status,
    Expression<int>? startedAtEpochMs,
    Expression<int>? accumulatedMs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (status != null) 'status': status,
      if (startedAtEpochMs != null) 'started_at_epoch_ms': startedAtEpochMs,
      if (accumulatedMs != null) 'accumulated_ms': accumulatedMs,
    });
  }

  StopwatchSessionsCompanion copyWith({
    Value<int>? id,
    Value<StopwatchStatus>? status,
    Value<int?>? startedAtEpochMs,
    Value<int>? accumulatedMs,
  }) {
    return StopwatchSessionsCompanion(
      id: id ?? this.id,
      status: status ?? this.status,
      startedAtEpochMs: startedAtEpochMs ?? this.startedAtEpochMs,
      accumulatedMs: accumulatedMs ?? this.accumulatedMs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(
        $StopwatchSessionsTable.$converterstatus.toSql(status.value),
      );
    }
    if (startedAtEpochMs.present) {
      map['started_at_epoch_ms'] = Variable<int>(startedAtEpochMs.value);
    }
    if (accumulatedMs.present) {
      map['accumulated_ms'] = Variable<int>(accumulatedMs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StopwatchSessionsCompanion(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('startedAtEpochMs: $startedAtEpochMs, ')
          ..write('accumulatedMs: $accumulatedMs')
          ..write(')'))
        .toString();
  }
}

class $LapsTable extends Laps with TableInfo<$LapsTable, LapRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LapsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _lapIndexMeta = const VerificationMeta(
    'lapIndex',
  );
  @override
  late final GeneratedColumn<int> lapIndex = GeneratedColumn<int>(
    'lap_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lapMsMeta = const VerificationMeta('lapMs');
  @override
  late final GeneratedColumn<int> lapMs = GeneratedColumn<int>(
    'lap_ms',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMsMeta = const VerificationMeta(
    'totalMs',
  );
  @override
  late final GeneratedColumn<int> totalMs = GeneratedColumn<int>(
    'total_ms',
    aliasedName,
    false,
    type: DriftSqlType.int,
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
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    lapIndex,
    lapMs,
    totalMs,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'laps';
  @override
  VerificationContext validateIntegrity(
    Insertable<LapRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lap_index')) {
      context.handle(
        _lapIndexMeta,
        lapIndex.isAcceptableOrUnknown(data['lap_index']!, _lapIndexMeta),
      );
    } else if (isInserting) {
      context.missing(_lapIndexMeta);
    }
    if (data.containsKey('lap_ms')) {
      context.handle(
        _lapMsMeta,
        lapMs.isAcceptableOrUnknown(data['lap_ms']!, _lapMsMeta),
      );
    } else if (isInserting) {
      context.missing(_lapMsMeta);
    }
    if (data.containsKey('total_ms')) {
      context.handle(
        _totalMsMeta,
        totalMs.isAcceptableOrUnknown(data['total_ms']!, _totalMsMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMsMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LapRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LapRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      lapIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lap_index'],
      )!,
      lapMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lap_ms'],
      )!,
      totalMs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_ms'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $LapsTable createAlias(String alias) {
    return $LapsTable(attachedDatabase, alias);
  }
}

class LapRow extends DataClass implements Insertable<LapRow> {
  final int id;
  final int lapIndex;
  final int lapMs;
  final int totalMs;
  final DateTime createdAt;
  const LapRow({
    required this.id,
    required this.lapIndex,
    required this.lapMs,
    required this.totalMs,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lap_index'] = Variable<int>(lapIndex);
    map['lap_ms'] = Variable<int>(lapMs);
    map['total_ms'] = Variable<int>(totalMs);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LapsCompanion toCompanion(bool nullToAbsent) {
    return LapsCompanion(
      id: Value(id),
      lapIndex: Value(lapIndex),
      lapMs: Value(lapMs),
      totalMs: Value(totalMs),
      createdAt: Value(createdAt),
    );
  }

  factory LapRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LapRow(
      id: serializer.fromJson<int>(json['id']),
      lapIndex: serializer.fromJson<int>(json['lapIndex']),
      lapMs: serializer.fromJson<int>(json['lapMs']),
      totalMs: serializer.fromJson<int>(json['totalMs']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lapIndex': serializer.toJson<int>(lapIndex),
      'lapMs': serializer.toJson<int>(lapMs),
      'totalMs': serializer.toJson<int>(totalMs),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LapRow copyWith({
    int? id,
    int? lapIndex,
    int? lapMs,
    int? totalMs,
    DateTime? createdAt,
  }) => LapRow(
    id: id ?? this.id,
    lapIndex: lapIndex ?? this.lapIndex,
    lapMs: lapMs ?? this.lapMs,
    totalMs: totalMs ?? this.totalMs,
    createdAt: createdAt ?? this.createdAt,
  );
  LapRow copyWithCompanion(LapsCompanion data) {
    return LapRow(
      id: data.id.present ? data.id.value : this.id,
      lapIndex: data.lapIndex.present ? data.lapIndex.value : this.lapIndex,
      lapMs: data.lapMs.present ? data.lapMs.value : this.lapMs,
      totalMs: data.totalMs.present ? data.totalMs.value : this.totalMs,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LapRow(')
          ..write('id: $id, ')
          ..write('lapIndex: $lapIndex, ')
          ..write('lapMs: $lapMs, ')
          ..write('totalMs: $totalMs, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lapIndex, lapMs, totalMs, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LapRow &&
          other.id == this.id &&
          other.lapIndex == this.lapIndex &&
          other.lapMs == this.lapMs &&
          other.totalMs == this.totalMs &&
          other.createdAt == this.createdAt);
}

class LapsCompanion extends UpdateCompanion<LapRow> {
  final Value<int> id;
  final Value<int> lapIndex;
  final Value<int> lapMs;
  final Value<int> totalMs;
  final Value<DateTime> createdAt;
  const LapsCompanion({
    this.id = const Value.absent(),
    this.lapIndex = const Value.absent(),
    this.lapMs = const Value.absent(),
    this.totalMs = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LapsCompanion.insert({
    this.id = const Value.absent(),
    required int lapIndex,
    required int lapMs,
    required int totalMs,
    this.createdAt = const Value.absent(),
  }) : lapIndex = Value(lapIndex),
       lapMs = Value(lapMs),
       totalMs = Value(totalMs);
  static Insertable<LapRow> custom({
    Expression<int>? id,
    Expression<int>? lapIndex,
    Expression<int>? lapMs,
    Expression<int>? totalMs,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lapIndex != null) 'lap_index': lapIndex,
      if (lapMs != null) 'lap_ms': lapMs,
      if (totalMs != null) 'total_ms': totalMs,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  LapsCompanion copyWith({
    Value<int>? id,
    Value<int>? lapIndex,
    Value<int>? lapMs,
    Value<int>? totalMs,
    Value<DateTime>? createdAt,
  }) {
    return LapsCompanion(
      id: id ?? this.id,
      lapIndex: lapIndex ?? this.lapIndex,
      lapMs: lapMs ?? this.lapMs,
      totalMs: totalMs ?? this.totalMs,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lapIndex.present) {
      map['lap_index'] = Variable<int>(lapIndex.value);
    }
    if (lapMs.present) {
      map['lap_ms'] = Variable<int>(lapMs.value);
    }
    if (totalMs.present) {
      map['total_ms'] = Variable<int>(totalMs.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LapsCompanion(')
          ..write('id: $id, ')
          ..write('lapIndex: $lapIndex, ')
          ..write('lapMs: $lapMs, ')
          ..write('totalMs: $totalMs, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AppSettingsEntriesTable extends AppSettingsEntries
    with TableInfo<$AppSettingsEntriesTable, SettingEntryRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingEntryRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingEntryRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntryRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $AppSettingsEntriesTable createAlias(String alias) {
    return $AppSettingsEntriesTable(attachedDatabase, alias);
  }
}

class SettingEntryRow extends DataClass implements Insertable<SettingEntryRow> {
  final String key;
  final String value;
  const SettingEntryRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  AppSettingsEntriesCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsEntriesCompanion(key: Value(key), value: Value(value));
  }

  factory SettingEntryRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntryRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingEntryRow copyWith({String? key, String? value}) =>
      SettingEntryRow(key: key ?? this.key, value: value ?? this.value);
  SettingEntryRow copyWithCompanion(AppSettingsEntriesCompanion data) {
    return SettingEntryRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntryRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntryRow &&
          other.key == this.key &&
          other.value == this.value);
}

class AppSettingsEntriesCompanion extends UpdateCompanion<SettingEntryRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const AppSettingsEntriesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppSettingsEntriesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SettingEntryRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppSettingsEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return AppSettingsEntriesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsEntriesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $StopwatchSessionsTable stopwatchSessions =
      $StopwatchSessionsTable(this);
  late final $LapsTable laps = $LapsTable(this);
  late final $AppSettingsEntriesTable appSettingsEntries =
      $AppSettingsEntriesTable(this);
  late final Index lapsLapIndex = Index(
    'laps_lap_index',
    'CREATE INDEX laps_lap_index ON laps (lap_index)',
  );
  late final StopwatchDao stopwatchDao = StopwatchDao(this as AppDatabase);
  late final SettingsDao settingsDao = SettingsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    stopwatchSessions,
    laps,
    appSettingsEntries,
    lapsLapIndex,
  ];
}

typedef $$StopwatchSessionsTableCreateCompanionBuilder =
    StopwatchSessionsCompanion Function({
      Value<int> id,
      required StopwatchStatus status,
      Value<int?> startedAtEpochMs,
      required int accumulatedMs,
    });
typedef $$StopwatchSessionsTableUpdateCompanionBuilder =
    StopwatchSessionsCompanion Function({
      Value<int> id,
      Value<StopwatchStatus> status,
      Value<int?> startedAtEpochMs,
      Value<int> accumulatedMs,
    });

class $$StopwatchSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $StopwatchSessionsTable> {
  $$StopwatchSessionsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<StopwatchStatus, StopwatchStatus, int>
  get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<int> get startedAtEpochMs => $composableBuilder(
    column: $table.startedAtEpochMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get accumulatedMs => $composableBuilder(
    column: $table.accumulatedMs,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StopwatchSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $StopwatchSessionsTable> {
  $$StopwatchSessionsTableOrderingComposer({
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

  ColumnOrderings<int> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get startedAtEpochMs => $composableBuilder(
    column: $table.startedAtEpochMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get accumulatedMs => $composableBuilder(
    column: $table.accumulatedMs,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StopwatchSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StopwatchSessionsTable> {
  $$StopwatchSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<StopwatchStatus, int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get startedAtEpochMs => $composableBuilder(
    column: $table.startedAtEpochMs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get accumulatedMs => $composableBuilder(
    column: $table.accumulatedMs,
    builder: (column) => column,
  );
}

class $$StopwatchSessionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StopwatchSessionsTable,
          StopwatchSessionRow,
          $$StopwatchSessionsTableFilterComposer,
          $$StopwatchSessionsTableOrderingComposer,
          $$StopwatchSessionsTableAnnotationComposer,
          $$StopwatchSessionsTableCreateCompanionBuilder,
          $$StopwatchSessionsTableUpdateCompanionBuilder,
          (
            StopwatchSessionRow,
            BaseReferences<
              _$AppDatabase,
              $StopwatchSessionsTable,
              StopwatchSessionRow
            >,
          ),
          StopwatchSessionRow,
          PrefetchHooks Function()
        > {
  $$StopwatchSessionsTableTableManager(
    _$AppDatabase db,
    $StopwatchSessionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StopwatchSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StopwatchSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StopwatchSessionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<StopwatchStatus> status = const Value.absent(),
                Value<int?> startedAtEpochMs = const Value.absent(),
                Value<int> accumulatedMs = const Value.absent(),
              }) => StopwatchSessionsCompanion(
                id: id,
                status: status,
                startedAtEpochMs: startedAtEpochMs,
                accumulatedMs: accumulatedMs,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required StopwatchStatus status,
                Value<int?> startedAtEpochMs = const Value.absent(),
                required int accumulatedMs,
              }) => StopwatchSessionsCompanion.insert(
                id: id,
                status: status,
                startedAtEpochMs: startedAtEpochMs,
                accumulatedMs: accumulatedMs,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$StopwatchSessionsTable, StopwatchSessionRow>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $StopwatchSessionsTable,
                    StopwatchSessionRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StopwatchSessionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StopwatchSessionsTable,
      StopwatchSessionRow,
      $$StopwatchSessionsTableFilterComposer,
      $$StopwatchSessionsTableOrderingComposer,
      $$StopwatchSessionsTableAnnotationComposer,
      $$StopwatchSessionsTableCreateCompanionBuilder,
      $$StopwatchSessionsTableUpdateCompanionBuilder,
      (
        StopwatchSessionRow,
        BaseReferences<
          _$AppDatabase,
          $StopwatchSessionsTable,
          StopwatchSessionRow
        >,
      ),
      StopwatchSessionRow,
      PrefetchHooks Function()
    >;
typedef $$LapsTableCreateCompanionBuilder = LapsCompanion Function({
  Value<int> id,
  required int lapIndex,
  required int lapMs,
  required int totalMs,
  Value<DateTime> createdAt,
});
typedef $$LapsTableUpdateCompanionBuilder = LapsCompanion Function({
  Value<int> id,
  Value<int> lapIndex,
  Value<int> lapMs,
  Value<int> totalMs,
  Value<DateTime> createdAt,
});

class $$LapsTableFilterComposer extends Composer<_$AppDatabase, $LapsTable> {
  $$LapsTableFilterComposer({
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

  ColumnFilters<int> get lapIndex => $composableBuilder(
    column: $table.lapIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lapMs => $composableBuilder(
    column: $table.lapMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalMs => $composableBuilder(
    column: $table.totalMs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LapsTableOrderingComposer extends Composer<_$AppDatabase, $LapsTable> {
  $$LapsTableOrderingComposer({
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

  ColumnOrderings<int> get lapIndex => $composableBuilder(
    column: $table.lapIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lapMs => $composableBuilder(
    column: $table.lapMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalMs => $composableBuilder(
    column: $table.totalMs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LapsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LapsTable> {
  $$LapsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get lapIndex =>
      $composableBuilder(column: $table.lapIndex, builder: (column) => column);

  GeneratedColumn<int> get lapMs =>
      $composableBuilder(column: $table.lapMs, builder: (column) => column);

  GeneratedColumn<int> get totalMs =>
      $composableBuilder(column: $table.totalMs, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$LapsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LapsTable,
          LapRow,
          $$LapsTableFilterComposer,
          $$LapsTableOrderingComposer,
          $$LapsTableAnnotationComposer,
          $$LapsTableCreateCompanionBuilder,
          $$LapsTableUpdateCompanionBuilder,
          (LapRow, BaseReferences<_$AppDatabase, $LapsTable, LapRow>),
          LapRow,
          PrefetchHooks Function()
        > {
  $$LapsTableTableManager(_$AppDatabase db, $LapsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LapsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LapsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LapsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> lapIndex = const Value.absent(),
                Value<int> lapMs = const Value.absent(),
                Value<int> totalMs = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => LapsCompanion(
                id: id,
                lapIndex: lapIndex,
                lapMs: lapMs,
                totalMs: totalMs,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int lapIndex,
                required int lapMs,
                required int totalMs,
                Value<DateTime> createdAt = const Value.absent(),
              }) => LapsCompanion.insert(
                id: id,
                lapIndex: lapIndex,
                lapMs: lapMs,
                totalMs: totalMs,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LapsTable, LapRow>(table),
                  BaseReferences<_$AppDatabase, $LapsTable, LapRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LapsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LapsTable,
      LapRow,
      $$LapsTableFilterComposer,
      $$LapsTableOrderingComposer,
      $$LapsTableAnnotationComposer,
      $$LapsTableCreateCompanionBuilder,
      $$LapsTableUpdateCompanionBuilder,
      (LapRow, BaseReferences<_$AppDatabase, $LapsTable, LapRow>),
      LapRow,
      PrefetchHooks Function()
    >;
typedef $$AppSettingsEntriesTableCreateCompanionBuilder =
    AppSettingsEntriesCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$AppSettingsEntriesTableUpdateCompanionBuilder =
    AppSettingsEntriesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$AppSettingsEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsEntriesTable> {
  $$AppSettingsEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppSettingsEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsEntriesTable> {
  $$AppSettingsEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppSettingsEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsEntriesTable> {
  $$AppSettingsEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$AppSettingsEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AppSettingsEntriesTable,
          SettingEntryRow,
          $$AppSettingsEntriesTableFilterComposer,
          $$AppSettingsEntriesTableOrderingComposer,
          $$AppSettingsEntriesTableAnnotationComposer,
          $$AppSettingsEntriesTableCreateCompanionBuilder,
          $$AppSettingsEntriesTableUpdateCompanionBuilder,
          (
            SettingEntryRow,
            BaseReferences<
              _$AppDatabase,
              $AppSettingsEntriesTable,
              SettingEntryRow
            >,
          ),
          SettingEntryRow,
          PrefetchHooks Function()
        > {
  $$AppSettingsEntriesTableTableManager(
    _$AppDatabase db,
    $AppSettingsEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsEntriesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AppSettingsEntriesCompanion(
                key: key,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => AppSettingsEntriesCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AppSettingsEntriesTable, SettingEntryRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $AppSettingsEntriesTable,
                    SettingEntryRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppSettingsEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AppSettingsEntriesTable,
      SettingEntryRow,
      $$AppSettingsEntriesTableFilterComposer,
      $$AppSettingsEntriesTableOrderingComposer,
      $$AppSettingsEntriesTableAnnotationComposer,
      $$AppSettingsEntriesTableCreateCompanionBuilder,
      $$AppSettingsEntriesTableUpdateCompanionBuilder,
      (
        SettingEntryRow,
        BaseReferences<
          _$AppDatabase,
          $AppSettingsEntriesTable,
          SettingEntryRow
        >,
      ),
      SettingEntryRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$StopwatchSessionsTableTableManager get stopwatchSessions =>
      $$StopwatchSessionsTableTableManager(_db, _db.stopwatchSessions);
  $$LapsTableTableManager get laps => $$LapsTableTableManager(_db, _db.laps);
  $$AppSettingsEntriesTableTableManager get appSettingsEntries =>
      $$AppSettingsEntriesTableTableManager(_db, _db.appSettingsEntries);
}
