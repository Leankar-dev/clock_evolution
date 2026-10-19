import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/widgets/round_icon_button.dart';
import 'package:clock_evolution/features/settings/application/settings_controller.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:clock_evolution/features/settings/presentation/settings_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeToggleButton extends ConsumerWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(
      settingsControllerProvider.select((settings) => settings.themeMode),
    );
    final isDark = mode == AppThemeMode.dark;
    return RoundIconButton(
      tooltip: context.l10n.toggleThemeSemantic,
      onPressed: () =>
          ref.read(settingsControllerProvider.notifier).toggleTheme(),
      onLongPress: () => showSettingsSheet(context),
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (child, animation) => RotationTransition(
          turns: Tween<double>(begin: 0.75, end: 1).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        ),
        child: Icon(
          isDark ? Icons.wb_sunny_outlined : Icons.nightlight_outlined,
          key: ValueKey(isDark),
          size: 20,
          color: context.palette.onSurface,
        ),
      ),
    );
  }
}
