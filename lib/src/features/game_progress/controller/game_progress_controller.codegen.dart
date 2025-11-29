import 'package:flutter_flame_starter/src/features/game_progress/data/game_progress_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/game_progress/model/game_progress_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_progress_controller.codegen.g.dart';

/// Controller for game progress business logic.
@riverpod
class GameProgressController extends _$GameProgressController {
  @override
  Future<GameProgressModel?> build() async {
    final repository = ref.read(gameProgressRepositoryProvider);
    return repository.getGameProgress();
  }

  /// Save game progress.
  Future<void> saveProgress(GameProgressModel progress) async {
    final repository = ref.read(gameProgressRepositoryProvider);
    await repository.saveGameProgress(progress);
    if (ref.mounted) {
      ref.invalidateSelf();
    }
  }

  /// Clear saved game progress.
  Future<void> clearProgress() async {
    final repository = ref.read(gameProgressRepositoryProvider);
    await repository.clearGameProgress();
    if (ref.mounted) {
      ref.invalidateSelf();
    }
  }
}
