import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_elapsed_provider.dart';
import 'package:clock_evolution/features/stopwatch/domain/elapsed_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StopwatchDisplay extends ConsumerWidget {
  const StopwatchDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typography = context.typography;
    final elapsed = ref.watch(stopwatchElapsedProvider).value ?? Duration.zero;
    final parts = formatElapsedParts(elapsed);
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text.rich(
          TextSpan(
            text: parts.main,
            style: typography.stopwatchDisplay,
            children: [
              TextSpan(
                text: parts.fraction,
                style: typography.stopwatchFraction,
              ),
            ],
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
