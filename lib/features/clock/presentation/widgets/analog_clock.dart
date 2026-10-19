import 'dart:math' as math;

import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/features/clock/application/clock_snapshot_provider.dart';
import 'package:clock_evolution/features/clock/presentation/painters/clock_face_painter.dart';
import 'package:clock_evolution/features/clock/presentation/painters/clock_hands_painter.dart';
import 'package:clock_evolution/features/settings/application/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class AnalogClock extends ConsumerStatefulWidget {
  const AnalogClock({super.key});

  @override
  ConsumerState<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends ConsumerState<AnalogClock>
    with SingleTickerProviderStateMixin {
  late final ClockTimeNotifier _time;
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _time = ClockTimeNotifier(ref.read(appClockProvider).now());
    _ticker = createTicker(_onTick)..start();
  }

  void _onTick(Duration _) {
    final now = ref.read(appClockProvider).now();
    final smooth = ref.read(settingsControllerProvider).smoothSecondHand;
    if (smooth || now.second != _time.now.second) {
      _time.now = now;
    }
  }

  @override
  void dispose() {
    _ticker.dispose();
    _time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final typography = context.typography;
    final locale = Localizations.localeOf(context).toLanguageTag();
    final minuteOfDay = ref.watch(
      clockSnapshotProvider.select(
        (snapshot) =>
            DateTime(2000, 1, 1, snapshot.now.hour, snapshot.now.minute),
      ),
    );
    final date = ref.watch(dateHeaderProvider.select((header) => header.date));
    final weekday = DateFormat.E(locale).format(date).replaceAll('.', '');
    final dayLabel = '${weekday.toUpperCase()} ${date.day}';
    final semanticLabel = context.l10n.analogClockSemantic(
      DateFormat.jm(locale).format(minuteOfDay),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final side = math.min(
          constraints.maxWidth.isFinite
              ? constraints.maxWidth * Sizes.clockWidthFactor
              : Sizes.maxClock,
          Sizes.maxClock,
        );
        return Semantics(
          label: semanticLabel,
          image: true,
          child: ExcludeSemantics(
            child: SizedBox.square(
              dimension: side,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  RepaintBoundary(
                    child: CustomPaint(
                      painter: ClockFacePainter(
                        palette: palette,
                        numeralStyle: typography.clockNumeral,
                        dayLabel: dayLabel,
                        dayLabelStyle: typography.clockDayLabel,
                      ),
                    ),
                  ),
                  RepaintBoundary(
                    child: CustomPaint(
                      painter: ClockHandsPainter(time: _time, palette: palette),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
