// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_progress_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameProgressModel {

 int get score; bool get isPaused; bool get isGameOver; DateTime get savedAt; String get gameState;
/// Create a copy of GameProgressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameProgressModelCopyWith<GameProgressModel> get copyWith => _$GameProgressModelCopyWithImpl<GameProgressModel>(this as GameProgressModel, _$identity);

  /// Serializes this GameProgressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameProgressModel&&(identical(other.score, score) || other.score == score)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.gameState, gameState) || other.gameState == gameState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,isPaused,isGameOver,savedAt,gameState);

@override
String toString() {
  return 'GameProgressModel(score: $score, isPaused: $isPaused, isGameOver: $isGameOver, savedAt: $savedAt, gameState: $gameState)';
}


}

/// @nodoc
abstract mixin class $GameProgressModelCopyWith<$Res>  {
  factory $GameProgressModelCopyWith(GameProgressModel value, $Res Function(GameProgressModel) _then) = _$GameProgressModelCopyWithImpl;
@useResult
$Res call({
 int score, bool isPaused, bool isGameOver, DateTime savedAt, String gameState
});




}
/// @nodoc
class _$GameProgressModelCopyWithImpl<$Res>
    implements $GameProgressModelCopyWith<$Res> {
  _$GameProgressModelCopyWithImpl(this._self, this._then);

  final GameProgressModel _self;
  final $Res Function(GameProgressModel) _then;

/// Create a copy of GameProgressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? isPaused = null,Object? isGameOver = null,Object? savedAt = null,Object? gameState = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GameProgressModel].
extension GameProgressModelPatterns on GameProgressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameProgressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameProgressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameProgressModel value)  $default,){
final _that = this;
switch (_that) {
case _GameProgressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameProgressModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameProgressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  bool isPaused,  bool isGameOver,  DateTime savedAt,  String gameState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameProgressModel() when $default != null:
return $default(_that.score,_that.isPaused,_that.isGameOver,_that.savedAt,_that.gameState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  bool isPaused,  bool isGameOver,  DateTime savedAt,  String gameState)  $default,) {final _that = this;
switch (_that) {
case _GameProgressModel():
return $default(_that.score,_that.isPaused,_that.isGameOver,_that.savedAt,_that.gameState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  bool isPaused,  bool isGameOver,  DateTime savedAt,  String gameState)?  $default,) {final _that = this;
switch (_that) {
case _GameProgressModel() when $default != null:
return $default(_that.score,_that.isPaused,_that.isGameOver,_that.savedAt,_that.gameState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameProgressModel implements GameProgressModel {
  const _GameProgressModel({required this.score, required this.isPaused, required this.isGameOver, required this.savedAt, this.gameState = ''});
  factory _GameProgressModel.fromJson(Map<String, dynamic> json) => _$GameProgressModelFromJson(json);

@override final  int score;
@override final  bool isPaused;
@override final  bool isGameOver;
@override final  DateTime savedAt;
@override@JsonKey() final  String gameState;

/// Create a copy of GameProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameProgressModelCopyWith<_GameProgressModel> get copyWith => __$GameProgressModelCopyWithImpl<_GameProgressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameProgressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameProgressModel&&(identical(other.score, score) || other.score == score)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.gameState, gameState) || other.gameState == gameState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,isPaused,isGameOver,savedAt,gameState);

@override
String toString() {
  return 'GameProgressModel(score: $score, isPaused: $isPaused, isGameOver: $isGameOver, savedAt: $savedAt, gameState: $gameState)';
}


}

/// @nodoc
abstract mixin class _$GameProgressModelCopyWith<$Res> implements $GameProgressModelCopyWith<$Res> {
  factory _$GameProgressModelCopyWith(_GameProgressModel value, $Res Function(_GameProgressModel) _then) = __$GameProgressModelCopyWithImpl;
@override @useResult
$Res call({
 int score, bool isPaused, bool isGameOver, DateTime savedAt, String gameState
});




}
/// @nodoc
class __$GameProgressModelCopyWithImpl<$Res>
    implements _$GameProgressModelCopyWith<$Res> {
  __$GameProgressModelCopyWithImpl(this._self, this._then);

  final _GameProgressModel _self;
  final $Res Function(_GameProgressModel) _then;

/// Create a copy of GameProgressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? isPaused = null,Object? isGameOver = null,Object? savedAt = null,Object? gameState = null,}) {
  return _then(_GameProgressModel(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime,gameState: null == gameState ? _self.gameState : gameState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
