import 'package:flutter_flame_starter/src/features/settings/data/game_settings_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/settings/model/game_settings_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_controller.codegen.g.dart';

/// Controller for game settings business logic.
@riverpod
class SettingsController extends _$SettingsController {
  @override
  Future<GameSettingsModel> build() async {
    final repository = ref.read(gameSettingsRepositoryProvider);
    return repository.getGameSettings();
  }

  /// Update game settings.
  Future<void> updateSettings(GameSettingsModel settings) async {
    final repository = ref.read(gameSettingsRepositoryProvider);
    await repository.saveGameSettings(settings);
    ref.invalidateSelf();
  }

  /// Toggle sound enabled.
  Future<void> toggleSound() async {
    final current = await future;
    await updateSettings(current.copyWith(soundEnabled: !current.soundEnabled));
  }

  /// Toggle music enabled.
  Future<void> toggleMusic() async {
    final current = await future;
    await updateSettings(current.copyWith(musicEnabled: !current.musicEnabled));
  }

  /// Update difficulty.
  Future<void> updateDifficulty(String difficulty) async {
    final current = await future;
    await updateSettings(current.copyWith(difficulty: difficulty));
  }
}
