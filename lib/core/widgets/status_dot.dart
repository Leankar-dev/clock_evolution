import 'package:flutter/material.dart';

class StatusDot extends StatelessWidget {
  const StatusDot({required this.color, super.key});

  final Color color;

  static const double size = 8;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: const SizedBox.square(dimension: size),
    );
  }
}
