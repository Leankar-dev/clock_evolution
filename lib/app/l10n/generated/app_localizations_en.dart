// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Clock';

  @override
  String get stopwatchTitle => 'STOPWATCH';

  @override
  String get stopwatchRunning => 'Running';

  @override
  String get stopwatchPaused => 'Paused';

  @override
  String get stopwatchIdle => 'Stopped';

  @override
  String get lap => 'Lap';

  @override
  String lapNumber(int number) {
    return 'Lap $number';
  }

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Resume';

  @override
  String get start => 'Start';

  @override
  String get reset => 'Reset';

  @override
  String get resetConfirmTitle => 'Reset stopwatch?';

  @override
  String get resetConfirmMessage =>
      'The elapsed time and recorded laps will be erased.';

  @override
  String get cancel => 'Cancel';

  @override
  String get toggleThemeSemantic => 'Toggle theme';

  @override
  String analogClockSemantic(String time) {
    return 'Analog clock, $time';
  }

  @override
  String yearAndCity(int year, String city) {
    return '$year · $city';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get cityLabel => 'City';

  @override
  String get citySave => 'Save';

  @override
  String get cityInvalid => 'Enter between 1 and 40 characters.';

  @override
  String get smoothSecondHand => 'Smooth second hand';

  @override
  String get retry => 'Try again';

  @override
  String get loadError => 'Could not load the data.';
}
