import 'package:clock_evolution/app/app.dart';
import 'package:clock_evolution/core/database/app_database.dart';
import 'package:clock_evolution/core/database/database_provider.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('stopwatch start, lap and pause flow', (tester) async {
    final database = AppDatabase(NativeDatabase.memory());
    addTearDown(database.close);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [appDatabaseProvider.overrideWithValue(database)],
        child: const ClockApp(),
      ),
    );
    await tester.pump(const Duration(milliseconds: 500));

    await tester.tap(find.byType(FilledButton).first);
    await tester.pump(const Duration(seconds: 1));
    await tester.tap(find.byType(OutlinedButton).first);
    await tester.pump(const Duration(milliseconds: 500));
    await tester.tap(find.byType(FilledButton).first);
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.byType(FilledButton), findsWidgets);
  });
}
