// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_stats_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerStatsModel {

 int get totalGames; int get totalScore; int get bestScore; int get gamesWon; int get gamesLost; DateTime? get lastPlayedDate;
/// Create a copy of PlayerStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerStatsModelCopyWith<PlayerStatsModel> get copyWith => _$PlayerStatsModelCopyWithImpl<PlayerStatsModel>(this as PlayerStatsModel, _$identity);

  /// Serializes this PlayerStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerStatsModel&&(identical(other.totalGames, totalGames) || other.totalGames == totalGames)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.gamesWon, gamesWon) || other.gamesWon == gamesWon)&&(identical(other.gamesLost, gamesLost) || other.gamesLost == gamesLost)&&(identical(other.lastPlayedDate, lastPlayedDate) || other.lastPlayedDate == lastPlayedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalGames,totalScore,bestScore,gamesWon,gamesLost,lastPlayedDate);

@override
String toString() {
  return 'PlayerStatsModel(totalGames: $totalGames, totalScore: $totalScore, bestScore: $bestScore, gamesWon: $gamesWon, gamesLost: $gamesLost, lastPlayedDate: $lastPlayedDate)';
}


}

/// @nodoc
abstract mixin class $PlayerStatsModelCopyWith<$Res>  {
  factory $PlayerStatsModelCopyWith(PlayerStatsModel value, $Res Function(PlayerStatsModel) _then) = _$PlayerStatsModelCopyWithImpl;
@useResult
$Res call({
 int totalGames, int totalScore, int bestScore, int gamesWon, int gamesLost, DateTime? lastPlayedDate
});




}
/// @nodoc
class _$PlayerStatsModelCopyWithImpl<$Res>
    implements $PlayerStatsModelCopyWith<$Res> {
  _$PlayerStatsModelCopyWithImpl(this._self, this._then);

  final PlayerStatsModel _self;
  final $Res Function(PlayerStatsModel) _then;

/// Create a copy of PlayerStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalGames = null,Object? totalScore = null,Object? bestScore = null,Object? gamesWon = null,Object? gamesLost = null,Object? lastPlayedDate = freezed,}) {
  return _then(_self.copyWith(
totalGames: null == totalGames ? _self.totalGames : totalGames // ignore: cast_nullable_to_non_nullable
as int,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,gamesWon: null == gamesWon ? _self.gamesWon : gamesWon // ignore: cast_nullable_to_non_nullable
as int,gamesLost: null == gamesLost ? _self.gamesLost : gamesLost // ignore: cast_nullable_to_non_nullable
as int,lastPlayedDate: freezed == lastPlayedDate ? _self.lastPlayedDate : lastPlayedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerStatsModel].
extension PlayerStatsModelPatterns on PlayerStatsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerStatsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerStatsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerStatsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalGames,  int totalScore,  int bestScore,  int gamesWon,  int gamesLost,  DateTime? lastPlayedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerStatsModel() when $default != null:
return $default(_that.totalGames,_that.totalScore,_that.bestScore,_that.gamesWon,_that.gamesLost,_that.lastPlayedDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalGames,  int totalScore,  int bestScore,  int gamesWon,  int gamesLost,  DateTime? lastPlayedDate)  $default,) {final _that = this;
switch (_that) {
case _PlayerStatsModel():
return $default(_that.totalGames,_that.totalScore,_that.bestScore,_that.gamesWon,_that.gamesLost,_that.lastPlayedDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalGames,  int totalScore,  int bestScore,  int gamesWon,  int gamesLost,  DateTime? lastPlayedDate)?  $default,) {final _that = this;
switch (_that) {
case _PlayerStatsModel() when $default != null:
return $default(_that.totalGames,_that.totalScore,_that.bestScore,_that.gamesWon,_that.gamesLost,_that.lastPlayedDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerStatsModel implements PlayerStatsModel {
  const _PlayerStatsModel({this.totalGames = 0, this.totalScore = 0, this.bestScore = 0, this.gamesWon = 0, this.gamesLost = 0, this.lastPlayedDate});
  factory _PlayerStatsModel.fromJson(Map<String, dynamic> json) => _$PlayerStatsModelFromJson(json);

@override@JsonKey() final  int totalGames;
@override@JsonKey() final  int totalScore;
@override@JsonKey() final  int bestScore;
@override@JsonKey() final  int gamesWon;
@override@JsonKey() final  int gamesLost;
@override final  DateTime? lastPlayedDate;

/// Create a copy of PlayerStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerStatsModelCopyWith<_PlayerStatsModel> get copyWith => __$PlayerStatsModelCopyWithImpl<_PlayerStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerStatsModel&&(identical(other.totalGames, totalGames) || other.totalGames == totalGames)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.bestScore, bestScore) || other.bestScore == bestScore)&&(identical(other.gamesWon, gamesWon) || other.gamesWon == gamesWon)&&(identical(other.gamesLost, gamesLost) || other.gamesLost == gamesLost)&&(identical(other.lastPlayedDate, lastPlayedDate) || other.lastPlayedDate == lastPlayedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalGames,totalScore,bestScore,gamesWon,gamesLost,lastPlayedDate);

@override
String toString() {
  return 'PlayerStatsModel(totalGames: $totalGames, totalScore: $totalScore, bestScore: $bestScore, gamesWon: $gamesWon, gamesLost: $gamesLost, lastPlayedDate: $lastPlayedDate)';
}


}

/// @nodoc
abstract mixin class _$PlayerStatsModelCopyWith<$Res> implements $PlayerStatsModelCopyWith<$Res> {
  factory _$PlayerStatsModelCopyWith(_PlayerStatsModel value, $Res Function(_PlayerStatsModel) _then) = __$PlayerStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalGames, int totalScore, int bestScore, int gamesWon, int gamesLost, DateTime? lastPlayedDate
});




}
/// @nodoc
class __$PlayerStatsModelCopyWithImpl<$Res>
    implements _$PlayerStatsModelCopyWith<$Res> {
  __$PlayerStatsModelCopyWithImpl(this._self, this._then);

  final _PlayerStatsModel _self;
  final $Res Function(_PlayerStatsModel) _then;

/// Create a copy of PlayerStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalGames = null,Object? totalScore = null,Object? bestScore = null,Object? gamesWon = null,Object? gamesLost = null,Object? lastPlayedDate = freezed,}) {
  return _then(_PlayerStatsModel(
totalGames: null == totalGames ? _self.totalGames : totalGames // ignore: cast_nullable_to_non_nullable
as int,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as int,bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as int,gamesWon: null == gamesWon ? _self.gamesWon : gamesWon // ignore: cast_nullable_to_non_nullable
as int,gamesLost: null == gamesLost ? _self.gamesLost : gamesLost // ignore: cast_nullable_to_non_nullable
as int,lastPlayedDate: freezed == lastPlayedDate ? _self.lastPlayedDate : lastPlayedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
