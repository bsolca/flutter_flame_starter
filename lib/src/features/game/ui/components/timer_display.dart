import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flutter_flame_starter/src/features/game/controller/game_controller.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Timer display component showing remaining time.
class TimerDisplay extends Component with HasGameReference {
  TimerDisplay({required this.ref});

  final WidgetRef ref;
  late TextComponent _textComponent;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    _textComponent = TextComponent(
      text: _formatTime(10.0),
      textRenderer: TextPaint(
        style: const TextStyle(
          fontSize: 48,
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.bold,
        ),
      ),
      anchor: Anchor.topCenter,
      position: Vector2(game.size.x / 2, 50),
    );
    add(_textComponent);
  }

  @override
  void update(double dt) {
    super.update(dt);
    final gameState = ref.read(gameControllerProvider);
    _textComponent.text = _formatTime(gameState.remainingTime);
  }

  String _formatTime(double seconds) {
    return seconds.toStringAsFixed(1);
  }
}
