import 'package:flutter_flame_starter/src/features/player_stats/data/hive_provider.codegen.dart';
import 'package:flutter_flame_starter/src/features/player_stats/data/player_stats_repository_hive.dart';
import 'package:flutter_flame_starter/src/features/player_stats/model/player_stats_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_stats_repository.codegen.g.dart';

/// Repository interface for player stats.
abstract class PlayerStatsRepository {
  Future<PlayerStatsModel> getPlayerStats();

  Future<void> savePlayerStats(PlayerStatsModel stats);

  Future<void> updateStats({
    int? score,
    bool? won,
    bool? lost,
  });
}

/// Provider for player stats repository.
@riverpod
PlayerStatsRepository playerStatsRepository(Ref ref) {
  final box = ref.watch(hivePlayerStatsBoxProvider);
  return PlayerStatsRepositoryHive(box);
}
