// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettings {

 AppLanguage get language; MapPreferences get mapViewPreferences; String? get aiApiKey; String? get mapsApiKey; bool get realtimeLocationEnabled; bool get onboardingCompleted; bool get analyticsOptIn;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.mapViewPreferences, mapViewPreferences)&&(identical(other.aiApiKey, aiApiKey) || other.aiApiKey == aiApiKey)&&(identical(other.mapsApiKey, mapsApiKey) || other.mapsApiKey == mapsApiKey)&&(identical(other.realtimeLocationEnabled, realtimeLocationEnabled) || other.realtimeLocationEnabled == realtimeLocationEnabled)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&(identical(other.analyticsOptIn, analyticsOptIn) || other.analyticsOptIn == analyticsOptIn));
}


@override
int get hashCode => Object.hash(runtimeType,language,const DeepCollectionEquality().hash(mapViewPreferences),aiApiKey,mapsApiKey,realtimeLocationEnabled,onboardingCompleted,analyticsOptIn);

@override
String toString() {
  return 'AppSettings(language: $language, mapViewPreferences: $mapViewPreferences, aiApiKey: $aiApiKey, mapsApiKey: $mapsApiKey, realtimeLocationEnabled: $realtimeLocationEnabled, onboardingCompleted: $onboardingCompleted, analyticsOptIn: $analyticsOptIn)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 AppLanguage language, MapPreferences mapViewPreferences, String? aiApiKey, String? mapsApiKey, bool realtimeLocationEnabled, bool onboardingCompleted, bool analyticsOptIn
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? mapViewPreferences = null,Object? aiApiKey = freezed,Object? mapsApiKey = freezed,Object? realtimeLocationEnabled = null,Object? onboardingCompleted = null,Object? analyticsOptIn = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,mapViewPreferences: null == mapViewPreferences ? _self.mapViewPreferences : mapViewPreferences // ignore: cast_nullable_to_non_nullable
as MapPreferences,aiApiKey: freezed == aiApiKey ? _self.aiApiKey : aiApiKey // ignore: cast_nullable_to_non_nullable
as String?,mapsApiKey: freezed == mapsApiKey ? _self.mapsApiKey : mapsApiKey // ignore: cast_nullable_to_non_nullable
as String?,realtimeLocationEnabled: null == realtimeLocationEnabled ? _self.realtimeLocationEnabled : realtimeLocationEnabled // ignore: cast_nullable_to_non_nullable
as bool,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,analyticsOptIn: null == analyticsOptIn ? _self.analyticsOptIn : analyticsOptIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSettings].
extension AppSettingsPatterns on AppSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettings value)  $default,){
final _that = this;
switch (_that) {
case _AppSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppLanguage language,  MapPreferences mapViewPreferences,  String? aiApiKey,  String? mapsApiKey,  bool realtimeLocationEnabled,  bool onboardingCompleted,  bool analyticsOptIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.language,_that.mapViewPreferences,_that.aiApiKey,_that.mapsApiKey,_that.realtimeLocationEnabled,_that.onboardingCompleted,_that.analyticsOptIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppLanguage language,  MapPreferences mapViewPreferences,  String? aiApiKey,  String? mapsApiKey,  bool realtimeLocationEnabled,  bool onboardingCompleted,  bool analyticsOptIn)  $default,) {final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that.language,_that.mapViewPreferences,_that.aiApiKey,_that.mapsApiKey,_that.realtimeLocationEnabled,_that.onboardingCompleted,_that.analyticsOptIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppLanguage language,  MapPreferences mapViewPreferences,  String? aiApiKey,  String? mapsApiKey,  bool realtimeLocationEnabled,  bool onboardingCompleted,  bool analyticsOptIn)?  $default,) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.language,_that.mapViewPreferences,_that.aiApiKey,_that.mapsApiKey,_that.realtimeLocationEnabled,_that.onboardingCompleted,_that.analyticsOptIn);case _:
  return null;

}
}

}

/// @nodoc


class _AppSettings extends AppSettings {
  const _AppSettings({this.language = AppLanguage.ja, final  MapPreferences mapViewPreferences = const <String, dynamic>{}, this.aiApiKey, this.mapsApiKey, this.realtimeLocationEnabled = true, this.onboardingCompleted = false, this.analyticsOptIn = false}): _mapViewPreferences = mapViewPreferences,super._();
  

@override@JsonKey() final  AppLanguage language;
 final  MapPreferences _mapViewPreferences;
@override@JsonKey() MapPreferences get mapViewPreferences {
  if (_mapViewPreferences is EqualUnmodifiableMapView) return _mapViewPreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_mapViewPreferences);
}

@override final  String? aiApiKey;
@override final  String? mapsApiKey;
@override@JsonKey() final  bool realtimeLocationEnabled;
@override@JsonKey() final  bool onboardingCompleted;
@override@JsonKey() final  bool analyticsOptIn;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._mapViewPreferences, _mapViewPreferences)&&(identical(other.aiApiKey, aiApiKey) || other.aiApiKey == aiApiKey)&&(identical(other.mapsApiKey, mapsApiKey) || other.mapsApiKey == mapsApiKey)&&(identical(other.realtimeLocationEnabled, realtimeLocationEnabled) || other.realtimeLocationEnabled == realtimeLocationEnabled)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&(identical(other.analyticsOptIn, analyticsOptIn) || other.analyticsOptIn == analyticsOptIn));
}


@override
int get hashCode => Object.hash(runtimeType,language,const DeepCollectionEquality().hash(_mapViewPreferences),aiApiKey,mapsApiKey,realtimeLocationEnabled,onboardingCompleted,analyticsOptIn);

@override
String toString() {
  return 'AppSettings(language: $language, mapViewPreferences: $mapViewPreferences, aiApiKey: $aiApiKey, mapsApiKey: $mapsApiKey, realtimeLocationEnabled: $realtimeLocationEnabled, onboardingCompleted: $onboardingCompleted, analyticsOptIn: $analyticsOptIn)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 AppLanguage language, MapPreferences mapViewPreferences, String? aiApiKey, String? mapsApiKey, bool realtimeLocationEnabled, bool onboardingCompleted, bool analyticsOptIn
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? mapViewPreferences = null,Object? aiApiKey = freezed,Object? mapsApiKey = freezed,Object? realtimeLocationEnabled = null,Object? onboardingCompleted = null,Object? analyticsOptIn = null,}) {
  return _then(_AppSettings(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,mapViewPreferences: null == mapViewPreferences ? _self._mapViewPreferences : mapViewPreferences // ignore: cast_nullable_to_non_nullable
as MapPreferences,aiApiKey: freezed == aiApiKey ? _self.aiApiKey : aiApiKey // ignore: cast_nullable_to_non_nullable
as String?,mapsApiKey: freezed == mapsApiKey ? _self.mapsApiKey : mapsApiKey // ignore: cast_nullable_to_non_nullable
as String?,realtimeLocationEnabled: null == realtimeLocationEnabled ? _self.realtimeLocationEnabled : realtimeLocationEnabled // ignore: cast_nullable_to_non_nullable
as bool,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,analyticsOptIn: null == analyticsOptIn ? _self.analyticsOptIn : analyticsOptIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
