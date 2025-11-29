import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_progress_model.codegen.freezed.dart';

part 'game_progress_model.codegen.g.dart';

@freezed
abstract class GameProgressModel with _$GameProgressModel {
  const factory GameProgressModel({
    required int score,
    required bool isPaused,
    required bool isGameOver,
    required DateTime savedAt,
    @Default('') String gameState,
  }) = _GameProgressModel;

  factory GameProgressModel.fromJson(Map<String, dynamic> json) =>
      _$GameProgressModelFromJson(json);
}
