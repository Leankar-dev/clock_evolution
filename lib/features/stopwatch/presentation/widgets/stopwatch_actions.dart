import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/services/haptics_service.dart';
import 'package:clock_evolution/core/widgets/pill_button.dart';
import 'package:clock_evolution/features/stopwatch/application/stopwatch_controller.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_view_model.dart';
import 'package:clock_evolution/features/stopwatch/presentation/widgets/reset_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StopwatchActions extends ConsumerWidget {
  const StopwatchActions({required this.viewModel, super.key});

  final StopwatchViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final controller = ref.read(stopwatchControllerProvider.notifier);
    final haptics = ref.read(hapticsProvider);

    Future<void> run(Future<void> Function() action) async {
      await haptics.light();
      await action();
    }

    final primaryLabel = switch (viewModel.primaryAction) {
      PrimaryAction.start => l10n.start,
      PrimaryAction.pause => l10n.pause,
      PrimaryAction.resume => l10n.resume,
    };
    final primaryAction = switch (viewModel.primaryAction) {
      PrimaryAction.start => controller.start,
      PrimaryAction.pause => controller.pause,
      PrimaryAction.resume => controller.resume,
    };

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: PillButton.outlined(
            label: l10n.lap,
            onPressed: viewModel.lapEnabled ? () => run(controller.lap) : null,
          ),
        ),
        const SizedBox(width: Spacing.sm),
        Expanded(
          flex: 2,
          child: ResetButton(
            enabled: viewModel.resetEnabled,
            requiresConfirmation: viewModel.requiresResetConfirmation,
            onConfirmed: () => run(controller.reset),
          ),
        ),
        const SizedBox(width: Spacing.sm),
        Expanded(
          flex: 3,
          child: PillButton.filled(
            label: primaryLabel,
            onPressed: () => run(primaryAction),
          ),
        ),
      ],
    );
  }
}

class ResetButton extends StatelessWidget {
  const ResetButton({
    required this.enabled,
    required this.requiresConfirmation,
    required this.onConfirmed,
    super.key,
  });

  final bool enabled;
  final bool requiresConfirmation;
  final Future<void> Function() onConfirmed;

  @override
  Widget build(BuildContext context) {
    return PillButton.outlined(
      label: context.l10n.reset,
      onPressed: enabled ? () => _handlePress(context) : null,
    );
  }

  Future<void> _handlePress(BuildContext context) async {
    if (requiresConfirmation) {
      final confirmed = await showResetConfirmation(context);
      if (!confirmed) {
        return;
      }
    }
    await onConfirmed();
  }
}
