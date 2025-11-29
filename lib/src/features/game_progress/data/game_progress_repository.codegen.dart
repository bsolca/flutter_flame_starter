import 'package:flutter_flame_starter/src/features/game_progress/data/game_progress_repository_hive.dart';
import 'package:flutter_flame_starter/src/features/game_progress/data/hive_provider.codegen.dart';
import 'package:flutter_flame_starter/src/features/game_progress/model/game_progress_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_progress_repository.codegen.g.dart';

/// Repository interface for game progress.
abstract class GameProgressRepository {
  Future<GameProgressModel?> getGameProgress();

  Future<void> saveGameProgress(GameProgressModel progress);

  Future<void> clearGameProgress();
}

/// Provider for game progress repository.
@riverpod
GameProgressRepository gameProgressRepository(Ref ref) {
  final box = ref.watch(hiveGameProgressBoxProvider);
  return GameProgressRepositoryHive(box);
}
