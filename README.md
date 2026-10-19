# clock_evolution

Aplicação de relógio com data, relógio analógico/digital e cronómetro com voltas, persistência local e tema claro/escuro.

## Stack

Flutter 3.47.7 · Dart 3.13 · Riverpod 3 · Drift · Freezed · intl (pt/en)

## Arquitetura

`lib/app` (tema, l10n), `lib/core` (base de dados, widgets partilhados, relógio injetável) e `lib/features/{clock,stopwatch,settings,home}` com camadas `domain` (sem dependências de framework), `data`, `application` e `presentation`.

## Comandos

```
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter gen-l10n
flutter run
flutter analyze
dart run tool/check_no_comments.dart
flutter test
flutter test --update-goldens
```

## Convenções

- Sem comentários no código escrito à mão (verificado por `tool/check_no_comments.dart` e pelo CI).
- O tempo vem de `appClockProvider`, substituível em testes.
