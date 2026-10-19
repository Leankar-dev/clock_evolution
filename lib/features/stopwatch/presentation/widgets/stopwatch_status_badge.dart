import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/widgets/status_dot.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_state.dart';
import 'package:flutter/material.dart';

class StopwatchStatusBadge extends StatelessWidget {
  const StopwatchStatusBadge({required this.status, super.key});

  final StopwatchStatus status;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final isRunning = status == StopwatchStatus.running;
    final color = isRunning ? palette.accent : palette.onSurfaceMuted;
    final label = switch (status) {
      StopwatchStatus.idle => l10n.stopwatchIdle,
      StopwatchStatus.running => l10n.stopwatchRunning,
      StopwatchStatus.paused => l10n.stopwatchPaused,
    };
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        StatusDot(color: color),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: context.typography.subtitle.copyWith(color: color),
          ),
        ),
      ],
    );
  }
}
