import 'package:flutter_flame_starter/src/features/game/service/game_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_controller.codegen.g.dart';

/// Controller for game state management.
@riverpod
class GameController extends _$GameController {
  @override
  GameService build() {
    return ref.read(gameServiceProvider.notifier);
  }

  /// Start the game.
  void startGame() {
    state.startGame();
  }

  /// Pause the game.
  void pauseGame() {
    state.pauseGame();
  }

  /// Resume the game.
  void resumeGame() {
    state.resumeGame();
  }

  /// Update the score.
  void updateScore(int newScore) {
    state.updateScore(newScore);
  }

  /// End the game.
  void endGame() {
    state.endGame();
  }

  /// Reset the game.
  void resetGame() {
    state.resetGame();
  }
}
