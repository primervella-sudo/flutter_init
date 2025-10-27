// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_review_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateReviewInput {

 Spot get spot; Persona get persona; AppLanguage get language; bool get forceRegenerate;
/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateReviewInputCopyWith<GenerateReviewInput> get copyWith => _$GenerateReviewInputCopyWithImpl<GenerateReviewInput>(this as GenerateReviewInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateReviewInput&&(identical(other.spot, spot) || other.spot == spot)&&(identical(other.persona, persona) || other.persona == persona)&&(identical(other.language, language) || other.language == language)&&(identical(other.forceRegenerate, forceRegenerate) || other.forceRegenerate == forceRegenerate));
}


@override
int get hashCode => Object.hash(runtimeType,spot,persona,language,forceRegenerate);

@override
String toString() {
  return 'GenerateReviewInput(spot: $spot, persona: $persona, language: $language, forceRegenerate: $forceRegenerate)';
}


}

/// @nodoc
abstract mixin class $GenerateReviewInputCopyWith<$Res>  {
  factory $GenerateReviewInputCopyWith(GenerateReviewInput value, $Res Function(GenerateReviewInput) _then) = _$GenerateReviewInputCopyWithImpl;
@useResult
$Res call({
 Spot spot, Persona persona, AppLanguage language, bool forceRegenerate
});


$SpotCopyWith<$Res> get spot;$PersonaCopyWith<$Res> get persona;

}
/// @nodoc
class _$GenerateReviewInputCopyWithImpl<$Res>
    implements $GenerateReviewInputCopyWith<$Res> {
  _$GenerateReviewInputCopyWithImpl(this._self, this._then);

  final GenerateReviewInput _self;
  final $Res Function(GenerateReviewInput) _then;

/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spot = null,Object? persona = null,Object? language = null,Object? forceRegenerate = null,}) {
  return _then(_self.copyWith(
spot: null == spot ? _self.spot : spot // ignore: cast_nullable_to_non_nullable
as Spot,persona: null == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as Persona,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,forceRegenerate: null == forceRegenerate ? _self.forceRegenerate : forceRegenerate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotCopyWith<$Res> get spot {
  
  return $SpotCopyWith<$Res>(_self.spot, (value) {
    return _then(_self.copyWith(spot: value));
  });
}/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonaCopyWith<$Res> get persona {
  
  return $PersonaCopyWith<$Res>(_self.persona, (value) {
    return _then(_self.copyWith(persona: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenerateReviewInput].
extension GenerateReviewInputPatterns on GenerateReviewInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenerateReviewInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenerateReviewInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenerateReviewInput value)  $default,){
final _that = this;
switch (_that) {
case _GenerateReviewInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenerateReviewInput value)?  $default,){
final _that = this;
switch (_that) {
case _GenerateReviewInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Spot spot,  Persona persona,  AppLanguage language,  bool forceRegenerate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenerateReviewInput() when $default != null:
return $default(_that.spot,_that.persona,_that.language,_that.forceRegenerate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Spot spot,  Persona persona,  AppLanguage language,  bool forceRegenerate)  $default,) {final _that = this;
switch (_that) {
case _GenerateReviewInput():
return $default(_that.spot,_that.persona,_that.language,_that.forceRegenerate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Spot spot,  Persona persona,  AppLanguage language,  bool forceRegenerate)?  $default,) {final _that = this;
switch (_that) {
case _GenerateReviewInput() when $default != null:
return $default(_that.spot,_that.persona,_that.language,_that.forceRegenerate);case _:
  return null;

}
}

}

/// @nodoc


class _GenerateReviewInput implements GenerateReviewInput {
  const _GenerateReviewInput({required this.spot, required this.persona, this.language = AppLanguage.ja, this.forceRegenerate = false});
  

@override final  Spot spot;
@override final  Persona persona;
@override@JsonKey() final  AppLanguage language;
@override@JsonKey() final  bool forceRegenerate;

/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateReviewInputCopyWith<_GenerateReviewInput> get copyWith => __$GenerateReviewInputCopyWithImpl<_GenerateReviewInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateReviewInput&&(identical(other.spot, spot) || other.spot == spot)&&(identical(other.persona, persona) || other.persona == persona)&&(identical(other.language, language) || other.language == language)&&(identical(other.forceRegenerate, forceRegenerate) || other.forceRegenerate == forceRegenerate));
}


@override
int get hashCode => Object.hash(runtimeType,spot,persona,language,forceRegenerate);

@override
String toString() {
  return 'GenerateReviewInput(spot: $spot, persona: $persona, language: $language, forceRegenerate: $forceRegenerate)';
}


}

/// @nodoc
abstract mixin class _$GenerateReviewInputCopyWith<$Res> implements $GenerateReviewInputCopyWith<$Res> {
  factory _$GenerateReviewInputCopyWith(_GenerateReviewInput value, $Res Function(_GenerateReviewInput) _then) = __$GenerateReviewInputCopyWithImpl;
@override @useResult
$Res call({
 Spot spot, Persona persona, AppLanguage language, bool forceRegenerate
});


@override $SpotCopyWith<$Res> get spot;@override $PersonaCopyWith<$Res> get persona;

}
/// @nodoc
class __$GenerateReviewInputCopyWithImpl<$Res>
    implements _$GenerateReviewInputCopyWith<$Res> {
  __$GenerateReviewInputCopyWithImpl(this._self, this._then);

  final _GenerateReviewInput _self;
  final $Res Function(_GenerateReviewInput) _then;

/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spot = null,Object? persona = null,Object? language = null,Object? forceRegenerate = null,}) {
  return _then(_GenerateReviewInput(
spot: null == spot ? _self.spot : spot // ignore: cast_nullable_to_non_nullable
as Spot,persona: null == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as Persona,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,forceRegenerate: null == forceRegenerate ? _self.forceRegenerate : forceRegenerate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotCopyWith<$Res> get spot {
  
  return $SpotCopyWith<$Res>(_self.spot, (value) {
    return _then(_self.copyWith(spot: value));
  });
}/// Create a copy of GenerateReviewInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonaCopyWith<$Res> get persona {
  
  return $PersonaCopyWith<$Res>(_self.persona, (value) {
    return _then(_self.copyWith(persona: value));
  });
}
}

// dart format on
