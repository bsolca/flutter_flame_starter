import 'package:freezed_annotation/freezed_annotation.dart';

part 'high_score_model.codegen.freezed.dart';

part 'high_score_model.codegen.g.dart';

@freezed
abstract class HighScoreModel with _$HighScoreModel {
  const factory HighScoreModel({
    required int score,
    required DateTime date,
    @Default('') String playerName,
  }) = _HighScoreModel;

  factory HighScoreModel.fromJson(Map<String, dynamic> json) =>
      _$HighScoreModelFromJson(json);
}
