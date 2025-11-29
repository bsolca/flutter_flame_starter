// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_settings_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameSettingsModel _$GameSettingsModelFromJson(Map<String, dynamic> json) =>
    _GameSettingsModel(
      soundEnabled: json['soundEnabled'] as bool? ?? true,
      musicEnabled: json['musicEnabled'] as bool? ?? true,
      difficulty: json['difficulty'] as String? ?? 'easy',
      soundVolume: (json['soundVolume'] as num?)?.toDouble() ?? 1.0,
      musicVolume: (json['musicVolume'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$GameSettingsModelToJson(_GameSettingsModel instance) =>
    <String, dynamic>{
      'soundEnabled': instance.soundEnabled,
      'musicEnabled': instance.musicEnabled,
      'difficulty': instance.difficulty,
      'soundVolume': instance.soundVolume,
      'musicVolume': instance.musicVolume,
    };
