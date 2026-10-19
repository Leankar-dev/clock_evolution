import 'package:clock_evolution/app/theme/clock_palette.dart';
import 'package:flutter/material.dart';

@immutable
class ClockTypography {
  const ClockTypography(this.palette);

  static const sansFamily = 'Manrope';
  static const monoFamily = 'JetBrainsMono';
  static const _tabular = [FontFeature.tabularFigures()];

  final ClockPalette palette;

  TextStyle get eyebrow => TextStyle(
    fontFamily: sansFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
    color: palette.onSurfaceMuted,
  );

  TextStyle get headline => TextStyle(
    fontFamily: sansFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: palette.onSurface,
  );

  TextStyle get subtitle => TextStyle(
    fontFamily: sansFamily,
    fontSize: 14,
    color: palette.onSurfaceMuted,
  );

  TextStyle get digitalTime => TextStyle(
    fontFamily: monoFamily,
    fontSize: 40,
    fontWeight: FontWeight.w700,
    fontFeatures: _tabular,
    color: palette.onSurface,
  );

  TextStyle get digitalSeconds =>
      digitalTime.copyWith(fontSize: 28, color: palette.onSurfaceMuted);

  TextStyle get stopwatchDisplay => TextStyle(
    fontFamily: monoFamily,
    fontSize: 56,
    fontWeight: FontWeight.w700,
    fontFeatures: _tabular,
    color: palette.onSurface,
  );

  TextStyle get stopwatchFraction =>
      stopwatchDisplay.copyWith(color: palette.accent);

  TextStyle get lapRow => TextStyle(
    fontFamily: monoFamily,
    fontSize: 14,
    fontFeatures: _tabular,
    color: palette.onSurfaceMuted,
  );

  TextStyle get lapValue =>
      lapRow.copyWith(fontWeight: FontWeight.w700, color: palette.onSurface);

  TextStyle get clockNumeral => TextStyle(
    fontFamily: monoFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: palette.onSurface,
  );

  TextStyle get clockDayLabel => TextStyle(
    fontFamily: monoFamily,
    fontSize: 11,
    letterSpacing: 1,
    color: palette.onSurfaceMuted,
  );

  TextStyle get button => TextStyle(
    fontFamily: sansFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: palette.onSurface,
  );
}
