import 'dart:async';

import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticker_provider.g.dart';

@riverpod
Stream<DateTime> secondTicker(Ref ref) {
  final clock = ref.watch(appClockProvider);
  final controller = StreamController<DateTime>();
  Timer? timer;

  void emit() {
    final now = clock.now();
    controller.add(now);
    timer = Timer(Duration(milliseconds: 1000 - now.millisecond), emit);
  }

  ref.onDispose(() {
    timer?.cancel();
    unawaited(controller.close());
  });
  emit();
  return controller.stream;
}
