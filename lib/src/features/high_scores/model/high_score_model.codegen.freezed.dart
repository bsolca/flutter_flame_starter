// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'high_score_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HighScoreModel {

 int get score; DateTime get date; String get playerName;
/// Create a copy of HighScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighScoreModelCopyWith<HighScoreModel> get copyWith => _$HighScoreModelCopyWithImpl<HighScoreModel>(this as HighScoreModel, _$identity);

  /// Serializes this HighScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.date, date) || other.date == date)&&(identical(other.playerName, playerName) || other.playerName == playerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,date,playerName);

@override
String toString() {
  return 'HighScoreModel(score: $score, date: $date, playerName: $playerName)';
}


}

/// @nodoc
abstract mixin class $HighScoreModelCopyWith<$Res>  {
  factory $HighScoreModelCopyWith(HighScoreModel value, $Res Function(HighScoreModel) _then) = _$HighScoreModelCopyWithImpl;
@useResult
$Res call({
 int score, DateTime date, String playerName
});




}
/// @nodoc
class _$HighScoreModelCopyWithImpl<$Res>
    implements $HighScoreModelCopyWith<$Res> {
  _$HighScoreModelCopyWithImpl(this._self, this._then);

  final HighScoreModel _self;
  final $Res Function(HighScoreModel) _then;

/// Create a copy of HighScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? date = null,Object? playerName = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HighScoreModel].
extension HighScoreModelPatterns on HighScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HighScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HighScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HighScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _HighScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HighScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _HighScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score,  DateTime date,  String playerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HighScoreModel() when $default != null:
return $default(_that.score,_that.date,_that.playerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score,  DateTime date,  String playerName)  $default,) {final _that = this;
switch (_that) {
case _HighScoreModel():
return $default(_that.score,_that.date,_that.playerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score,  DateTime date,  String playerName)?  $default,) {final _that = this;
switch (_that) {
case _HighScoreModel() when $default != null:
return $default(_that.score,_that.date,_that.playerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HighScoreModel implements HighScoreModel {
  const _HighScoreModel({required this.score, required this.date, this.playerName = ''});
  factory _HighScoreModel.fromJson(Map<String, dynamic> json) => _$HighScoreModelFromJson(json);

@override final  int score;
@override final  DateTime date;
@override@JsonKey() final  String playerName;

/// Create a copy of HighScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighScoreModelCopyWith<_HighScoreModel> get copyWith => __$HighScoreModelCopyWithImpl<_HighScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HighScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.date, date) || other.date == date)&&(identical(other.playerName, playerName) || other.playerName == playerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,date,playerName);

@override
String toString() {
  return 'HighScoreModel(score: $score, date: $date, playerName: $playerName)';
}


}

/// @nodoc
abstract mixin class _$HighScoreModelCopyWith<$Res> implements $HighScoreModelCopyWith<$Res> {
  factory _$HighScoreModelCopyWith(_HighScoreModel value, $Res Function(_HighScoreModel) _then) = __$HighScoreModelCopyWithImpl;
@override @useResult
$Res call({
 int score, DateTime date, String playerName
});




}
/// @nodoc
class __$HighScoreModelCopyWithImpl<$Res>
    implements _$HighScoreModelCopyWith<$Res> {
  __$HighScoreModelCopyWithImpl(this._self, this._then);

  final _HighScoreModel _self;
  final $Res Function(_HighScoreModel) _then;

/// Create a copy of HighScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? date = null,Object? playerName = null,}) {
  return _then(_HighScoreModel(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
