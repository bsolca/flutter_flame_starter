import 'package:flame/game.dart';
import 'package:flutter_flame_starter/src/features/game/service/game_service.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Main game component using Flame.
class GameComponent extends FlameGame {
  GameComponent(this.ref);

  final WidgetRef ref;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // Add game components here
  }

  @override
  void update(double dt) {
    super.update(dt);
    final gameState = ref.read(gameServiceProvider);
    if (gameState.isPaused || gameState.isGameOver) {
      pauseEngine();
    } else {
      resumeEngine();
    }
  }
}
