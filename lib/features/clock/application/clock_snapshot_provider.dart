import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/features/clock/application/ticker_provider.dart';
import 'package:clock_evolution/features/clock/domain/clock_snapshot.dart';
import 'package:clock_evolution/features/clock/domain/date_header.dart';
import 'package:clock_evolution/features/settings/application/settings_controller.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clock_snapshot_provider.g.dart';

@riverpod
ClockSnapshot clockSnapshot(Ref ref) {
  final fallback = ref.read(appClockProvider).now();
  final now = ref.watch(secondTickerProvider).value ?? fallback;
  return ClockSnapshot(now: now);
}

@riverpod
DateHeader dateHeader(Ref ref) {
  final day = ref.watch(
    clockSnapshotProvider.select(
      (snapshot) =>
          DateTime(snapshot.now.year, snapshot.now.month, snapshot.now.day),
    ),
  );
  final location = ref.watch(
    settingsControllerProvider.select((settings) => settings.locationName),
  );
  return DateHeader(date: day, locationName: location);
}
