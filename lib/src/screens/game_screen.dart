import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/game/controller/game_controller.codegen.dart';
import 'package:flutter_flame_starter/src/features/game/ui/game_component.dart';
import 'package:flutter_flame_starter/src/features/high_scores/controller/high_score_controller.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_layout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Screen that displays the game.
class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  GameComponent? _gameComponent;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gameComponent?.startGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    final gameState = ref.watch(gameControllerProvider);
    final highScoresAsync = ref.watch(highScoreControllerProvider);

    return Scaffold(
      body: Stack(
        children: [
          GameWidget.controlled(
            gameFactory: () {
              var gameComponent = _gameComponent;
              if (gameComponent == null) {
                gameComponent = GameComponent(ref);
                _gameComponent = gameComponent;
              }
              return gameComponent;
            },
          ),
          if (gameState.isGameOver)
            Container(
              color: Colors.black.withValues(alpha: 0.7),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Game Over!',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: EzConstLayout.spacer),
                    Text(
                      'Score: ${gameState.score}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: EzConstLayout.spacer),
                    highScoresAsync.when(
                      data: (scores) {
                        if (scores.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        final highestScore = scores
                            .map((s) => s.score)
                            .reduce((a, b) => a > b ? a : b);
                        return Text(
                          'Highest Score: $highestScore',
                          style: Theme.of(context).textTheme.headlineSmall,
                        );
                      },
                      loading: () => const SizedBox.shrink(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    SizedBox(height: EzConstLayout.spacerMedium),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(gameControllerProvider.notifier)
                            .resetGame();
                        _gameComponent?.startGame();
                      },
                      child: const Text('Play Again'),
                    ),
                    SizedBox(height: EzConstLayout.spacer),
                    ElevatedButton(
                      onPressed: () => context.go('/home'),
                      child: const Text('Quit'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

