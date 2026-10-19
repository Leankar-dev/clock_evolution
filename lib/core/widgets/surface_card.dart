import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:flutter/material.dart';

class SurfaceCard extends StatelessWidget {
  const SurfaceCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: palette.surface,
        borderRadius: BorderRadius.circular(Radii.card),
        border: Border.all(color: palette.surfaceBorder),
      ),
      child: Padding(padding: const EdgeInsets.all(Spacing.xl), child: child),
    );
  }
}
