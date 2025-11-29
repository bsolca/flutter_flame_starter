import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/game_progress/controller/game_progress_controller.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

/// Widget that displays game progress section.
class GameProgressSection extends ConsumerWidget {
  const GameProgressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressAsync = ref.watch(gameProgressControllerProvider);
    final appLocal = ref.watch(appLocalProvider);
    final controller = ref.read(gameProgressControllerProvider.notifier);

    return ExpansionTile(
      title: Text(appLocal.gameProgress),
      children: [
        progressAsync.when(
          data: (progress) {
            if (progress == null) {
              return Padding(
                padding: const EdgeInsets.all(EzConstLayout.spacer),
                child: Text(appLocal.noGameProgress),
              );
            }
            return Column(
              children: [
                ListTile(
                  title: Text(appLocal.score),
                  trailing: Text('${progress.score}'),
                ),
                ListTile(
                  title: Text(appLocal.gameOver),
                  trailing: Text(progress.isGameOver ? 'Yes' : 'No'),
                ),
                ListTile(
                  title: const Text('Paused'),
                  trailing: Text(progress.isPaused ? 'Yes' : 'No'),
                ),
                ListTile(
                  title: const Text('Saved At'),
                  trailing: Text(
                    DateFormat.yMMMd().add_Hms().format(
                      progress.savedAt,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(EzConstLayout.spacer),
                  child: ElevatedButton(
                    onPressed: () async {
                      await controller.clearProgress();
                    },
                    child: Text(appLocal.clear),
                  ),
                ),
              ],
            );
          },
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
