import 'package:clock/clock.dart';
import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/features/clock/application/ticker_provider.dart';
import 'package:clock_evolution/features/settings/presentation/theme_toggle_button.dart';
import 'package:drift/drift.dart' show Variable;
import 'package:drift/native.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'home_page_test.dart' show pumpApp;

void main() {
  test('secondTicker emits aligned to each second boundary', () {
    fakeAsync((async) {
      final start = DateTime(2026, 10, 18, 10, 8, 36, 400);
      final container = ProviderContainer(
        overrides: [
          appClockProvider.overrideWithValue(
            Clock(() => start.add(async.elapsed)),
          ),
        ],
      );
      final emitted = <DateTime>[];
      container.listen(secondTickerProvider, (_, next) {
        final value = next.value;
        if (value != null) {
          emitted.add(value);
        }
      }, fireImmediately: true);

      async.flushMicrotasks();
      expect(emitted, hasLength(1));
      async
        ..elapse(const Duration(milliseconds: 600))
        ..elapse(const Duration(seconds: 2));
      expect(emitted.length, greaterThanOrEqualTo(3));
      expect(emitted.skip(1).every((t) => t.millisecond == 0), isTrue);

      container.dispose();
      final count = emitted.length;
      async.elapse(const Duration(seconds: 3));
      expect(emitted, hasLength(count));
    });
  });

  test('database creates schema at version 1', () async {
    final database = AppDatabase(NativeDatabase.memory());
    addTearDown(database.close);

    expect(database.schemaVersion, 1);
    final tables = await database
        .customSelect(
          'SELECT name FROM sqlite_master WHERE type = ? AND name NOT LIKE ?',
          variables: [
            Variable.withString('table'),
            Variable.withString('sqlite_%'),
          ],
        )
        .get();
    expect(
      tables.map((r) => r.read<String>('name')),
      containsAll(['stopwatch_sessions', 'laps', 'app_settings_entries']),
    );
  });

  testWidgets('settings sheet validates city and persists it', (tester) async {
    tester.view.physicalSize = const Size(780, 1688);
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);
    final database = AppDatabase(NativeDatabase.memory());
    addTearDown(database.close);

    await pumpApp(tester, database);

    await tester.longPress(find.byType(ThemeToggleButton));
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Definições'), findsOneWidget);

    await tester.enterText(find.byType(TextField), '   ');
    await tester.tap(find.text('Guardar'));
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text('Indique entre 1 e 40 caracteres.'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Porto');
    await tester.tap(find.text('Guardar'));
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 200)),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 600));
    expect(find.text('Definições'), findsNothing);
    expect(find.text('2026 · Porto'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds: 1));
  });
}
