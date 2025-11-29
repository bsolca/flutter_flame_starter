import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/settings/controller/settings_controller.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Widget that displays game settings section.
class SettingsSection extends ConsumerWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(settingsControllerProvider);
    final appLocal = ref.watch(appLocalProvider);
    final controller = ref.read(settingsControllerProvider.notifier);

    return ExpansionTile(
      title: Text(appLocal.gameSettings),
      children: [
        settingsAsync.when(
          data: (settings) => Column(
            children: [
              SwitchListTile(
                title: Text(appLocal.soundEnabled),
                value: settings.soundEnabled,
                onChanged: (_) async {
                  await controller.toggleSound();
                },
              ),
              SwitchListTile(
                title: Text(appLocal.musicEnabled),
                value: settings.musicEnabled,
                onChanged: (_) async {
                  await controller.toggleMusic();
                },
              ),
              ListTile(
                title: Text(appLocal.difficulty),
                trailing: Text(settings.difficulty),
              ),
            ],
          ),
          loading: () => const Padding(
            padding: EdgeInsets.all(EzConstLayout.spacer),
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => Padding(
            padding: const EdgeInsets.all(EzConstLayout.spacer),
            child: Text('Error: $error'),
          ),
        ),
      ],
    );
  }
}
