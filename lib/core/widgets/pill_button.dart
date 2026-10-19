import 'package:flutter/material.dart';

enum _PillButtonKind { filled, outlined }

class PillButton extends StatelessWidget {
  const PillButton.filled({
    required this.label,
    required this.onPressed,
    this.icon,
    super.key,
  }) : _kind = _PillButtonKind.filled;

  const PillButton.outlined({
    required this.label,
    required this.onPressed,
    this.icon,
    super.key,
  }) : _kind = _PillButtonKind.outlined;

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final _PillButtonKind _kind;

  @override
  Widget build(BuildContext context) {
    final child = Text(label, maxLines: 1, overflow: TextOverflow.ellipsis);
    final button = switch (_kind) {
      _PillButtonKind.filled =>
        icon == null
            ? FilledButton(onPressed: onPressed, child: child)
            : FilledButton.icon(
                onPressed: onPressed,
                icon: Icon(icon),
                label: child,
              ),
      _PillButtonKind.outlined =>
        icon == null
            ? OutlinedButton(onPressed: onPressed, child: child)
            : OutlinedButton.icon(
                onPressed: onPressed,
                icon: Icon(icon),
                label: child,
              ),
    };
    return Semantics(
      button: true,
      enabled: onPressed != null,
      excludeSemantics: true,
      label: label,
      onTap: onPressed,
      child: button,
    );
  }
}
