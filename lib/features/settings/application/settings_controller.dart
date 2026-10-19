import 'package:clock_evolution/core/errors/failure.dart';
import 'package:clock_evolution/features/settings/application/settings_providers.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_controller.g.dart';

@Riverpod(keepAlive: true)
class SettingsController extends _$SettingsController {
  @override
  AppSettings build() => ref.watch(initialSettingsProvider);

  Future<void> toggleTheme() =>
      _update(state.copyWith(themeMode: state.themeMode.toggled));

  Future<void> setSmoothSecondHand({required bool value}) =>
      _update(state.copyWith(smoothSecondHand: value));

  Future<ValidationFailure?> updateLocation(String input) async {
    final name = input.trim();
    if (name.isEmpty || name.length > AppSettings.locationMaxLength) {
      return const ValidationFailure('locationName');
    }
    await _update(state.copyWith(locationName: name));
    return null;
  }

  Future<void> _update(AppSettings next) async {
    final previous = state;
    if (next == previous) {
      return;
    }
    state = next;
    try {
      await ref.read(settingsRepositoryProvider).save(next);
    } on Failure {
      state = previous;
      rethrow;
    }
  }
}
