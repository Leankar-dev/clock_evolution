import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

enum AppThemeMode {
  dark,
  light;

  AppThemeMode get toggled => switch (this) {
    dark => light,
    light => dark,
  };
}

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    @Default(AppThemeMode.dark) AppThemeMode themeMode,
    @Default(AppSettings.defaultLocation) String locationName,
    @Default(true) bool smoothSecondHand,
  }) = _AppSettings;
  const AppSettings._();

  static const defaultLocation = 'Lisboa';
  static const locationMaxLength = 40;
}
