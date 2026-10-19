import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:flutter/material.dart';

Future<bool> showResetConfirmation(BuildContext context) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => const ResetConfirmationDialog(),
  );
  return confirmed ?? false;
}

class ResetConfirmationDialog extends StatelessWidget {
  const ResetConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.resetConfirmTitle),
      content: Text(l10n.resetConfirmMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          style: FilledButton.styleFrom(minimumSize: const Size(96, 44)),
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(l10n.reset),
        ),
      ],
    );
  }
}
