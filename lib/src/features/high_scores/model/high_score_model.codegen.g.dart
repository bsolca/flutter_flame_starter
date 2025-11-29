// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_score_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HighScoreModel _$HighScoreModelFromJson(Map<String, dynamic> json) =>
    _HighScoreModel(
      score: (json['score'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      playerName: json['playerName'] as String? ?? '',
    );

Map<String, dynamic> _$HighScoreModelToJson(_HighScoreModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'date': instance.date.toIso8601String(),
      'playerName': instance.playerName,
    };
