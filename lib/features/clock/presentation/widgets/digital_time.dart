import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/features/clock/application/clock_snapshot_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DigitalTime extends ConsumerWidget {
  const DigitalTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typography = context.typography;
    final now = ref.watch(clockSnapshotProvider.select((s) => s.now));
    final use24Hour = MediaQuery.alwaysUse24HourFormatOf(context);
    final pattern = use24Hour ? 'HH:mm' : 'hh:mm';
    final main = DateFormat(pattern).format(now);
    final seconds = DateFormat(':ss').format(now);
    return Text.rich(
      TextSpan(
        text: main,
        style: typography.digitalTime,
        children: [TextSpan(text: seconds, style: typography.digitalSeconds)],
      ),
      textAlign: TextAlign.center,
    );
  }
}
