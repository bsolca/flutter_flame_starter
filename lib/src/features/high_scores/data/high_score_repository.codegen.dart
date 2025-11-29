import 'package:flutter_flame_starter/src/features/high_scores/data/high_score_repository_hive.dart';
import 'package:flutter_flame_starter/src/features/high_scores/data/hive_provider.codegen.dart';
import 'package:flutter_flame_starter/src/features/high_scores/model/high_score_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'high_score_repository.codegen.g.dart';

/// Repository interface for high scores.
abstract class HighScoreRepository {
  Future<List<HighScoreModel>> getHighScores();
  Future<void> saveHighScore(HighScoreModel highScore);
  Future<void> clearHighScores();
}

/// Provider for high score repository.
@riverpod
HighScoreRepository highScoreRepository(Ref ref) {
  final box = ref.watch(hiveHighScoresBoxProvider);
  return HighScoreRepositoryHive(box);
}

