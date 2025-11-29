import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/game/controller/game_controller.codegen.dart';
import 'package:flutter_flame_starter/src/features/game/ui/game_widget.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Screen that displays the game.
class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameControllerProvider);
    final appLocal = ref.watch(appLocalProvider);
    final gameController = ref.read(gameControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocal.gameTitle),
      ),
      body: Column(
        children: [
          // Game stats
          Padding(
            padding: const EdgeInsets.all(EzConstLayout.spacer),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${appLocal.score}: ${gameState.score}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                if (gameState.isPaused)
                  Text(
                    appLocal.pauseGame,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                if (gameState.isGameOver)
                  Text(
                    appLocal.gameOver,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
              ],
            ),
          ),
          // Game widget
          const Expanded(
            child: FlameGameWidget(),
          ),
          // Controls
          Padding(
            padding: const EdgeInsets.all(EzConstLayout.spacer),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (!gameState.isGameOver)
                  ElevatedButton(
                    onPressed: gameState.isPaused
                        ? gameController.resumeGame
                        : gameController.pauseGame,
                    child: Text(
                      gameState.isPaused
                          ? appLocal.resumeGame
                          : appLocal.pauseGame,
                    ),
                  ),
                ElevatedButton(
                  onPressed: gameState.isGameOver
                      ? gameController.startGame
                      : gameController.endGame,
                  child: Text(
                    gameState.isGameOver
                        ? appLocal.startGame
                        : appLocal.gameOver,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
