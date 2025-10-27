// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persona_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Persona {

 String get id; String get name; String get toneStyle; String get promptText; bool get isDefault; int get linkedSpotCount; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Persona
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonaCopyWith<Persona> get copyWith => _$PersonaCopyWithImpl<Persona>(this as Persona, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Persona&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.toneStyle, toneStyle) || other.toneStyle == toneStyle)&&(identical(other.promptText, promptText) || other.promptText == promptText)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.linkedSpotCount, linkedSpotCount) || other.linkedSpotCount == linkedSpotCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,toneStyle,promptText,isDefault,linkedSpotCount,createdAt,updatedAt);

@override
String toString() {
  return 'Persona(id: $id, name: $name, toneStyle: $toneStyle, promptText: $promptText, isDefault: $isDefault, linkedSpotCount: $linkedSpotCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PersonaCopyWith<$Res>  {
  factory $PersonaCopyWith(Persona value, $Res Function(Persona) _then) = _$PersonaCopyWithImpl;
@useResult
$Res call({
 String id, String name, String toneStyle, String promptText, bool isDefault, int linkedSpotCount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$PersonaCopyWithImpl<$Res>
    implements $PersonaCopyWith<$Res> {
  _$PersonaCopyWithImpl(this._self, this._then);

  final Persona _self;
  final $Res Function(Persona) _then;

/// Create a copy of Persona
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? toneStyle = null,Object? promptText = null,Object? isDefault = null,Object? linkedSpotCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,toneStyle: null == toneStyle ? _self.toneStyle : toneStyle // ignore: cast_nullable_to_non_nullable
as String,promptText: null == promptText ? _self.promptText : promptText // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,linkedSpotCount: null == linkedSpotCount ? _self.linkedSpotCount : linkedSpotCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Persona].
extension PersonaPatterns on Persona {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Persona value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Persona() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Persona value)  $default,){
final _that = this;
switch (_that) {
case _Persona():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Persona value)?  $default,){
final _that = this;
switch (_that) {
case _Persona() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String toneStyle,  String promptText,  bool isDefault,  int linkedSpotCount,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Persona() when $default != null:
return $default(_that.id,_that.name,_that.toneStyle,_that.promptText,_that.isDefault,_that.linkedSpotCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String toneStyle,  String promptText,  bool isDefault,  int linkedSpotCount,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Persona():
return $default(_that.id,_that.name,_that.toneStyle,_that.promptText,_that.isDefault,_that.linkedSpotCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String toneStyle,  String promptText,  bool isDefault,  int linkedSpotCount,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Persona() when $default != null:
return $default(_that.id,_that.name,_that.toneStyle,_that.promptText,_that.isDefault,_that.linkedSpotCount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Persona extends Persona {
  const _Persona({required this.id, required this.name, required this.toneStyle, required this.promptText, this.isDefault = false, this.linkedSpotCount = 0, required this.createdAt, required this.updatedAt}): super._();
  

@override final  String id;
@override final  String name;
@override final  String toneStyle;
@override final  String promptText;
@override@JsonKey() final  bool isDefault;
@override@JsonKey() final  int linkedSpotCount;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Persona
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonaCopyWith<_Persona> get copyWith => __$PersonaCopyWithImpl<_Persona>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Persona&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.toneStyle, toneStyle) || other.toneStyle == toneStyle)&&(identical(other.promptText, promptText) || other.promptText == promptText)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.linkedSpotCount, linkedSpotCount) || other.linkedSpotCount == linkedSpotCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,toneStyle,promptText,isDefault,linkedSpotCount,createdAt,updatedAt);

@override
String toString() {
  return 'Persona(id: $id, name: $name, toneStyle: $toneStyle, promptText: $promptText, isDefault: $isDefault, linkedSpotCount: $linkedSpotCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PersonaCopyWith<$Res> implements $PersonaCopyWith<$Res> {
  factory _$PersonaCopyWith(_Persona value, $Res Function(_Persona) _then) = __$PersonaCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String toneStyle, String promptText, bool isDefault, int linkedSpotCount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$PersonaCopyWithImpl<$Res>
    implements _$PersonaCopyWith<$Res> {
  __$PersonaCopyWithImpl(this._self, this._then);

  final _Persona _self;
  final $Res Function(_Persona) _then;

/// Create a copy of Persona
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? toneStyle = null,Object? promptText = null,Object? isDefault = null,Object? linkedSpotCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Persona(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,toneStyle: null == toneStyle ? _self.toneStyle : toneStyle // ignore: cast_nullable_to_non_nullable
as String,promptText: null == promptText ? _self.promptText : promptText // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,linkedSpotCount: null == linkedSpotCount ? _self.linkedSpotCount : linkedSpotCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
