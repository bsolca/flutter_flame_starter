import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings_model.codegen.freezed.dart';

part 'game_settings_model.codegen.g.dart';

@freezed
abstract class GameSettingsModel with _$GameSettingsModel {
  const factory GameSettingsModel({
    @Default(true) bool soundEnabled,
    @Default(true) bool musicEnabled,
    @Default('easy') String difficulty,
    @Default(1.0) double soundVolume,
    @Default(1.0) double musicVolume,
  }) = _GameSettingsModel;

  factory GameSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$GameSettingsModelFromJson(json);

  factory GameSettingsModel.defaultSettings() => const GameSettingsModel();
}
