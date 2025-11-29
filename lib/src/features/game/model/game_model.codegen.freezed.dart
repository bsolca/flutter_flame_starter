// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameModel {

 int get score; bool get isPaused; bool get isGameOver;
/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameModelCopyWith<GameModel> get copyWith => _$GameModelCopyWithImpl<GameModel>(this as GameModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameModel&&(identical(other.score, score) || other.score == score)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,score,isPaused,isGameOver);

@override
String toString() {
  return 'GameModel(score: $score, isPaused: $isPaused, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class $GameModelCopyWith<$Res>  {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) _then) = _$GameModelCopyWithImpl;
@useResult
$Res call({
 int score, bool isPaused, bool isGameOver
});




}
/// @nodoc
class _$GameModelCopyWithImpl<$Res>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._self, this._then);

  final GameModel _self;
  final $Res Function(GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? isPaused = null,Object? isGameOver = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GameModel].
extension GameModelPatterns on GameModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameModel value)?  $default,{TResult Function( _GameModelNewGame value)?  newGame,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that);case _GameModelNewGame() when newGame != null:
return newGame(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameModel value)  $default,{required TResult Function( _GameModelNewGame value)  newGame,}){
final _that = this;
switch (_that) {
case _GameModel():
return $default(_that);case _GameModelNewGame():
return newGame(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameModel value)?  $default,{TResult? Function( _GameModelNewGame value)?  newGame,}){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that);case _GameModelNewGame() when newGame != null:
return newGame(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  bool isPaused,  bool isGameOver)?  $default,{TResult Function( int score,  bool isPaused,  bool isGameOver)?  newGame,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.score,_that.isPaused,_that.isGameOver);case _GameModelNewGame() when newGame != null:
return newGame(_that.score,_that.isPaused,_that.isGameOver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  bool isPaused,  bool isGameOver)  $default,{required TResult Function( int score,  bool isPaused,  bool isGameOver)  newGame,}) {final _that = this;
switch (_that) {
case _GameModel():
return $default(_that.score,_that.isPaused,_that.isGameOver);case _GameModelNewGame():
return newGame(_that.score,_that.isPaused,_that.isGameOver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  bool isPaused,  bool isGameOver)?  $default,{TResult? Function( int score,  bool isPaused,  bool isGameOver)?  newGame,}) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.score,_that.isPaused,_that.isGameOver);case _GameModelNewGame() when newGame != null:
return newGame(_that.score,_that.isPaused,_that.isGameOver);case _:
  return null;

}
}

}

/// @nodoc


class _GameModel implements GameModel {
  const _GameModel({required this.score, required this.isPaused, required this.isGameOver});
  

@override final  int score;
@override final  bool isPaused;
@override final  bool isGameOver;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameModelCopyWith<_GameModel> get copyWith => __$GameModelCopyWithImpl<_GameModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameModel&&(identical(other.score, score) || other.score == score)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,score,isPaused,isGameOver);

@override
String toString() {
  return 'GameModel(score: $score, isPaused: $isPaused, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class _$GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelCopyWith(_GameModel value, $Res Function(_GameModel) _then) = __$GameModelCopyWithImpl;
@override @useResult
$Res call({
 int score, bool isPaused, bool isGameOver
});




}
/// @nodoc
class __$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(this._self, this._then);

  final _GameModel _self;
  final $Res Function(_GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? isPaused = null,Object? isGameOver = null,}) {
  return _then(_GameModel(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GameModelNewGame implements GameModel {
  const _GameModelNewGame({this.score = 0, this.isPaused = false, this.isGameOver = false});
  

@override@JsonKey() final  int score;
@override@JsonKey() final  bool isPaused;
@override@JsonKey() final  bool isGameOver;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameModelNewGameCopyWith<_GameModelNewGame> get copyWith => __$GameModelNewGameCopyWithImpl<_GameModelNewGame>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameModelNewGame&&(identical(other.score, score) || other.score == score)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,score,isPaused,isGameOver);

@override
String toString() {
  return 'GameModel.newGame(score: $score, isPaused: $isPaused, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class _$GameModelNewGameCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelNewGameCopyWith(_GameModelNewGame value, $Res Function(_GameModelNewGame) _then) = __$GameModelNewGameCopyWithImpl;
@override @useResult
$Res call({
 int score, bool isPaused, bool isGameOver
});




}
/// @nodoc
class __$GameModelNewGameCopyWithImpl<$Res>
    implements _$GameModelNewGameCopyWith<$Res> {
  __$GameModelNewGameCopyWithImpl(this._self, this._then);

  final _GameModelNewGame _self;
  final $Res Function(_GameModelNewGame) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? isPaused = null,Object? isGameOver = null,}) {
  return _then(_GameModelNewGame(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
