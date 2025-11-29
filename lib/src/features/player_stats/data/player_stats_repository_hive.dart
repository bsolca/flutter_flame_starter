import 'dart:convert';

import 'package:flutter_flame_starter/src/features/player_stats/data/player_stats_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/player_stats/model/player_stats_model.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive/hive.dart';

/// Hive player stats repository implementation.
class PlayerStatsRepositoryHive implements PlayerStatsRepository {
  /// Hive player stats repository implementation.
  PlayerStatsRepositoryHive(this.box);

  /// Hive instance.
  final Box<String> box;

  @override
  Future<PlayerStatsModel> getPlayerStats() async {
    final statsJson = box.get(EzConstString.hivePlayerStats);
    if (statsJson == null) {
      return const PlayerStatsModel();
    }

    final decoded = jsonDecode(statsJson);
    if (decoded is Map<String, dynamic>) {
      return PlayerStatsModel.fromJson(decoded);
    }

    return const PlayerStatsModel();
  }

  @override
  Future<void> savePlayerStats(PlayerStatsModel stats) async {
    await box.put(
      EzConstString.hivePlayerStats,
      jsonEncode(stats.toJson()),
    );
  }

  @override
  Future<void> updateStats({
    int? score,
    bool? won,
    bool? lost,
  }) async {
    final currentStats = await getPlayerStats();

    final updatedStats = currentStats.copyWith(
      totalGames: currentStats.totalGames + 1,
      totalScore: score != null
          ? currentStats.totalScore + score
          : currentStats.totalScore,
      bestScore: score != null && score > currentStats.bestScore
          ? score
          : currentStats.bestScore,
      gamesWon: won == true
          ? currentStats.gamesWon + 1
          : currentStats.gamesWon,
      gamesLost: lost == true
          ? currentStats.gamesLost + 1
          : currentStats.gamesLost,
      lastPlayedDate: DateTime.now(),
    );

    await savePlayerStats(updatedStats);
  }
}

