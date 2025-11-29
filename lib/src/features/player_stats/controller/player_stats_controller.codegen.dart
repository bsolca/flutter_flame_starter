import 'package:flutter_flame_starter/src/features/player_stats/data/player_stats_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/player_stats/model/player_stats_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_stats_controller.codegen.g.dart';

/// Controller for player stats business logic.
@riverpod
class PlayerStatsController extends _$PlayerStatsController {
  @override
  Future<PlayerStatsModel> build() async {
    final repository = ref.read(playerStatsRepositoryProvider);
    return repository.getPlayerStats();
  }

  /// Update stats after a game ends.
  Future<void> updateGameStats({
    required int score,
    required bool won,
  }) async {
    final repository = ref.read(playerStatsRepositoryProvider);
    await repository.updateStats(
      score: score,
      won: won,
      lost: !won,
    );
    if (ref.mounted) {
      ref.invalidateSelf();
    }
  }

  /// Reset all player stats.
  Future<void> resetStats() async {
    final repository = ref.read(playerStatsRepositoryProvider);
    await repository.savePlayerStats(const PlayerStatsModel());
    if (ref.mounted) {
      ref.invalidateSelf();
    }
  }
}
