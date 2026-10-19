import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/features/stopwatch/domain/stopwatch_view_model.dart';
import 'package:flutter/material.dart';

class LapRow extends StatelessWidget {
  const LapRow({required this.lap, super.key});

  final LapView lap;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final typography = context.typography;
    final valueColor = switch (lap.highlight) {
      LapHighlight.fastest => palette.accent,
      LapHighlight.slowest => palette.onSurfaceMuted,
      LapHighlight.none => palette.onSurface,
    };
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            context.l10n.lapNumber(lap.index),
            style: typography.lapRow,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              lap.lapText,
              style: typography.lapValue.copyWith(color: valueColor),
            ),
          ),
        ),
      ],
    );
  }
}

class LapList extends StatelessWidget {
  const LapList({required this.laps, super.key});

  final List<LapView> laps;

  static const double rowExtent = 28;
  static const int visibleRows = 2;

  @override
  Widget build(BuildContext context) {
    final visible = laps.length < visibleRows ? laps.length : visibleRows;
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: visible * rowExtent,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemExtent: rowExtent,
          itemCount: laps.length,
          itemBuilder: (context, index) => Align(
            child: LapRow(key: ValueKey(laps[index].index), lap: laps[index]),
          ),
        ),
      ),
    );
  }
}
