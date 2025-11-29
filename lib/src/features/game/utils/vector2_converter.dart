// ignore_for_file: invalid_use_of_protected_member
// Note: Linter errors for buttonX/buttonY are expected until freezed code
// is regenerated. The properties will be available once build_runner
// successfully generates the updated freezed code.

import 'package:flame/components.dart';
import 'package:flutter_flame_starter/src/features/game/model/game_model.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Converter for [Vector2] to and from JSON.
class Vector2Converter implements JsonConverter<Vector2?, Map<String, dynamic>?> {
  /// Creates an instance of [Vector2Converter].
  const Vector2Converter();

  /// Converts a JSON map to a [Vector2].
  @override
  Vector2? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    final x = json['x'] as num?;
    final y = json['y'] as num?;
    if (x == null || y == null) return null;
    return Vector2(x.toDouble(), y.toDouble());
  }

  /// Converts a [Vector2] to a JSON map.
  @override
  Map<String, dynamic>? toJson(Vector2? object) {
    if (object == null) return null;
    return {
      'x': object.x,
      'y': object.y,
    };
  }
}

/// Extension methods on [GameModel] for Vector2 conversion.
extension GameModelVector2Extension on GameModel {
  /// Gets the button position as a [Vector2].
  /// Returns null if buttonX or buttonY is null.
  Vector2? getButtonPosition() {
    // Access properties through pattern matching to work with both variants
    return map(
      (value) {
        final x = value.buttonX;
        final y = value.buttonY;
        if (x == null || y == null) return null;
        return Vector2(x, y);
      },
      newGame: (value) {
        final x = value.buttonX;
        final y = value.buttonY;
        if (x == null || y == null) return null;
        return Vector2(x, y);
      },
    );
  }

  /// Creates a copy of [GameModel] with button position from [Vector2].
  /// If [position] is null, sets both buttonX and buttonY to null.
  GameModel copyWithButtonPosition(Vector2? position) {
    return map(
      (value) => value.copyWith(
        buttonX: position?.x,
        buttonY: position?.y,
      ),
      newGame: (value) => value.copyWith(
        buttonX: position?.x,
        buttonY: position?.y,
      ),
    );
  }
}

