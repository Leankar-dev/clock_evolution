import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In pt, this message translates to:
  /// **'Relógio'**
  String get appTitle;

  /// No description provided for @stopwatchTitle.
  ///
  /// In pt, this message translates to:
  /// **'CRONÓMETRO'**
  String get stopwatchTitle;

  /// No description provided for @stopwatchRunning.
  ///
  /// In pt, this message translates to:
  /// **'A correr'**
  String get stopwatchRunning;

  /// No description provided for @stopwatchPaused.
  ///
  /// In pt, this message translates to:
  /// **'Em pausa'**
  String get stopwatchPaused;

  /// No description provided for @stopwatchIdle.
  ///
  /// In pt, this message translates to:
  /// **'Parado'**
  String get stopwatchIdle;

  /// No description provided for @lap.
  ///
  /// In pt, this message translates to:
  /// **'Volta'**
  String get lap;

  /// No description provided for @lapNumber.
  ///
  /// In pt, this message translates to:
  /// **'Volta {number}'**
  String lapNumber(int number);

  /// No description provided for @pause.
  ///
  /// In pt, this message translates to:
  /// **'Pausar'**
  String get pause;

  /// No description provided for @resume.
  ///
  /// In pt, this message translates to:
  /// **'Retomar'**
  String get resume;

  /// No description provided for @start.
  ///
  /// In pt, this message translates to:
  /// **'Iniciar'**
  String get start;

  /// No description provided for @reset.
  ///
  /// In pt, this message translates to:
  /// **'Zerar'**
  String get reset;

  /// No description provided for @resetConfirmTitle.
  ///
  /// In pt, this message translates to:
  /// **'Zerar cronómetro?'**
  String get resetConfirmTitle;

  /// No description provided for @resetConfirmMessage.
  ///
  /// In pt, this message translates to:
  /// **'O tempo e as voltas registadas serão apagados.'**
  String get resetConfirmMessage;

  /// No description provided for @cancel.
  ///
  /// In pt, this message translates to:
  /// **'Cancelar'**
  String get cancel;

  /// No description provided for @toggleThemeSemantic.
  ///
  /// In pt, this message translates to:
  /// **'Alternar tema'**
  String get toggleThemeSemantic;

  /// No description provided for @analogClockSemantic.
  ///
  /// In pt, this message translates to:
  /// **'Relógio analógico, {time}'**
  String analogClockSemantic(String time);

  /// No description provided for @yearAndCity.
  ///
  /// In pt, this message translates to:
  /// **'{year} · {city}'**
  String yearAndCity(int year, String city);

  /// No description provided for @settingsTitle.
  ///
  /// In pt, this message translates to:
  /// **'Definições'**
  String get settingsTitle;

  /// No description provided for @cityLabel.
  ///
  /// In pt, this message translates to:
  /// **'Cidade'**
  String get cityLabel;

  /// No description provided for @citySave.
  ///
  /// In pt, this message translates to:
  /// **'Guardar'**
  String get citySave;

  /// No description provided for @cityInvalid.
  ///
  /// In pt, this message translates to:
  /// **'Indique entre 1 e 40 caracteres.'**
  String get cityInvalid;

  /// No description provided for @smoothSecondHand.
  ///
  /// In pt, this message translates to:
  /// **'Ponteiro de segundos suave'**
  String get smoothSecondHand;

  /// No description provided for @retry.
  ///
  /// In pt, this message translates to:
  /// **'Tentar novamente'**
  String get retry;

  /// No description provided for @loadError.
  ///
  /// In pt, this message translates to:
  /// **'Não foi possível carregar os dados.'**
  String get loadError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
