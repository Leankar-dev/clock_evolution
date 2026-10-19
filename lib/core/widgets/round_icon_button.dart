import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.onLongPress,
    super.key,
  });

  final Widget icon;
  final String tooltip;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Tooltip(
      message: tooltip,
      child: Semantics(
        button: true,
        label: tooltip,
        excludeSemantics: true,
        onTap: onPressed,
        onLongPress: onLongPress,
        child: SizedBox.square(
          dimension: Sizes.minTapTarget,
          child: Center(
            child: Material(
              color: palette.surface,
              shape: CircleBorder(
                side: BorderSide(color: palette.surfaceBorder),
              ),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: onPressed,
                onLongPress: onLongPress,
                child: SizedBox.square(
                  dimension: Sizes.iconButton,
                  child: Center(child: icon),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
