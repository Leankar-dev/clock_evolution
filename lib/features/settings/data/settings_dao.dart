import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/tables.dart';
import 'package:drift/drift.dart';

part 'settings_dao.g.dart';

@DriftAccessor(tables: [AppSettingsEntries])
class SettingsDao extends DatabaseAccessor<AppDatabase>
    with _$SettingsDaoMixin {
  SettingsDao(super.attachedDatabase);

  Future<Map<String, String>> readAll() async {
    final rows = await select(appSettingsEntries).get();
    return {for (final row in rows) row.key: row.value};
  }

  Future<void> writeAll(Map<String, String> values) {
    return batch((batch) {
      batch.insertAllOnConflictUpdate(appSettingsEntries, [
        for (final entry in values.entries)
          AppSettingsEntriesCompanion.insert(
            key: entry.key,
            value: entry.value,
          ),
      ]);
    });
  }
}
