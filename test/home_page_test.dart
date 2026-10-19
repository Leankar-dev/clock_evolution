import 'package:clock/clock.dart';
import 'package:clock_evolution/app/app.dart';
import 'package:clock_evolution/core/clock/clock_provider.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> pumpApp(WidgetTester tester, AppDatabase database) async {
  await initializeDateFormatting('pt');
  tester.platformDispatcher.localesTestValue = const [Locale('pt')];
  addTearDown(tester.platformDispatcher.clearLocalesTestValue);
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        appDatabaseProvider.overrideWithValue(database),
        appClockProvider.overrideWithValue(
          Clock.fixed(DateTime(2026, 10, 18, 10, 8, 36)),
        ),
      ],
      child: const ClockApp(),
    ),
  );
  await tester.runAsync(
    () => Future<void>.delayed(const Duration(milliseconds: 50)),
  );
  await tester.pump();
}

void main() {
  testWidgets('home shows header, digital time and stopwatch flow', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(780, 1688);
    tester.view.devicePixelRatio = 2;
    addTearDown(tester.view.reset);
    final database = AppDatabase(NativeDatabase.memory());
    addTearDown(database.close);

    await pumpApp(tester, database);

    expect(find.text('DOMINGO'), findsOneWidget);
    expect(find.text('18 de outubro'), findsOneWidget);
    expect(find.text('2026 · Lisboa'), findsOneWidget);
    expect(find.textContaining('10:08'), findsOneWidget);
    expect(find.text('Parado'), findsOneWidget);

    final reset = find.widgetWithText(OutlinedButton, 'Zerar');
    expect(tester.widget<OutlinedButton>(reset).onPressed, isNull);

    await tester.tap(find.text('Iniciar'));
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 50)),
    );
    await tester.pump();
    expect(find.text('A correr'), findsOneWidget);

    await tester.tap(find.text('Volta'));
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 50)),
    );
    await tester.pump();
    expect(find.text('Volta 1'), findsOneWidget);

    await tester.tap(reset);
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Zerar cronómetro?'), findsOneWidget);
    await tester.tap(find.text('Cancelar'));
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('A correr'), findsOneWidget);

    await tester.tap(reset);
    await tester.pump(const Duration(milliseconds: 400));
    await tester.tap(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.text('Zerar'),
      ),
    );
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 50)),
    );
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Parado'), findsOneWidget);
    expect(find.text('Volta 1'), findsNothing);

    await tester.pumpWidget(const SizedBox());
  });
}
