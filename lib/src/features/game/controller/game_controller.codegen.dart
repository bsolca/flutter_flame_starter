import 'dart:async';

import 'package:flutter_flame_starter/src/features/game/model/game_model.codegen.dart';
import 'package:flutter_flame_starter/src/features/game_progress/controller/game_progress_controller.codegen.dart';
import 'package:flutter_flame_starter/src/features/game_progress/model/game_progress_model.codegen.dart';
import 'package:flutter_flame_starter/src/features/high_scores/controller/high_score_controller.codegen.dart';
import 'package:flutter_flame_starter/src/features/high_scores/model/high_score_model.codegen.dart';
import 'package:flutter_flame_starter/src/features/player_stats/controller/player_stats_controller.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_controller.codegen.g.dart';

/// Controller for game business logic.
@riverpod
class GameController extends _$GameController {
  @override
  GameModel build() {
    return const GameModel.newGame();
  }

  /// Start the game.
  void startGame() {
    state = const GameModel(
      score: 0,
      isPaused: false,
      isGameOver: false,
    );
  }

  /// Pause the game.
  void pauseGame() {
    state = state.copyWith(isPaused: true);
    _saveGameProgress();
  }

  /// Resume the game.
  void resumeGame() {
    state = state.copyWith(isPaused: false);
  }

  /// Update the score.
  void updateScore(int newScore) {
    state = state.copyWith(score: newScore);
  }

  /// End the game.
  Future<void> endGame() async {
    state = state.copyWith(
      isGameOver: true,
      isPaused: true,
    );

    // Save high score
    final highScoreController =
        ref.read(highScoreControllerProvider.notifier);
    await highScoreController.addHighScore(
      HighScoreModel(
        score: state.score,
        date: DateTime.now(),
      ),
    );

    // Update player stats
    final playerStatsController =
        ref.read(playerStatsControllerProvider.notifier);
    await playerStatsController.updateGameStats(
      score: state.score,
      won: state.score > 0,
    );

    // Clear game progress
    final gameProgressController =
        ref.read(gameProgressControllerProvider.notifier);
    await gameProgressController.clearProgress();
  }

  /// Reset the game.
  void resetGame() {
    state = const GameModel.newGame();
  }

  /// Load saved game progress.
  Future<void> loadGameProgress() async {
    final gameProgressController =
        ref.read(gameProgressControllerProvider.notifier);
    final progress = await ref.read(gameProgressControllerProvider.future);

    if (progress != null) {
      state = GameModel(
        score: progress.score,
        isPaused: progress.isPaused,
        isGameOver: progress.isGameOver,
      );
    }
  }

  /// Save game progress.
  void _saveGameProgress() {
    unawaited(
      ref.read(gameProgressControllerProvider.notifier).saveProgress(
            GameProgressModel(
              score: state.score,
              isPaused: state.isPaused,
              isGameOver: state.isGameOver,
              savedAt: DateTime.now(),
            ),
          ),
    );
  }
}
