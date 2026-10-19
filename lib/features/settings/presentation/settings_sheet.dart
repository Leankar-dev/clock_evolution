import 'package:clock_evolution/app/theme/spacing.dart';
import 'package:clock_evolution/core/extensions/build_context_x.dart';
import 'package:clock_evolution/core/widgets/pill_button.dart';
import 'package:clock_evolution/features/settings/application/settings_controller.dart';
import 'package:clock_evolution/features/settings/domain/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> showSettingsSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (context) => const SettingsSheet(),
  );
}

class SettingsSheet extends ConsumerStatefulWidget {
  const SettingsSheet({super.key});

  @override
  ConsumerState<SettingsSheet> createState() => _SettingsSheetState();
}

class _SettingsSheetState extends ConsumerState<SettingsSheet> {
  late final TextEditingController _controller;
  bool _invalid = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: ref.read(settingsControllerProvider).locationName,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final failure = await ref
        .read(settingsControllerProvider.notifier)
        .updateLocation(_controller.text);
    if (!mounted) {
      return;
    }
    if (failure == null) {
      Navigator.of(context).pop();
      return;
    }
    setState(() => _invalid = true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final smooth = ref.watch(
      settingsControllerProvider.select((s) => s.smoothSecondHand),
    );
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Spacing.xl,
        0,
        Spacing.xl,
        MediaQuery.viewInsetsOf(context).bottom + Spacing.xl,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.settingsTitle, style: context.typography.headline),
          const SizedBox(height: Spacing.lg),
          TextField(
            controller: _controller,
            maxLength: AppSettings.locationMaxLength + 10,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _save(),
            decoration: InputDecoration(
              labelText: l10n.cityLabel,
              errorText: _invalid ? l10n.cityInvalid : null,
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.smoothSecondHand),
            value: smooth,
            onChanged: (value) => ref
                .read(settingsControllerProvider.notifier)
                .setSmoothSecondHand(value: value),
          ),
          const SizedBox(height: Spacing.lg),
          PillButton.filled(label: l10n.citySave, onPressed: _save),
        ],
      ),
    );
  }
}
