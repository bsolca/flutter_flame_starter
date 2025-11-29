import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.codegen.freezed.dart';

@freezed
abstract class GameModel with _$GameModel {
  const factory GameModel({
    required int score,
    required bool isPaused,
    required bool isGameOver,
  }) = _GameModel;

  const factory GameModel.newGame({
    @Default(0) int score,
    @Default(false) bool isPaused,
    @Default(false) bool isGameOver,
  }) = _GameModelNewGame;
}
