import 'package:clock_evolution/app/theme/clock_palette.dart';
import 'package:clock_evolution/app/theme/clock_typography.dart';
import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get dark => _build(ClockPalette.dark, Brightness.dark);

  static ThemeData get light => _build(ClockPalette.light, Brightness.light);

  static ThemeData _build(ClockPalette palette, Brightness brightness) {
    final typography = ClockTypography(palette);
    final scheme =
        ColorScheme.fromSeed(
          seedColor: palette.accent,
          brightness: brightness,
        ).copyWith(
          surface: palette.surface,
          onSurface: palette.onSurface,
          primary: palette.accent,
          onPrimary: palette.onAccent,
          outline: palette.surfaceBorder,
        );
    const shape = StadiumBorder();
    const minimumSize = Size.fromHeight(Sizes.buttonHeight);
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: palette.background,
      fontFamily: ClockTypography.sansFamily,
      extensions: [palette],
      dialogTheme: DialogThemeData(
        backgroundColor: palette.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.card),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: palette.surface,
        showDragHandle: true,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: palette.accent,
          foregroundColor: palette.onAccent,
          minimumSize: minimumSize,
          shape: shape,
          textStyle: typography.button,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: palette.onSurface,
          minimumSize: minimumSize,
          shape: shape,
          side: BorderSide(color: palette.surfaceBorder),
          textStyle: typography.button,
        ),
      ),
    );
  }
}
