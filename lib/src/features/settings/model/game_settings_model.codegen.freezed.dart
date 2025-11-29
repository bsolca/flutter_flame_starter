// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_settings_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameSettingsModel {

 bool get soundEnabled; bool get musicEnabled; String get difficulty; double get soundVolume; double get musicVolume;
/// Create a copy of GameSettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSettingsModelCopyWith<GameSettingsModel> get copyWith => _$GameSettingsModelCopyWithImpl<GameSettingsModel>(this as GameSettingsModel, _$identity);

  /// Serializes this GameSettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSettingsModel&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.musicEnabled, musicEnabled) || other.musicEnabled == musicEnabled)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.soundVolume, soundVolume) || other.soundVolume == soundVolume)&&(identical(other.musicVolume, musicVolume) || other.musicVolume == musicVolume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soundEnabled,musicEnabled,difficulty,soundVolume,musicVolume);

@override
String toString() {
  return 'GameSettingsModel(soundEnabled: $soundEnabled, musicEnabled: $musicEnabled, difficulty: $difficulty, soundVolume: $soundVolume, musicVolume: $musicVolume)';
}


}

/// @nodoc
abstract mixin class $GameSettingsModelCopyWith<$Res>  {
  factory $GameSettingsModelCopyWith(GameSettingsModel value, $Res Function(GameSettingsModel) _then) = _$GameSettingsModelCopyWithImpl;
@useResult
$Res call({
 bool soundEnabled, bool musicEnabled, String difficulty, double soundVolume, double musicVolume
});




}
/// @nodoc
class _$GameSettingsModelCopyWithImpl<$Res>
    implements $GameSettingsModelCopyWith<$Res> {
  _$GameSettingsModelCopyWithImpl(this._self, this._then);

  final GameSettingsModel _self;
  final $Res Function(GameSettingsModel) _then;

/// Create a copy of GameSettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? soundEnabled = null,Object? musicEnabled = null,Object? difficulty = null,Object? soundVolume = null,Object? musicVolume = null,}) {
  return _then(_self.copyWith(
soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,musicEnabled: null == musicEnabled ? _self.musicEnabled : musicEnabled // ignore: cast_nullable_to_non_nullable
as bool,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,soundVolume: null == soundVolume ? _self.soundVolume : soundVolume // ignore: cast_nullable_to_non_nullable
as double,musicVolume: null == musicVolume ? _self.musicVolume : musicVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GameSettingsModel].
extension GameSettingsModelPatterns on GameSettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameSettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameSettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameSettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _GameSettingsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameSettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameSettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool soundEnabled,  bool musicEnabled,  String difficulty,  double soundVolume,  double musicVolume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameSettingsModel() when $default != null:
return $default(_that.soundEnabled,_that.musicEnabled,_that.difficulty,_that.soundVolume,_that.musicVolume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool soundEnabled,  bool musicEnabled,  String difficulty,  double soundVolume,  double musicVolume)  $default,) {final _that = this;
switch (_that) {
case _GameSettingsModel():
return $default(_that.soundEnabled,_that.musicEnabled,_that.difficulty,_that.soundVolume,_that.musicVolume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool soundEnabled,  bool musicEnabled,  String difficulty,  double soundVolume,  double musicVolume)?  $default,) {final _that = this;
switch (_that) {
case _GameSettingsModel() when $default != null:
return $default(_that.soundEnabled,_that.musicEnabled,_that.difficulty,_that.soundVolume,_that.musicVolume);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameSettingsModel implements GameSettingsModel {
  const _GameSettingsModel({this.soundEnabled = true, this.musicEnabled = true, this.difficulty = 'easy', this.soundVolume = 1.0, this.musicVolume = 1.0});
  factory _GameSettingsModel.fromJson(Map<String, dynamic> json) => _$GameSettingsModelFromJson(json);

@override@JsonKey() final  bool soundEnabled;
@override@JsonKey() final  bool musicEnabled;
@override@JsonKey() final  String difficulty;
@override@JsonKey() final  double soundVolume;
@override@JsonKey() final  double musicVolume;

/// Create a copy of GameSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameSettingsModelCopyWith<_GameSettingsModel> get copyWith => __$GameSettingsModelCopyWithImpl<_GameSettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameSettingsModel&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.musicEnabled, musicEnabled) || other.musicEnabled == musicEnabled)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.soundVolume, soundVolume) || other.soundVolume == soundVolume)&&(identical(other.musicVolume, musicVolume) || other.musicVolume == musicVolume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soundEnabled,musicEnabled,difficulty,soundVolume,musicVolume);

@override
String toString() {
  return 'GameSettingsModel(soundEnabled: $soundEnabled, musicEnabled: $musicEnabled, difficulty: $difficulty, soundVolume: $soundVolume, musicVolume: $musicVolume)';
}


}

/// @nodoc
abstract mixin class _$GameSettingsModelCopyWith<$Res> implements $GameSettingsModelCopyWith<$Res> {
  factory _$GameSettingsModelCopyWith(_GameSettingsModel value, $Res Function(_GameSettingsModel) _then) = __$GameSettingsModelCopyWithImpl;
@override @useResult
$Res call({
 bool soundEnabled, bool musicEnabled, String difficulty, double soundVolume, double musicVolume
});




}
/// @nodoc
class __$GameSettingsModelCopyWithImpl<$Res>
    implements _$GameSettingsModelCopyWith<$Res> {
  __$GameSettingsModelCopyWithImpl(this._self, this._then);

  final _GameSettingsModel _self;
  final $Res Function(_GameSettingsModel) _then;

/// Create a copy of GameSettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? soundEnabled = null,Object? musicEnabled = null,Object? difficulty = null,Object? soundVolume = null,Object? musicVolume = null,}) {
  return _then(_GameSettingsModel(
soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,musicEnabled: null == musicEnabled ? _self.musicEnabled : musicEnabled // ignore: cast_nullable_to_non_nullable
as bool,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,soundVolume: null == soundVolume ? _self.soundVolume : soundVolume // ignore: cast_nullable_to_non_nullable
as double,musicVolume: null == musicVolume ? _self.musicVolume : musicVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
