import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/features/clock/application/clock_snapshot_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DateHeaderView extends ConsumerWidget {
  const DateHeaderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typography = context.typography;
    final header = ref.watch(dateHeaderProvider);
    final locale = Localizations.localeOf(context).toLanguageTag();
    final weekday = DateFormat.EEEE(locale).format(header.date).toUpperCase();
    final dayAndMonth = DateFormat.MMMMd(locale).format(header.date);
    final yearAndCity = context.l10n.yearAndCity(
      header.date.year,
      header.locationName,
    );
    return Semantics(
      header: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(weekday, style: typography.eyebrow),
          const SizedBox(height: 6),
          Text(dayAndMonth, style: typography.headline),
          const SizedBox(height: 6),
          Text(yearAndCity, style: typography.subtitle),
        ],
      ),
    );
  }
}
