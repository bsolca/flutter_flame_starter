import 'dart:convert';

import 'package:flutter_flame_starter/src/features/settings/data/game_settings_repository.codegen.dart';
import 'package:flutter_flame_starter/src/features/settings/model/game_settings_model.codegen.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Hive game settings repository implementation.
class GameSettingsRepositoryHive implements GameSettingsRepository {
  /// Hive game settings repository implementation.
  GameSettingsRepositoryHive(this.box);

  /// Hive instance.
  final Box<String> box;

  @override
  Future<GameSettingsModel> getGameSettings() async {
    final settingsJson = box.get(EzConstString.hiveGameSettings);
    if (settingsJson == null) {
      final defaultSettings = GameSettingsModel.defaultSettings();
      await saveGameSettings(defaultSettings);
      return defaultSettings;
    }

    final decoded = jsonDecode(settingsJson);
    if (decoded is Map<String, dynamic>) {
      return GameSettingsModel.fromJson(decoded);
    }

    return GameSettingsModel.defaultSettings();
  }

  @override
  Future<void> saveGameSettings(GameSettingsModel settings) async {
    await box.put(
      EzConstString.hiveGameSettings,
      jsonEncode(settings.toJson()),
    );
  }
}
