import 'package:flutter_flame_starter/src/features/settings/data/game_settings_repository_hive.dart';
import 'package:flutter_flame_starter/src/features/settings/data/hive_provider.codegen.dart';
import 'package:flutter_flame_starter/src/features/settings/model/game_settings_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_settings_repository.codegen.g.dart';

/// Repository interface for game settings.
abstract class GameSettingsRepository {
  Future<GameSettingsModel> getGameSettings();
  Future<void> saveGameSettings(GameSettingsModel settings);
}

/// Provider for game settings repository.
@riverpod
GameSettingsRepository gameSettingsRepository(Ref ref) {
  final box = ref.watch(hiveGameSettingsBoxProvider);
  return GameSettingsRepositoryHive(box);
}

