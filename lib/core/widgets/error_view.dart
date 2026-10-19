import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/widgets/pill_button.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({required this.onRetry, super.key});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(l10n.loadError, style: context.typography.subtitle),
        const SizedBox(height: 12),
        PillButton.outlined(label: l10n.retry, onPressed: onRetry),
      ],
    );
  }
}
