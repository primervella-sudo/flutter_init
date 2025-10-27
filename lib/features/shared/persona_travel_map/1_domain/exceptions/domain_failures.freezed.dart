// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DomainFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainFailure()';
}


}

/// @nodoc
class $DomainFailureCopyWith<$Res>  {
$DomainFailureCopyWith(DomainFailure _, $Res Function(DomainFailure) __);
}


/// Adds pattern-matching-related methods to [DomainFailure].
extension DomainFailurePatterns on DomainFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ValidationFailure value)?  validation,TResult Function( _StorageLimitExceededFailure value)?  storageLimitExceeded,TResult Function( _NetworkFailure value)?  network,TResult Function( _PermissionFailure value)?  permission,TResult Function( _NotFoundFailure value)?  notFound,TResult Function( _ConflictFailure value)?  conflict,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidationFailure() when validation != null:
return validation(_that);case _StorageLimitExceededFailure() when storageLimitExceeded != null:
return storageLimitExceeded(_that);case _NetworkFailure() when network != null:
return network(_that);case _PermissionFailure() when permission != null:
return permission(_that);case _NotFoundFailure() when notFound != null:
return notFound(_that);case _ConflictFailure() when conflict != null:
return conflict(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ValidationFailure value)  validation,required TResult Function( _StorageLimitExceededFailure value)  storageLimitExceeded,required TResult Function( _NetworkFailure value)  network,required TResult Function( _PermissionFailure value)  permission,required TResult Function( _NotFoundFailure value)  notFound,required TResult Function( _ConflictFailure value)  conflict,}){
final _that = this;
switch (_that) {
case _ValidationFailure():
return validation(_that);case _StorageLimitExceededFailure():
return storageLimitExceeded(_that);case _NetworkFailure():
return network(_that);case _PermissionFailure():
return permission(_that);case _NotFoundFailure():
return notFound(_that);case _ConflictFailure():
return conflict(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ValidationFailure value)?  validation,TResult? Function( _StorageLimitExceededFailure value)?  storageLimitExceeded,TResult? Function( _NetworkFailure value)?  network,TResult? Function( _PermissionFailure value)?  permission,TResult? Function( _NotFoundFailure value)?  notFound,TResult? Function( _ConflictFailure value)?  conflict,}){
final _that = this;
switch (_that) {
case _ValidationFailure() when validation != null:
return validation(_that);case _StorageLimitExceededFailure() when storageLimitExceeded != null:
return storageLimitExceeded(_that);case _NetworkFailure() when network != null:
return network(_that);case _PermissionFailure() when permission != null:
return permission(_that);case _NotFoundFailure() when notFound != null:
return notFound(_that);case _ConflictFailure() when conflict != null:
return conflict(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  validation,TResult Function( int maxBytes)?  storageLimitExceeded,TResult Function( String message)?  network,TResult Function( String permission,  String? message)?  permission,TResult Function( String resource)?  notFound,TResult Function( String message)?  conflict,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidationFailure() when validation != null:
return validation(_that.message);case _StorageLimitExceededFailure() when storageLimitExceeded != null:
return storageLimitExceeded(_that.maxBytes);case _NetworkFailure() when network != null:
return network(_that.message);case _PermissionFailure() when permission != null:
return permission(_that.permission,_that.message);case _NotFoundFailure() when notFound != null:
return notFound(_that.resource);case _ConflictFailure() when conflict != null:
return conflict(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  validation,required TResult Function( int maxBytes)  storageLimitExceeded,required TResult Function( String message)  network,required TResult Function( String permission,  String? message)  permission,required TResult Function( String resource)  notFound,required TResult Function( String message)  conflict,}) {final _that = this;
switch (_that) {
case _ValidationFailure():
return validation(_that.message);case _StorageLimitExceededFailure():
return storageLimitExceeded(_that.maxBytes);case _NetworkFailure():
return network(_that.message);case _PermissionFailure():
return permission(_that.permission,_that.message);case _NotFoundFailure():
return notFound(_that.resource);case _ConflictFailure():
return conflict(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  validation,TResult? Function( int maxBytes)?  storageLimitExceeded,TResult? Function( String message)?  network,TResult? Function( String permission,  String? message)?  permission,TResult? Function( String resource)?  notFound,TResult? Function( String message)?  conflict,}) {final _that = this;
switch (_that) {
case _ValidationFailure() when validation != null:
return validation(_that.message);case _StorageLimitExceededFailure() when storageLimitExceeded != null:
return storageLimitExceeded(_that.maxBytes);case _NetworkFailure() when network != null:
return network(_that.message);case _PermissionFailure() when permission != null:
return permission(_that.permission,_that.message);case _NotFoundFailure() when notFound != null:
return notFound(_that.resource);case _ConflictFailure() when conflict != null:
return conflict(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ValidationFailure implements DomainFailure {
  const _ValidationFailure({required this.message});
  

 final  String message;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationFailureCopyWith<_ValidationFailure> get copyWith => __$ValidationFailureCopyWithImpl<_ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DomainFailure.validation(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ValidationFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$ValidationFailureCopyWith(_ValidationFailure value, $Res Function(_ValidationFailure) _then) = __$ValidationFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ValidationFailureCopyWithImpl<$Res>
    implements _$ValidationFailureCopyWith<$Res> {
  __$ValidationFailureCopyWithImpl(this._self, this._then);

  final _ValidationFailure _self;
  final $Res Function(_ValidationFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StorageLimitExceededFailure implements DomainFailure {
  const _StorageLimitExceededFailure({required this.maxBytes});
  

 final  int maxBytes;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageLimitExceededFailureCopyWith<_StorageLimitExceededFailure> get copyWith => __$StorageLimitExceededFailureCopyWithImpl<_StorageLimitExceededFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorageLimitExceededFailure&&(identical(other.maxBytes, maxBytes) || other.maxBytes == maxBytes));
}


@override
int get hashCode => Object.hash(runtimeType,maxBytes);

@override
String toString() {
  return 'DomainFailure.storageLimitExceeded(maxBytes: $maxBytes)';
}


}

/// @nodoc
abstract mixin class _$StorageLimitExceededFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$StorageLimitExceededFailureCopyWith(_StorageLimitExceededFailure value, $Res Function(_StorageLimitExceededFailure) _then) = __$StorageLimitExceededFailureCopyWithImpl;
@useResult
$Res call({
 int maxBytes
});




}
/// @nodoc
class __$StorageLimitExceededFailureCopyWithImpl<$Res>
    implements _$StorageLimitExceededFailureCopyWith<$Res> {
  __$StorageLimitExceededFailureCopyWithImpl(this._self, this._then);

  final _StorageLimitExceededFailure _self;
  final $Res Function(_StorageLimitExceededFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maxBytes = null,}) {
  return _then(_StorageLimitExceededFailure(
maxBytes: null == maxBytes ? _self.maxBytes : maxBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NetworkFailure implements DomainFailure {
  const _NetworkFailure({required this.message});
  

 final  String message;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkFailureCopyWith<_NetworkFailure> get copyWith => __$NetworkFailureCopyWithImpl<_NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DomainFailure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NetworkFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(_NetworkFailure value, $Res Function(_NetworkFailure) _then) = __$NetworkFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(this._self, this._then);

  final _NetworkFailure _self;
  final $Res Function(_NetworkFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NetworkFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PermissionFailure implements DomainFailure {
  const _PermissionFailure({required this.permission, this.message});
  

 final  String permission;
 final  String? message;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionFailureCopyWith<_PermissionFailure> get copyWith => __$PermissionFailureCopyWithImpl<_PermissionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionFailure&&(identical(other.permission, permission) || other.permission == permission)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,permission,message);

@override
String toString() {
  return 'DomainFailure.permission(permission: $permission, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PermissionFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$PermissionFailureCopyWith(_PermissionFailure value, $Res Function(_PermissionFailure) _then) = __$PermissionFailureCopyWithImpl;
@useResult
$Res call({
 String permission, String? message
});




}
/// @nodoc
class __$PermissionFailureCopyWithImpl<$Res>
    implements _$PermissionFailureCopyWith<$Res> {
  __$PermissionFailureCopyWithImpl(this._self, this._then);

  final _PermissionFailure _self;
  final $Res Function(_PermissionFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? message = freezed,}) {
  return _then(_PermissionFailure(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _NotFoundFailure implements DomainFailure {
  const _NotFoundFailure({required this.resource});
  

 final  String resource;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotFoundFailureCopyWith<_NotFoundFailure> get copyWith => __$NotFoundFailureCopyWithImpl<_NotFoundFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFoundFailure&&(identical(other.resource, resource) || other.resource == resource));
}


@override
int get hashCode => Object.hash(runtimeType,resource);

@override
String toString() {
  return 'DomainFailure.notFound(resource: $resource)';
}


}

/// @nodoc
abstract mixin class _$NotFoundFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$NotFoundFailureCopyWith(_NotFoundFailure value, $Res Function(_NotFoundFailure) _then) = __$NotFoundFailureCopyWithImpl;
@useResult
$Res call({
 String resource
});




}
/// @nodoc
class __$NotFoundFailureCopyWithImpl<$Res>
    implements _$NotFoundFailureCopyWith<$Res> {
  __$NotFoundFailureCopyWithImpl(this._self, this._then);

  final _NotFoundFailure _self;
  final $Res Function(_NotFoundFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resource = null,}) {
  return _then(_NotFoundFailure(
resource: null == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ConflictFailure implements DomainFailure {
  const _ConflictFailure({required this.message});
  

 final  String message;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConflictFailureCopyWith<_ConflictFailure> get copyWith => __$ConflictFailureCopyWithImpl<_ConflictFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConflictFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DomainFailure.conflict(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConflictFailureCopyWith<$Res> implements $DomainFailureCopyWith<$Res> {
  factory _$ConflictFailureCopyWith(_ConflictFailure value, $Res Function(_ConflictFailure) _then) = __$ConflictFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ConflictFailureCopyWithImpl<$Res>
    implements _$ConflictFailureCopyWith<$Res> {
  __$ConflictFailureCopyWithImpl(this._self, this._then);

  final _ConflictFailure _self;
  final $Res Function(_ConflictFailure) _then;

/// Create a copy of DomainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ConflictFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DomainResult<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DomainResult<$T>()';
}


}

/// @nodoc
class $DomainResultCopyWith<T,$Res>  {
$DomainResultCopyWith(DomainResult<T> _, $Res Function(DomainResult<T>) __);
}


/// Adds pattern-matching-related methods to [DomainResult].
extension DomainResultPatterns<T> on DomainResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DomainSuccess<T> value)?  success,TResult Function( DomainResultFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DomainSuccess() when success != null:
return success(_that);case DomainResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DomainSuccess<T> value)  success,required TResult Function( DomainResultFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case DomainSuccess():
return success(_that);case DomainResultFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DomainSuccess<T> value)?  success,TResult? Function( DomainResultFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case DomainSuccess() when success != null:
return success(_that);case DomainResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T data)?  success,TResult Function( DomainFailure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DomainSuccess() when success != null:
return success(_that.data);case DomainResultFailure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T data)  success,required TResult Function( DomainFailure failure)  failure,}) {final _that = this;
switch (_that) {
case DomainSuccess():
return success(_that.data);case DomainResultFailure():
return failure(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T data)?  success,TResult? Function( DomainFailure failure)?  failure,}) {final _that = this;
switch (_that) {
case DomainSuccess() when success != null:
return success(_that.data);case DomainResultFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class DomainSuccess<T> implements DomainResult<T> {
  const DomainSuccess(this.data);
  

 final  T data;

/// Create a copy of DomainResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainSuccessCopyWith<T, DomainSuccess<T>> get copyWith => _$DomainSuccessCopyWithImpl<T, DomainSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DomainResult<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $DomainSuccessCopyWith<T,$Res> implements $DomainResultCopyWith<T, $Res> {
  factory $DomainSuccessCopyWith(DomainSuccess<T> value, $Res Function(DomainSuccess<T>) _then) = _$DomainSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$DomainSuccessCopyWithImpl<T,$Res>
    implements $DomainSuccessCopyWith<T, $Res> {
  _$DomainSuccessCopyWithImpl(this._self, this._then);

  final DomainSuccess<T> _self;
  final $Res Function(DomainSuccess<T>) _then;

/// Create a copy of DomainResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(DomainSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class DomainResultFailure<T> implements DomainResult<T> {
  const DomainResultFailure(this.failure);
  

 final  DomainFailure failure;

/// Create a copy of DomainResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainResultFailureCopyWith<T, DomainResultFailure<T>> get copyWith => _$DomainResultFailureCopyWithImpl<T, DomainResultFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainResultFailure<T>&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'DomainResult<$T>.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $DomainResultFailureCopyWith<T,$Res> implements $DomainResultCopyWith<T, $Res> {
  factory $DomainResultFailureCopyWith(DomainResultFailure<T> value, $Res Function(DomainResultFailure<T>) _then) = _$DomainResultFailureCopyWithImpl;
@useResult
$Res call({
 DomainFailure failure
});


$DomainFailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$DomainResultFailureCopyWithImpl<T,$Res>
    implements $DomainResultFailureCopyWith<T, $Res> {
  _$DomainResultFailureCopyWithImpl(this._self, this._then);

  final DomainResultFailure<T> _self;
  final $Res Function(DomainResultFailure<T>) _then;

/// Create a copy of DomainResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(DomainResultFailure<T>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as DomainFailure,
  ));
}

/// Create a copy of DomainResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DomainFailureCopyWith<$Res> get failure {
  
  return $DomainFailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
