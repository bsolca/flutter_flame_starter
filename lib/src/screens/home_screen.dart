import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/home/widgets/game_progress_section.dart';
import 'package:flutter_flame_starter/src/features/home/widgets/high_scores_section.dart';
import 'package:flutter_flame_starter/src/features/home/widgets/player_stats_section.dart';
import 'package:flutter_flame_starter/src/features/home/widgets/settings_section.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Screen that displays the home page with all features.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLocal = ref.watch(appLocalProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal.homeTitle),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(EzConstLayout.spacer),
            child: ElevatedButton(
              onPressed: () => context.go('/game'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(
                  EzConstLayout.buttonHeight,
                ),
              ),
              child: const Text('Start Game'),
            ),
          ),
          const HighScoresSection(),
          const PlayerStatsSection(),
          const SettingsSection(),
          const GameProgressSection(),
        ],
      ),
    );
  }
}
