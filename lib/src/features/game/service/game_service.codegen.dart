import 'package:flutter_flame_starter/src/features/game/model/game_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_service.codegen.g.dart';

/// Service for game business logic.
@riverpod
class GameService extends _$GameService {
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
  void endGame() {
    state = state.copyWith(
      isGameOver: true,
      isPaused: true,
    );
  }

  /// Reset the game.
  void resetGame() {
    state = const GameModel.newGame();
  }
}
