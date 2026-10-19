import 'package:clock_evolution/core/errors/failure.dart';
import 'package:clock_evolution/features/settings/data/settings_dao.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:clock_evolution/features/settings/domain/settings_repository.dart';

class DriftSettingsRepository implements SettingsRepository {
  const DriftSettingsRepository(this._dao);

  static const _themeKey = 'theme_mode';
  static const _locationKey = 'location_name';
  static const _smoothKey = 'smooth_second_hand';

  final SettingsDao _dao;

  @override
  Future<AppSettings> load() async {
    try {
      final values = await _dao.readAll();
      const defaults = AppSettings();
      return AppSettings(
        themeMode:
            AppThemeMode.values.asNameMap()[values[_themeKey]] ??
            defaults.themeMode,
        locationName: values[_locationKey] ?? defaults.locationName,
        smoothSecondHand: switch (values[_smoothKey]) {
          'true' => true,
          'false' => false,
          _ => defaults.smoothSecondHand,
        },
      );
    } on Exception catch (error) {
      throw Failure.storage(error);
    }
  }

  @override
  Future<void> save(AppSettings settings) async {
    try {
      await _dao.writeAll({
        _themeKey: settings.themeMode.name,
        _locationKey: settings.locationName,
        _smoothKey: settings.smoothSecondHand.toString(),
      });
    } on Exception catch (error) {
      throw Failure.storage(error);
    }
  }
}
