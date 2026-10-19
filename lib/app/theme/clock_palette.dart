import 'package:flutter/material.dart';

@immutable
class ClockPalette extends ThemeExtension<ClockPalette> {
  const ClockPalette({
    required this.background,
    required this.surface,
    required this.surfaceBorder,
    required this.onSurface,
    required this.onSurfaceMuted,
    required this.accent,
    required this.onAccent,
    required this.clockFace,
    required this.clockTickMajor,
    required this.clockTickMinor,
    required this.handPrimary,
    required this.handSecondsAccent,
  });

  static const dark = ClockPalette(
    background: Color(0xFF0B0E11),
    surface: Color(0xFF161A1F),
    surfaceBorder: Color(0xFF2A2F36),
    onSurface: Color(0xFFF2EEE6),
    onSurfaceMuted: Color(0xFF8A9099),
    accent: Color(0xFFFFB347),
    onAccent: Color(0xFF1A1206),
    clockFace: Color(0xFF161A1F),
    clockTickMajor: Color(0xFFF2EEE6),
    clockTickMinor: Color(0xFF4A5059),
    handPrimary: Color(0xFFF2EEE6),
    handSecondsAccent: Color(0xFFFFB347),
  );

  static const light = ClockPalette(
    background: Color(0xFFF6F3EC),
    surface: Color(0xFFFFFFFF),
    surfaceBorder: Color(0xFFDAD5C9),
    onSurface: Color(0xFF14181D),
    onSurfaceMuted: Color(0xFF5B626B),
    accent: Color(0xFFB85C00),
    onAccent: Color(0xFFFFFFFF),
    clockFace: Color(0xFFFFFFFF),
    clockTickMajor: Color(0xFF14181D),
    clockTickMinor: Color(0xFFA8A398),
    handPrimary: Color(0xFF14181D),
    handSecondsAccent: Color(0xFFB85C00),
  );

  final Color background;
  final Color surface;
  final Color surfaceBorder;
  final Color onSurface;
  final Color onSurfaceMuted;
  final Color accent;
  final Color onAccent;
  final Color clockFace;
  final Color clockTickMajor;
  final Color clockTickMinor;
  final Color handPrimary;
  final Color handSecondsAccent;

  @override
  ClockPalette copyWith({
    Color? background,
    Color? surface,
    Color? surfaceBorder,
    Color? onSurface,
    Color? onSurfaceMuted,
    Color? accent,
    Color? onAccent,
    Color? clockFace,
    Color? clockTickMajor,
    Color? clockTickMinor,
    Color? handPrimary,
    Color? handSecondsAccent,
  }) {
    return ClockPalette(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceBorder: surfaceBorder ?? this.surfaceBorder,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceMuted: onSurfaceMuted ?? this.onSurfaceMuted,
      accent: accent ?? this.accent,
      onAccent: onAccent ?? this.onAccent,
      clockFace: clockFace ?? this.clockFace,
      clockTickMajor: clockTickMajor ?? this.clockTickMajor,
      clockTickMinor: clockTickMinor ?? this.clockTickMinor,
      handPrimary: handPrimary ?? this.handPrimary,
      handSecondsAccent: handSecondsAccent ?? this.handSecondsAccent,
    );
  }

  @override
  ClockPalette lerp(ThemeExtension<ClockPalette>? other, double t) {
    if (other is! ClockPalette) {
      return this;
    }
    return ClockPalette(
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceBorder: Color.lerp(surfaceBorder, other.surfaceBorder, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSurfaceMuted: Color.lerp(onSurfaceMuted, other.onSurfaceMuted, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      onAccent: Color.lerp(onAccent, other.onAccent, t)!,
      clockFace: Color.lerp(clockFace, other.clockFace, t)!,
      clockTickMajor: Color.lerp(clockTickMajor, other.clockTickMajor, t)!,
      clockTickMinor: Color.lerp(clockTickMinor, other.clockTickMinor, t)!,
      handPrimary: Color.lerp(handPrimary, other.handPrimary, t)!,
      handSecondsAccent: Color.lerp(
        handSecondsAccent,
        other.handSecondsAccent,
        t,
      )!,
    );
  }
}
