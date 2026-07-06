// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupTaskEntity {

 int? get id; String? get type; String? get requestCode; String? get status; String? get pickupType; String? get muzakkiPhone; String? get muzzaki; String? get description; String? get address; String? get scheduledDate; String? get scheduledTimeNote; String? get createdAt; List<PickupTaskNaturaItemEntity>? get naturaItems; int? get estimatedAmount; double? get latitude; double? get longitude; String? get notes;
/// Create a copy of PickupTaskEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupTaskEntityCopyWith<PickupTaskEntity> get copyWith => _$PickupTaskEntityCopyWithImpl<PickupTaskEntity>(this as PickupTaskEntity, _$identity);

  /// Serializes this PickupTaskEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupTaskEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.requestCode, requestCode) || other.requestCode == requestCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.pickupType, pickupType) || other.pickupType == pickupType)&&(identical(other.muzakkiPhone, muzakkiPhone) || other.muzakkiPhone == muzakkiPhone)&&(identical(other.muzzaki, muzzaki) || other.muzzaki == muzzaki)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.scheduledDate, scheduledDate) || other.scheduledDate == scheduledDate)&&(identical(other.scheduledTimeNote, scheduledTimeNote) || other.scheduledTimeNote == scheduledTimeNote)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.naturaItems, naturaItems)&&(identical(other.estimatedAmount, estimatedAmount) || other.estimatedAmount == estimatedAmount)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,requestCode,status,pickupType,muzakkiPhone,muzzaki,description,address,scheduledDate,scheduledTimeNote,createdAt,const DeepCollectionEquality().hash(naturaItems),estimatedAmount,latitude,longitude,notes);

@override
String toString() {
  return 'PickupTaskEntity(id: $id, type: $type, requestCode: $requestCode, status: $status, pickupType: $pickupType, muzakkiPhone: $muzakkiPhone, muzzaki: $muzzaki, description: $description, address: $address, scheduledDate: $scheduledDate, scheduledTimeNote: $scheduledTimeNote, createdAt: $createdAt, naturaItems: $naturaItems, estimatedAmount: $estimatedAmount, latitude: $latitude, longitude: $longitude, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PickupTaskEntityCopyWith<$Res>  {
  factory $PickupTaskEntityCopyWith(PickupTaskEntity value, $Res Function(PickupTaskEntity) _then) = _$PickupTaskEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? requestCode, String? status, String? pickupType, String? muzakkiPhone, String? muzzaki, String? description, String? address, String? scheduledDate, String? scheduledTimeNote, String? createdAt, List<PickupTaskNaturaItemEntity>? naturaItems, int? estimatedAmount, double? latitude, double? longitude, String? notes
});




}
/// @nodoc
class _$PickupTaskEntityCopyWithImpl<$Res>
    implements $PickupTaskEntityCopyWith<$Res> {
  _$PickupTaskEntityCopyWithImpl(this._self, this._then);

  final PickupTaskEntity _self;
  final $Res Function(PickupTaskEntity) _then;

/// Create a copy of PickupTaskEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? requestCode = freezed,Object? status = freezed,Object? pickupType = freezed,Object? muzakkiPhone = freezed,Object? muzzaki = freezed,Object? description = freezed,Object? address = freezed,Object? scheduledDate = freezed,Object? scheduledTimeNote = freezed,Object? createdAt = freezed,Object? naturaItems = freezed,Object? estimatedAmount = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,requestCode: freezed == requestCode ? _self.requestCode : requestCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,pickupType: freezed == pickupType ? _self.pickupType : pickupType // ignore: cast_nullable_to_non_nullable
as String?,muzakkiPhone: freezed == muzakkiPhone ? _self.muzakkiPhone : muzakkiPhone // ignore: cast_nullable_to_non_nullable
as String?,muzzaki: freezed == muzzaki ? _self.muzzaki : muzzaki // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,scheduledDate: freezed == scheduledDate ? _self.scheduledDate : scheduledDate // ignore: cast_nullable_to_non_nullable
as String?,scheduledTimeNote: freezed == scheduledTimeNote ? _self.scheduledTimeNote : scheduledTimeNote // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,naturaItems: freezed == naturaItems ? _self.naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<PickupTaskNaturaItemEntity>?,estimatedAmount: freezed == estimatedAmount ? _self.estimatedAmount : estimatedAmount // ignore: cast_nullable_to_non_nullable
as int?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupTaskEntity].
extension PickupTaskEntityPatterns on PickupTaskEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupTaskEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupTaskEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupTaskEntity value)  $default,){
final _that = this;
switch (_that) {
case _PickupTaskEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupTaskEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PickupTaskEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? requestCode,  String? status,  String? pickupType,  String? muzakkiPhone,  String? muzzaki,  String? description,  String? address,  String? scheduledDate,  String? scheduledTimeNote,  String? createdAt,  List<PickupTaskNaturaItemEntity>? naturaItems,  int? estimatedAmount,  double? latitude,  double? longitude,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupTaskEntity() when $default != null:
return $default(_that.id,_that.type,_that.requestCode,_that.status,_that.pickupType,_that.muzakkiPhone,_that.muzzaki,_that.description,_that.address,_that.scheduledDate,_that.scheduledTimeNote,_that.createdAt,_that.naturaItems,_that.estimatedAmount,_that.latitude,_that.longitude,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? requestCode,  String? status,  String? pickupType,  String? muzakkiPhone,  String? muzzaki,  String? description,  String? address,  String? scheduledDate,  String? scheduledTimeNote,  String? createdAt,  List<PickupTaskNaturaItemEntity>? naturaItems,  int? estimatedAmount,  double? latitude,  double? longitude,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _PickupTaskEntity():
return $default(_that.id,_that.type,_that.requestCode,_that.status,_that.pickupType,_that.muzakkiPhone,_that.muzzaki,_that.description,_that.address,_that.scheduledDate,_that.scheduledTimeNote,_that.createdAt,_that.naturaItems,_that.estimatedAmount,_that.latitude,_that.longitude,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? requestCode,  String? status,  String? pickupType,  String? muzakkiPhone,  String? muzzaki,  String? description,  String? address,  String? scheduledDate,  String? scheduledTimeNote,  String? createdAt,  List<PickupTaskNaturaItemEntity>? naturaItems,  int? estimatedAmount,  double? latitude,  double? longitude,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _PickupTaskEntity() when $default != null:
return $default(_that.id,_that.type,_that.requestCode,_that.status,_that.pickupType,_that.muzakkiPhone,_that.muzzaki,_that.description,_that.address,_that.scheduledDate,_that.scheduledTimeNote,_that.createdAt,_that.naturaItems,_that.estimatedAmount,_that.latitude,_that.longitude,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupTaskEntity implements PickupTaskEntity {
  const _PickupTaskEntity({this.id, this.type, this.requestCode, this.status, this.pickupType, this.muzakkiPhone, this.muzzaki, this.description, this.address, this.scheduledDate, this.scheduledTimeNote, this.createdAt, final  List<PickupTaskNaturaItemEntity>? naturaItems, this.estimatedAmount, this.latitude, this.longitude, this.notes}): _naturaItems = naturaItems;
  factory _PickupTaskEntity.fromJson(Map<String, dynamic> json) => _$PickupTaskEntityFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? requestCode;
@override final  String? status;
@override final  String? pickupType;
@override final  String? muzakkiPhone;
@override final  String? muzzaki;
@override final  String? description;
@override final  String? address;
@override final  String? scheduledDate;
@override final  String? scheduledTimeNote;
@override final  String? createdAt;
 final  List<PickupTaskNaturaItemEntity>? _naturaItems;
@override List<PickupTaskNaturaItemEntity>? get naturaItems {
  final value = _naturaItems;
  if (value == null) return null;
  if (_naturaItems is EqualUnmodifiableListView) return _naturaItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? estimatedAmount;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? notes;

/// Create a copy of PickupTaskEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupTaskEntityCopyWith<_PickupTaskEntity> get copyWith => __$PickupTaskEntityCopyWithImpl<_PickupTaskEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupTaskEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupTaskEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.requestCode, requestCode) || other.requestCode == requestCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.pickupType, pickupType) || other.pickupType == pickupType)&&(identical(other.muzakkiPhone, muzakkiPhone) || other.muzakkiPhone == muzakkiPhone)&&(identical(other.muzzaki, muzzaki) || other.muzzaki == muzzaki)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.scheduledDate, scheduledDate) || other.scheduledDate == scheduledDate)&&(identical(other.scheduledTimeNote, scheduledTimeNote) || other.scheduledTimeNote == scheduledTimeNote)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._naturaItems, _naturaItems)&&(identical(other.estimatedAmount, estimatedAmount) || other.estimatedAmount == estimatedAmount)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,requestCode,status,pickupType,muzakkiPhone,muzzaki,description,address,scheduledDate,scheduledTimeNote,createdAt,const DeepCollectionEquality().hash(_naturaItems),estimatedAmount,latitude,longitude,notes);

@override
String toString() {
  return 'PickupTaskEntity(id: $id, type: $type, requestCode: $requestCode, status: $status, pickupType: $pickupType, muzakkiPhone: $muzakkiPhone, muzzaki: $muzzaki, description: $description, address: $address, scheduledDate: $scheduledDate, scheduledTimeNote: $scheduledTimeNote, createdAt: $createdAt, naturaItems: $naturaItems, estimatedAmount: $estimatedAmount, latitude: $latitude, longitude: $longitude, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PickupTaskEntityCopyWith<$Res> implements $PickupTaskEntityCopyWith<$Res> {
  factory _$PickupTaskEntityCopyWith(_PickupTaskEntity value, $Res Function(_PickupTaskEntity) _then) = __$PickupTaskEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? requestCode, String? status, String? pickupType, String? muzakkiPhone, String? muzzaki, String? description, String? address, String? scheduledDate, String? scheduledTimeNote, String? createdAt, List<PickupTaskNaturaItemEntity>? naturaItems, int? estimatedAmount, double? latitude, double? longitude, String? notes
});




}
/// @nodoc
class __$PickupTaskEntityCopyWithImpl<$Res>
    implements _$PickupTaskEntityCopyWith<$Res> {
  __$PickupTaskEntityCopyWithImpl(this._self, this._then);

  final _PickupTaskEntity _self;
  final $Res Function(_PickupTaskEntity) _then;

/// Create a copy of PickupTaskEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? requestCode = freezed,Object? status = freezed,Object? pickupType = freezed,Object? muzakkiPhone = freezed,Object? muzzaki = freezed,Object? description = freezed,Object? address = freezed,Object? scheduledDate = freezed,Object? scheduledTimeNote = freezed,Object? createdAt = freezed,Object? naturaItems = freezed,Object? estimatedAmount = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? notes = freezed,}) {
  return _then(_PickupTaskEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,requestCode: freezed == requestCode ? _self.requestCode : requestCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,pickupType: freezed == pickupType ? _self.pickupType : pickupType // ignore: cast_nullable_to_non_nullable
as String?,muzakkiPhone: freezed == muzakkiPhone ? _self.muzakkiPhone : muzakkiPhone // ignore: cast_nullable_to_non_nullable
as String?,muzzaki: freezed == muzzaki ? _self.muzzaki : muzzaki // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,scheduledDate: freezed == scheduledDate ? _self.scheduledDate : scheduledDate // ignore: cast_nullable_to_non_nullable
as String?,scheduledTimeNote: freezed == scheduledTimeNote ? _self.scheduledTimeNote : scheduledTimeNote // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,naturaItems: freezed == naturaItems ? _self._naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<PickupTaskNaturaItemEntity>?,estimatedAmount: freezed == estimatedAmount ? _self.estimatedAmount : estimatedAmount // ignore: cast_nullable_to_non_nullable
as int?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PickupTaskNaturaItemEntity {

 int? get id; String? get name; int? get quantity; String? get uom; String? get photoUrl; num? get lineValue;
/// Create a copy of PickupTaskNaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupTaskNaturaItemEntityCopyWith<PickupTaskNaturaItemEntity> get copyWith => _$PickupTaskNaturaItemEntityCopyWithImpl<PickupTaskNaturaItemEntity>(this as PickupTaskNaturaItemEntity, _$identity);

  /// Serializes this PickupTaskNaturaItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupTaskNaturaItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lineValue, lineValue) || other.lineValue == lineValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,uom,photoUrl,lineValue);

@override
String toString() {
  return 'PickupTaskNaturaItemEntity(id: $id, name: $name, quantity: $quantity, uom: $uom, photoUrl: $photoUrl, lineValue: $lineValue)';
}


}

/// @nodoc
abstract mixin class $PickupTaskNaturaItemEntityCopyWith<$Res>  {
  factory $PickupTaskNaturaItemEntityCopyWith(PickupTaskNaturaItemEntity value, $Res Function(PickupTaskNaturaItemEntity) _then) = _$PickupTaskNaturaItemEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? quantity, String? uom, String? photoUrl, num? lineValue
});




}
/// @nodoc
class _$PickupTaskNaturaItemEntityCopyWithImpl<$Res>
    implements $PickupTaskNaturaItemEntityCopyWith<$Res> {
  _$PickupTaskNaturaItemEntityCopyWithImpl(this._self, this._then);

  final PickupTaskNaturaItemEntity _self;
  final $Res Function(PickupTaskNaturaItemEntity) _then;

/// Create a copy of PickupTaskNaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? quantity = freezed,Object? uom = freezed,Object? photoUrl = freezed,Object? lineValue = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,lineValue: freezed == lineValue ? _self.lineValue : lineValue // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupTaskNaturaItemEntity].
extension PickupTaskNaturaItemEntityPatterns on PickupTaskNaturaItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupTaskNaturaItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupTaskNaturaItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupTaskNaturaItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? quantity,  String? uom,  String? photoUrl,  num? lineValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.uom,_that.photoUrl,_that.lineValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? quantity,  String? uom,  String? photoUrl,  num? lineValue)  $default,) {final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity():
return $default(_that.id,_that.name,_that.quantity,_that.uom,_that.photoUrl,_that.lineValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? quantity,  String? uom,  String? photoUrl,  num? lineValue)?  $default,) {final _that = this;
switch (_that) {
case _PickupTaskNaturaItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.quantity,_that.uom,_that.photoUrl,_that.lineValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupTaskNaturaItemEntity implements PickupTaskNaturaItemEntity {
  const _PickupTaskNaturaItemEntity({this.id, this.name, this.quantity, this.uom, this.photoUrl, this.lineValue});
  factory _PickupTaskNaturaItemEntity.fromJson(Map<String, dynamic> json) => _$PickupTaskNaturaItemEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? quantity;
@override final  String? uom;
@override final  String? photoUrl;
@override final  num? lineValue;

/// Create a copy of PickupTaskNaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupTaskNaturaItemEntityCopyWith<_PickupTaskNaturaItemEntity> get copyWith => __$PickupTaskNaturaItemEntityCopyWithImpl<_PickupTaskNaturaItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupTaskNaturaItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupTaskNaturaItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.uom, uom) || other.uom == uom)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lineValue, lineValue) || other.lineValue == lineValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,quantity,uom,photoUrl,lineValue);

@override
String toString() {
  return 'PickupTaskNaturaItemEntity(id: $id, name: $name, quantity: $quantity, uom: $uom, photoUrl: $photoUrl, lineValue: $lineValue)';
}


}

/// @nodoc
abstract mixin class _$PickupTaskNaturaItemEntityCopyWith<$Res> implements $PickupTaskNaturaItemEntityCopyWith<$Res> {
  factory _$PickupTaskNaturaItemEntityCopyWith(_PickupTaskNaturaItemEntity value, $Res Function(_PickupTaskNaturaItemEntity) _then) = __$PickupTaskNaturaItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? quantity, String? uom, String? photoUrl, num? lineValue
});




}
/// @nodoc
class __$PickupTaskNaturaItemEntityCopyWithImpl<$Res>
    implements _$PickupTaskNaturaItemEntityCopyWith<$Res> {
  __$PickupTaskNaturaItemEntityCopyWithImpl(this._self, this._then);

  final _PickupTaskNaturaItemEntity _self;
  final $Res Function(_PickupTaskNaturaItemEntity) _then;

/// Create a copy of PickupTaskNaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? quantity = freezed,Object? uom = freezed,Object? photoUrl = freezed,Object? lineValue = freezed,}) {
  return _then(_PickupTaskNaturaItemEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,lineValue: freezed == lineValue ? _self.lineValue : lineValue // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
