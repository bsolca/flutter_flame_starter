import 'package:flutter_flame_starter/src/features/high_scores/data/high_score_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/high_scores/model/high_score_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'high_score_controller.codegen.g.dart';

/// Controller for high score business logic.
@riverpod
class HighScoreController extends _$HighScoreController {
  @override
  Future<List<HighScoreModel>> build() async {
    final repository = ref.read(highScoreRepositoryProvider);
    return repository.getHighScores();
  }

  /// Add a new high score.
  Future<void> addHighScore(HighScoreModel highScore) async {
    final repository = ref.read(highScoreRepositoryProvider);
    await repository.saveHighScore(highScore);
    ref.invalidateSelf();
  }

  /// Clear all high scores.
  Future<void> clearHighScores() async {
    final repository = ref.read(highScoreRepositoryProvider);
    await repository.clearHighScores();
    ref.invalidateSelf();
  }
}

