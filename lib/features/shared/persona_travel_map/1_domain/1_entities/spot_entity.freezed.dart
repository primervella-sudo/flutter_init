// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Spot {

 String get id; String get title; String get address; double get lat; double get lng; DateTime get visitedAt; List<SpotPhoto> get photos; int get totalPhotoSize; String get reviewText; bool get reviewGenerated; String? get personaId; String? get shareToken; DateTime? get shareExpiresAt; SpotSyncStatus get syncStatus; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Spot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotCopyWith<Spot> get copyWith => _$SpotCopyWithImpl<Spot>(this as Spot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Spot&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.visitedAt, visitedAt) || other.visitedAt == visitedAt)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.totalPhotoSize, totalPhotoSize) || other.totalPhotoSize == totalPhotoSize)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.reviewGenerated, reviewGenerated) || other.reviewGenerated == reviewGenerated)&&(identical(other.personaId, personaId) || other.personaId == personaId)&&(identical(other.shareToken, shareToken) || other.shareToken == shareToken)&&(identical(other.shareExpiresAt, shareExpiresAt) || other.shareExpiresAt == shareExpiresAt)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,address,lat,lng,visitedAt,const DeepCollectionEquality().hash(photos),totalPhotoSize,reviewText,reviewGenerated,personaId,shareToken,shareExpiresAt,syncStatus,createdAt,updatedAt);

@override
String toString() {
  return 'Spot(id: $id, title: $title, address: $address, lat: $lat, lng: $lng, visitedAt: $visitedAt, photos: $photos, totalPhotoSize: $totalPhotoSize, reviewText: $reviewText, reviewGenerated: $reviewGenerated, personaId: $personaId, shareToken: $shareToken, shareExpiresAt: $shareExpiresAt, syncStatus: $syncStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SpotCopyWith<$Res>  {
  factory $SpotCopyWith(Spot value, $Res Function(Spot) _then) = _$SpotCopyWithImpl;
@useResult
$Res call({
 String id, String title, String address, double lat, double lng, DateTime visitedAt, List<SpotPhoto> photos, int totalPhotoSize, String reviewText, bool reviewGenerated, String? personaId, String? shareToken, DateTime? shareExpiresAt, SpotSyncStatus syncStatus, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$SpotCopyWithImpl<$Res>
    implements $SpotCopyWith<$Res> {
  _$SpotCopyWithImpl(this._self, this._then);

  final Spot _self;
  final $Res Function(Spot) _then;

/// Create a copy of Spot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? address = null,Object? lat = null,Object? lng = null,Object? visitedAt = null,Object? photos = null,Object? totalPhotoSize = null,Object? reviewText = null,Object? reviewGenerated = null,Object? personaId = freezed,Object? shareToken = freezed,Object? shareExpiresAt = freezed,Object? syncStatus = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,visitedAt: null == visitedAt ? _self.visitedAt : visitedAt // ignore: cast_nullable_to_non_nullable
as DateTime,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<SpotPhoto>,totalPhotoSize: null == totalPhotoSize ? _self.totalPhotoSize : totalPhotoSize // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,reviewGenerated: null == reviewGenerated ? _self.reviewGenerated : reviewGenerated // ignore: cast_nullable_to_non_nullable
as bool,personaId: freezed == personaId ? _self.personaId : personaId // ignore: cast_nullable_to_non_nullable
as String?,shareToken: freezed == shareToken ? _self.shareToken : shareToken // ignore: cast_nullable_to_non_nullable
as String?,shareExpiresAt: freezed == shareExpiresAt ? _self.shareExpiresAt : shareExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as SpotSyncStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Spot].
extension SpotPatterns on Spot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Spot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Spot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Spot value)  $default,){
final _that = this;
switch (_that) {
case _Spot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Spot value)?  $default,){
final _that = this;
switch (_that) {
case _Spot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String address,  double lat,  double lng,  DateTime visitedAt,  List<SpotPhoto> photos,  int totalPhotoSize,  String reviewText,  bool reviewGenerated,  String? personaId,  String? shareToken,  DateTime? shareExpiresAt,  SpotSyncStatus syncStatus,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Spot() when $default != null:
return $default(_that.id,_that.title,_that.address,_that.lat,_that.lng,_that.visitedAt,_that.photos,_that.totalPhotoSize,_that.reviewText,_that.reviewGenerated,_that.personaId,_that.shareToken,_that.shareExpiresAt,_that.syncStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String address,  double lat,  double lng,  DateTime visitedAt,  List<SpotPhoto> photos,  int totalPhotoSize,  String reviewText,  bool reviewGenerated,  String? personaId,  String? shareToken,  DateTime? shareExpiresAt,  SpotSyncStatus syncStatus,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Spot():
return $default(_that.id,_that.title,_that.address,_that.lat,_that.lng,_that.visitedAt,_that.photos,_that.totalPhotoSize,_that.reviewText,_that.reviewGenerated,_that.personaId,_that.shareToken,_that.shareExpiresAt,_that.syncStatus,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String address,  double lat,  double lng,  DateTime visitedAt,  List<SpotPhoto> photos,  int totalPhotoSize,  String reviewText,  bool reviewGenerated,  String? personaId,  String? shareToken,  DateTime? shareExpiresAt,  SpotSyncStatus syncStatus,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Spot() when $default != null:
return $default(_that.id,_that.title,_that.address,_that.lat,_that.lng,_that.visitedAt,_that.photos,_that.totalPhotoSize,_that.reviewText,_that.reviewGenerated,_that.personaId,_that.shareToken,_that.shareExpiresAt,_that.syncStatus,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Spot extends Spot {
  const _Spot({required this.id, required this.title, required this.address, required this.lat, required this.lng, required this.visitedAt, final  List<SpotPhoto> photos = const <SpotPhoto>[], this.totalPhotoSize = 0, this.reviewText = '', this.reviewGenerated = false, this.personaId, this.shareToken, this.shareExpiresAt, this.syncStatus = SpotSyncStatus.local, required this.createdAt, required this.updatedAt}): _photos = photos,super._();
  

@override final  String id;
@override final  String title;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override final  DateTime visitedAt;
 final  List<SpotPhoto> _photos;
@override@JsonKey() List<SpotPhoto> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  int totalPhotoSize;
@override@JsonKey() final  String reviewText;
@override@JsonKey() final  bool reviewGenerated;
@override final  String? personaId;
@override final  String? shareToken;
@override final  DateTime? shareExpiresAt;
@override@JsonKey() final  SpotSyncStatus syncStatus;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Spot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotCopyWith<_Spot> get copyWith => __$SpotCopyWithImpl<_Spot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Spot&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.visitedAt, visitedAt) || other.visitedAt == visitedAt)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.totalPhotoSize, totalPhotoSize) || other.totalPhotoSize == totalPhotoSize)&&(identical(other.reviewText, reviewText) || other.reviewText == reviewText)&&(identical(other.reviewGenerated, reviewGenerated) || other.reviewGenerated == reviewGenerated)&&(identical(other.personaId, personaId) || other.personaId == personaId)&&(identical(other.shareToken, shareToken) || other.shareToken == shareToken)&&(identical(other.shareExpiresAt, shareExpiresAt) || other.shareExpiresAt == shareExpiresAt)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,address,lat,lng,visitedAt,const DeepCollectionEquality().hash(_photos),totalPhotoSize,reviewText,reviewGenerated,personaId,shareToken,shareExpiresAt,syncStatus,createdAt,updatedAt);

@override
String toString() {
  return 'Spot(id: $id, title: $title, address: $address, lat: $lat, lng: $lng, visitedAt: $visitedAt, photos: $photos, totalPhotoSize: $totalPhotoSize, reviewText: $reviewText, reviewGenerated: $reviewGenerated, personaId: $personaId, shareToken: $shareToken, shareExpiresAt: $shareExpiresAt, syncStatus: $syncStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SpotCopyWith<$Res> implements $SpotCopyWith<$Res> {
  factory _$SpotCopyWith(_Spot value, $Res Function(_Spot) _then) = __$SpotCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String address, double lat, double lng, DateTime visitedAt, List<SpotPhoto> photos, int totalPhotoSize, String reviewText, bool reviewGenerated, String? personaId, String? shareToken, DateTime? shareExpiresAt, SpotSyncStatus syncStatus, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$SpotCopyWithImpl<$Res>
    implements _$SpotCopyWith<$Res> {
  __$SpotCopyWithImpl(this._self, this._then);

  final _Spot _self;
  final $Res Function(_Spot) _then;

/// Create a copy of Spot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? address = null,Object? lat = null,Object? lng = null,Object? visitedAt = null,Object? photos = null,Object? totalPhotoSize = null,Object? reviewText = null,Object? reviewGenerated = null,Object? personaId = freezed,Object? shareToken = freezed,Object? shareExpiresAt = freezed,Object? syncStatus = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Spot(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,visitedAt: null == visitedAt ? _self.visitedAt : visitedAt // ignore: cast_nullable_to_non_nullable
as DateTime,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<SpotPhoto>,totalPhotoSize: null == totalPhotoSize ? _self.totalPhotoSize : totalPhotoSize // ignore: cast_nullable_to_non_nullable
as int,reviewText: null == reviewText ? _self.reviewText : reviewText // ignore: cast_nullable_to_non_nullable
as String,reviewGenerated: null == reviewGenerated ? _self.reviewGenerated : reviewGenerated // ignore: cast_nullable_to_non_nullable
as bool,personaId: freezed == personaId ? _self.personaId : personaId // ignore: cast_nullable_to_non_nullable
as String?,shareToken: freezed == shareToken ? _self.shareToken : shareToken // ignore: cast_nullable_to_non_nullable
as String?,shareExpiresAt: freezed == shareExpiresAt ? _self.shareExpiresAt : shareExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as SpotSyncStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$SpotPhoto {

 String get path; int get size; int get order;
/// Create a copy of SpotPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotPhotoCopyWith<SpotPhoto> get copyWith => _$SpotPhotoCopyWithImpl<SpotPhoto>(this as SpotPhoto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotPhoto&&(identical(other.path, path) || other.path == path)&&(identical(other.size, size) || other.size == size)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,path,size,order);

@override
String toString() {
  return 'SpotPhoto(path: $path, size: $size, order: $order)';
}


}

/// @nodoc
abstract mixin class $SpotPhotoCopyWith<$Res>  {
  factory $SpotPhotoCopyWith(SpotPhoto value, $Res Function(SpotPhoto) _then) = _$SpotPhotoCopyWithImpl;
@useResult
$Res call({
 String path, int size, int order
});




}
/// @nodoc
class _$SpotPhotoCopyWithImpl<$Res>
    implements $SpotPhotoCopyWith<$Res> {
  _$SpotPhotoCopyWithImpl(this._self, this._then);

  final SpotPhoto _self;
  final $Res Function(SpotPhoto) _then;

/// Create a copy of SpotPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? size = null,Object? order = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotPhoto].
extension SpotPhotoPatterns on SpotPhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotPhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotPhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotPhoto value)  $default,){
final _that = this;
switch (_that) {
case _SpotPhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotPhoto value)?  $default,){
final _that = this;
switch (_that) {
case _SpotPhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  int size,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotPhoto() when $default != null:
return $default(_that.path,_that.size,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  int size,  int order)  $default,) {final _that = this;
switch (_that) {
case _SpotPhoto():
return $default(_that.path,_that.size,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  int size,  int order)?  $default,) {final _that = this;
switch (_that) {
case _SpotPhoto() when $default != null:
return $default(_that.path,_that.size,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _SpotPhoto implements SpotPhoto {
  const _SpotPhoto({required this.path, required this.size, required this.order});
  

@override final  String path;
@override final  int size;
@override final  int order;

/// Create a copy of SpotPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotPhotoCopyWith<_SpotPhoto> get copyWith => __$SpotPhotoCopyWithImpl<_SpotPhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotPhoto&&(identical(other.path, path) || other.path == path)&&(identical(other.size, size) || other.size == size)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,path,size,order);

@override
String toString() {
  return 'SpotPhoto(path: $path, size: $size, order: $order)';
}


}

/// @nodoc
abstract mixin class _$SpotPhotoCopyWith<$Res> implements $SpotPhotoCopyWith<$Res> {
  factory _$SpotPhotoCopyWith(_SpotPhoto value, $Res Function(_SpotPhoto) _then) = __$SpotPhotoCopyWithImpl;
@override @useResult
$Res call({
 String path, int size, int order
});




}
/// @nodoc
class __$SpotPhotoCopyWithImpl<$Res>
    implements _$SpotPhotoCopyWith<$Res> {
  __$SpotPhotoCopyWithImpl(this._self, this._then);

  final _SpotPhoto _self;
  final $Res Function(_SpotPhoto) _then;

/// Create a copy of SpotPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? size = null,Object? order = null,}) {
  return _then(_SpotPhoto(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
