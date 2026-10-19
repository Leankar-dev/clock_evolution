import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/widgets/error_view.dart';
import 'package:clock_evolution/core/widgets/surface_card.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_controller.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_view_model_provider.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/lap_list.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/stopwatch_actions.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/stopwatch_display.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/stopwatch_status_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StopwatchCard extends ConsumerWidget {
  const StopwatchCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(stopwatchViewModelProvider);
    if (viewModel == null) {
      final hasError = ref.watch(
        stopwatchControllerProvider.select((value) => value.hasError),
      );
      return SurfaceCard(
        child: SizedBox(
          height: 220,
          child: Center(
            child: hasError
                ? ErrorView(
                    onRetry: () => ref.invalidate(stopwatchControllerProvider),
                  )
                : null,
          ),
        ),
      );
    }
    return SurfaceCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  context.l10n.stopwatchTitle,
                  style: context.typography.eyebrow,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Flexible(child: StopwatchStatusBadge(status: viewModel.status)),
            ],
          ),
          const SizedBox(height: Spacing.lg),
          const StopwatchDisplay(),
          const SizedBox(height: Spacing.md),
          LapList(laps: viewModel.laps),
          const SizedBox(height: Spacing.lg),
          StopwatchActions(viewModel: viewModel),
        ],
      ),
    );
  }
}
