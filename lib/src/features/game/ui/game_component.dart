import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter_flame_starter/src/features/game/controller/game_controller.codegen.dart';
import 'package:flutter_flame_starter/src/features/game/ui/components/clickable_button.dart';
import 'package:flutter_flame_starter/src/features/game/ui/components/timer_display.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Main game component using Flame.
class GameComponent extends FlameGame {
  GameComponent(this.ref);

  final WidgetRef ref;
  late TimerDisplay _timerDisplay;
  ClickableButton? _button;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    _timerDisplay = TimerDisplay(ref: ref);
    add(_timerDisplay);
  }

  @override
  void update(double dt) {
    super.update(dt);
    final gameState = ref.read(gameControllerProvider);
    final controller = ref.read(gameControllerProvider.notifier);

    if (!gameState.isPaused && !gameState.isGameOver) {
      controller.updateTimer(dt);
    }

    if (gameState.isPaused || gameState.isGameOver) {
      pauseEngine();
    } else {
      resumeEngine();
    }

    // Update button position
    final buttonX = gameState.buttonX;
    final buttonY = gameState.buttonY;
    if (buttonX != null && buttonY != null) {
      final buttonPosition = Vector2(buttonX, buttonY);
      final button = _button;
      if (button == null) {
        final newButton = ClickableButton(
          ref: ref,
          position: buttonPosition,
        );
        _button = newButton;
        add(newButton);
      } else {
        button.position = buttonPosition;
      }
    } else {
      final button = _button;
      if (button != null) {
        button.removeFromParent();
        _button = null;
      }
    }
  }

  /// Start the game.
  void startGame() {
    final controller = ref.read(gameControllerProvider.notifier);
    controller.startGame(size);
  }
}
