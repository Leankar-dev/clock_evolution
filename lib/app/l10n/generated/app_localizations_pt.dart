// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Relógio';

  @override
  String get stopwatchTitle => 'CRONÓMETRO';

  @override
  String get stopwatchRunning => 'A correr';

  @override
  String get stopwatchPaused => 'Em pausa';

  @override
  String get stopwatchIdle => 'Parado';

  @override
  String get lap => 'Volta';

  @override
  String lapNumber(int number) {
    return 'Volta $number';
  }

  @override
  String get pause => 'Pausar';

  @override
  String get resume => 'Retomar';

  @override
  String get start => 'Iniciar';

  @override
  String get reset => 'Zerar';

  @override
  String get resetConfirmTitle => 'Zerar cronómetro?';

  @override
  String get resetConfirmMessage =>
      'O tempo e as voltas registadas serão apagados.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get toggleThemeSemantic => 'Alternar tema';

  @override
  String analogClockSemantic(String time) {
    return 'Relógio analógico, $time';
  }

  @override
  String yearAndCity(int year, String city) {
    return '$year · $city';
  }

  @override
  String get settingsTitle => 'Definições';

  @override
  String get cityLabel => 'Cidade';

  @override
  String get citySave => 'Guardar';

  @override
  String get cityInvalid => 'Indique entre 1 e 40 caracteres.';

  @override
  String get smoothSecondHand => 'Ponteiro de segundos suave';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get loadError => 'Não foi possível carregar os dados.';
}
