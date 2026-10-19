import 'package:clock_evolution/app/l10n/generated/app_localizations.dart';
import 'package:clock_evolution/app/theme/clock_palette.dart';
import 'package:clock_evolution/app/theme/clock_typography.dart';
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  ClockPalette get palette => Theme.of(this).extension<ClockPalette>()!;

  ClockTypography get typography => ClockTypography(palette);

  AppLocalizations get l10n => AppLocalizations.of(this);
}
