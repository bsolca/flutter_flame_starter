import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
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
  static const double _gameDuration = 10.0;
  static const double _buttonSize = 80.0;
  static const double _updateInterval = 0.05; // Update every 50ms

  double _accumulatedTime = 0.0;

  @override
  GameModel build() {
    return const GameModel.newGame();
  }

  /// Start the game.
  void startGame(Vector2 gameSize) {
    _accumulatedTime = 0.0;
    final position = _generateRandomPosition(gameSize);
    state = GameModel(
      score: 0,
      isPaused: false,
      isGameOver: false,
      remainingTime: _gameDuration,
      buttonX: position.x,
      buttonY: position.y,
    );
  }

  /// Update the timer.
  void updateTimer(double dt) {
    if (state.isPaused || state.isGameOver) return;

    _accumulatedTime += dt;
    if (_accumulatedTime >= _updateInterval) {
      final newTime = state.remainingTime - _accumulatedTime;
      _accumulatedTime = 0.0;

      if (newTime <= 0) {
        unawaited(endGame());
      } else {
        // Defer state update to avoid modifying provider during build
        Future(() {
          state = state.copyWith(remainingTime: newTime);
        });
      }
    }
  }

  /// Handle button click.
  void onButtonClicked(Vector2 gameSize) {
    if (state.isPaused || state.isGameOver) return;

    final position = _generateRandomPosition(gameSize);
    state = state.copyWith(
      score: state.score + 1,
      buttonX: position.x,
      buttonY: position.y,
    );
  }

  /// Generate random button position.
  Vector2 _generateRandomPosition(Vector2 gameSize) {
    final random = Random();
    final maxX = gameSize.x - _buttonSize;
    final maxY = gameSize.y - _buttonSize;
    return Vector2(
      random.nextDouble() * maxX + _buttonSize / 2,
      random.nextDouble() * maxY + _buttonSize / 2,
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
      remainingTime: 0.0,
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
    _accumulatedTime = 0.0;
    state = const GameModel.newGame();
  }

  /// Load saved game progress.
  Future<void> loadGameProgress() async {
    final progress = await ref.read(gameProgressControllerProvider.future);

    if (progress != null) {
      state = GameModel(
        score: progress.score,
        isPaused: progress.isPaused,
        isGameOver: progress.isGameOver,
        remainingTime: progress.isGameOver ? 0.0 : _gameDuration,
        buttonX: null,
        buttonY: null,
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
