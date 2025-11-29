import 'dart:convert';

import 'package:flutter_flame_starter/src/features/high_scores/data/high_score_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/high_scores/model/high_score_model.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Hive high score repository implementation.
class HighScoreRepositoryHive implements HighScoreRepository {
  /// Hive high score repository implementation.
  HighScoreRepositoryHive(this.box);

  /// Hive instance.
  final Box<String> box;

  @override
  Future<List<HighScoreModel>> getHighScores() async {
    final scoresJson = box.get(EzConstString.hiveHighScores);
    if (scoresJson == null) {
      return [];
    }

    final decoded = jsonDecode(scoresJson);
    if (decoded is List) {
      return decoded
          .map(
            (item) => HighScoreModel.fromJson(
              item as Map<String, dynamic>,
            ),
          )
          .toList()
        ..sort((a, b) => b.score.compareTo(a.score));
    }

    return [];
  }

  @override
  Future<void> saveHighScore(HighScoreModel highScore) async {
    final scores = await getHighScores();
    scores.add(highScore);
    scores.sort((a, b) => b.score.compareTo(a.score));

    // Keep only top 100 scores
    final topScores = scores.take(100).toList();

    await box.put(
      EzConstString.hiveHighScores,
      jsonEncode(
        topScores.map((score) => score.toJson()).toList(),
      ),
    );
  }

  @override
  Future<void> clearHighScores() async {
    await box.delete(EzConstString.hiveHighScores);
  }
}
