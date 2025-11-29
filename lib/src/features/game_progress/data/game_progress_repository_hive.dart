import 'dart:convert';

import 'package:flutter_flame_starter/src/features/game_progress/data/game_progress_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/game_progress/model/game_progress_model.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive/hive.dart';

/// Hive game progress repository implementation.
class GameProgressRepositoryHive implements GameProgressRepository {
  /// Hive game progress repository implementation.
  GameProgressRepositoryHive(this.box);

  /// Hive instance.
  final Box<String> box;

  @override
  Future<GameProgressModel?> getGameProgress() async {
    final progressJson = box.get(EzConstString.hiveGameProgress);
    if (progressJson == null) {
      return null;
    }

    final decoded = jsonDecode(progressJson);
    if (decoded is Map<String, dynamic>) {
      return GameProgressModel.fromJson(decoded);
    }

    return null;
  }

  @override
  Future<void> saveGameProgress(GameProgressModel progress) async {
    await box.put(
      EzConstString.hiveGameProgress,
      jsonEncode(progress.toJson()),
    );
  }

  @override
  Future<void> clearGameProgress() async {
    await box.delete(EzConstString.hiveGameProgress);
  }
}

