import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter_flame_starter/src/features/game/controller/game_controller.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Clickable button component that appears randomly on screen.
class ClickableButton extends RectangleComponent
    with HasGameReference, TapCallbacks {
  ClickableButton({
    required this.ref,
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2.all(80),
          anchor: Anchor.center,
        );

  final WidgetRef ref;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    paint = Paint()..color = const Color(0xFF4CAF50);
  }

  @override
  bool onTapDown(TapDownEvent event) {
    final gameState = ref.read(gameControllerProvider);
    if (gameState.isPaused || gameState.isGameOver) {
      return false;
    }

    final gameSize = game.size;
    ref.read(gameControllerProvider.notifier).onButtonClicked(gameSize);
    return true;
  }
}
