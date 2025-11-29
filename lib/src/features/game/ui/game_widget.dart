import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/features/game/ui/game_component.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Widget that wraps the Flame game.
class FlameGameWidget extends ConsumerWidget {
  const FlameGameWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GameWidget.controlled(
      gameFactory: () => GameComponent(ref),
    );
  }
}
