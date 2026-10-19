import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/features/clock/presentation/widgets/analog_clock.dart';
import 'package:clock_evolution/features/clock/presentation/widgets/date_header_view.dart';
import 'package:clock_evolution/features/clock/presentation/widgets/digital_time.dart';
import 'package:clock_evolution/features/settings/presentation/theme_toggle_button.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/stopwatch_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= Sizes.wideBreakpoint;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(Spacing.xl),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 2 * Spacing.xl,
                ),
                child: isWide ? const _WideLayout() : const _NarrowLayout(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: DateHeaderView()),
        ThemeToggleButton(),
      ],
    );
  }
}

class _ClockSection extends StatelessWidget {
  const _ClockSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnalogClock(),
        SizedBox(height: Spacing.xl),
        DigitalTime(),
      ],
    );
  }
}

class _NarrowLayout extends StatelessWidget {
  const _NarrowLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _HeaderRow(),
        SizedBox(height: Spacing.xl),
        _ClockSection(),
        SizedBox(height: Spacing.xxl),
        StopwatchCard(),
      ],
    );
  }
}

class _WideLayout extends StatelessWidget {
  const _WideLayout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _HeaderRow(),
        SizedBox(height: Spacing.xl),
        Row(
          children: [
            Expanded(child: _ClockSection()),
            SizedBox(width: Spacing.xxl),
            Expanded(child: StopwatchCard()),
          ],
        ),
      ],
    );
  }
}
