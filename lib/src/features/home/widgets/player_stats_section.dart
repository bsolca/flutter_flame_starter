import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/player_stats/controller/player_stats_controller.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

/// Widget that displays player stats section.
class PlayerStatsSection extends ConsumerWidget {
  const PlayerStatsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(playerStatsControllerProvider);
    final appLocal = ref.watch(appLocalProvider);
    final controller = ref.read(playerStatsControllerProvider.notifier);

    return ExpansionTile(
      title: Text(appLocal.playerStats),
      children: [
        statsAsync.when(
          data: (stats) => Column(
            children: [
              ListTile(
                title: Text(appLocal.totalGames),
                trailing: Text('${stats.totalGames}'),
              ),
              ListTile(
                title: Text(appLocal.bestScore),
                trailing: Text('${stats.bestScore}'),
              ),
              ListTile(
                title: Text(appLocal.gamesWon),
                trailing: Text('${stats.gamesWon}'),
              ),
              ListTile(
                title: Text(appLocal.gamesLost),
                trailing: Text('${stats.gamesLost}'),
              ),
              if (stats.lastPlayedDate != null)
                ListTile(
                  title: Text(appLocal.lastPlayed),
                  trailing: Text(
                    DateFormat.yMMMd().format(stats.lastPlayedDate!),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(EzConstLayout.spacer),
                child: ElevatedButton(
                  onPressed: () async {
                    await controller.resetStats();
                  },
                  child: Text(appLocal.reset),
                ),
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
