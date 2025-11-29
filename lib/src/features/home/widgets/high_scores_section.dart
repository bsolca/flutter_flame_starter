import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/high_scores/controller/high_score_controller.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

/// Widget that displays high scores section.
class HighScoresSection extends ConsumerWidget {
  const HighScoresSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final highScoresAsync = ref.watch(highScoreControllerProvider);
    final appLocal = ref.watch(appLocalProvider);
    final controller = ref.read(highScoreControllerProvider.notifier);

    return ExpansionTile(
      title: Text(appLocal.highScores),
      children: [
        highScoresAsync.when(
          data: (scores) {
            if (scores.isEmpty) {
              return Padding(
                padding: const EdgeInsets.all(EzConstLayout.spacer),
                child: Text(appLocal.noHighScores),
              );
            }
            return Column(
              children: [
                ...scores.map(
                  (score) => ListTile(
                    title: Text('${appLocal.score}: ${score.score}'),
                    subtitle: Text(
                      DateFormat.yMMMd().format(score.date),
                    ),
                    trailing: score.playerName.isNotEmpty
                        ? Text(score.playerName)
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(EzConstLayout.spacer),
                  child: ElevatedButton(
                    onPressed: () async {
                      await controller.clearHighScores();
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
