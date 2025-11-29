// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerStatsModel _$PlayerStatsModelFromJson(Map<String, dynamic> json) =>
    _PlayerStatsModel(
      totalGames: (json['totalGames'] as num?)?.toInt() ?? 0,
      totalScore: (json['totalScore'] as num?)?.toInt() ?? 0,
      bestScore: (json['bestScore'] as num?)?.toInt() ?? 0,
      gamesWon: (json['gamesWon'] as num?)?.toInt() ?? 0,
      gamesLost: (json['gamesLost'] as num?)?.toInt() ?? 0,
      lastPlayedDate: json['lastPlayedDate'] == null
          ? null
          : DateTime.parse(json['lastPlayedDate'] as String),
    );

Map<String, dynamic> _$PlayerStatsModelToJson(_PlayerStatsModel instance) =>
    <String, dynamic>{
      'totalGames': instance.totalGames,
      'totalScore': instance.totalScore,
      'bestScore': instance.bestScore,
      'gamesWon': instance.gamesWon,
      'gamesLost': instance.gamesLost,
      'lastPlayedDate': instance.lastPlayedDate?.toIso8601String(),
    };
