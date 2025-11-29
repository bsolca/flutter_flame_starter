import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_stats_model.codegen.freezed.dart';

part 'player_stats_model.codegen.g.dart';

@freezed
abstract class PlayerStatsModel with _$PlayerStatsModel {
  const factory PlayerStatsModel({
    @Default(0) int totalGames,
    @Default(0) int totalScore,
    @Default(0) int bestScore,
    @Default(0) int gamesWon,
    @Default(0) int gamesLost,
    DateTime? lastPlayedDate,
  }) = _PlayerStatsModel;

  factory PlayerStatsModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsModelFromJson(json);
}
