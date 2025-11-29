// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_progress_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameProgressModel _$GameProgressModelFromJson(Map<String, dynamic> json) =>
    _GameProgressModel(
      score: (json['score'] as num).toInt(),
      isPaused: json['isPaused'] as bool,
      isGameOver: json['isGameOver'] as bool,
      savedAt: DateTime.parse(json['savedAt'] as String),
      gameState: json['gameState'] as String? ?? '',
    );

Map<String, dynamic> _$GameProgressModelToJson(_GameProgressModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'isPaused': instance.isPaused,
      'isGameOver': instance.isGameOver,
      'savedAt': instance.savedAt.toIso8601String(),
      'gameState': instance.gameState,
    };
