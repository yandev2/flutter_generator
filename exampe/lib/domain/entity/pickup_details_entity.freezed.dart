// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupDetailsEntity {

 String? get address; double? get latitude; double? get longitude; String? get scheduledDate; String? get scheduledTimeNote; String? get notes;
/// Create a copy of PickupDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupDetailsEntityCopyWith<PickupDetailsEntity> get copyWith => _$PickupDetailsEntityCopyWithImpl<PickupDetailsEntity>(this as PickupDetailsEntity, _$identity);

  /// Serializes this PickupDetailsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupDetailsEntity&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.scheduledDate, scheduledDate) || other.scheduledDate == scheduledDate)&&(identical(other.scheduledTimeNote, scheduledTimeNote) || other.scheduledTimeNote == scheduledTimeNote)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude,scheduledDate,scheduledTimeNote,notes);

@override
String toString() {
  return 'PickupDetailsEntity(address: $address, latitude: $latitude, longitude: $longitude, scheduledDate: $scheduledDate, scheduledTimeNote: $scheduledTimeNote, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PickupDetailsEntityCopyWith<$Res>  {
  factory $PickupDetailsEntityCopyWith(PickupDetailsEntity value, $Res Function(PickupDetailsEntity) _then) = _$PickupDetailsEntityCopyWithImpl;
@useResult
$Res call({
 String? address, double? latitude, double? longitude, String? scheduledDate, String? scheduledTimeNote, String? notes
});




}
/// @nodoc
class _$PickupDetailsEntityCopyWithImpl<$Res>
    implements $PickupDetailsEntityCopyWith<$Res> {
  _$PickupDetailsEntityCopyWithImpl(this._self, this._then);

  final PickupDetailsEntity _self;
  final $Res Function(PickupDetailsEntity) _then;

/// Create a copy of PickupDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? scheduledDate = freezed,Object? scheduledTimeNote = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,scheduledDate: freezed == scheduledDate ? _self.scheduledDate : scheduledDate // ignore: cast_nullable_to_non_nullable
as String?,scheduledTimeNote: freezed == scheduledTimeNote ? _self.scheduledTimeNote : scheduledTimeNote // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupDetailsEntity].
extension PickupDetailsEntityPatterns on PickupDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PickupDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PickupDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  double? latitude,  double? longitude,  String? scheduledDate,  String? scheduledTimeNote,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupDetailsEntity() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude,_that.scheduledDate,_that.scheduledTimeNote,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  double? latitude,  double? longitude,  String? scheduledDate,  String? scheduledTimeNote,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _PickupDetailsEntity():
return $default(_that.address,_that.latitude,_that.longitude,_that.scheduledDate,_that.scheduledTimeNote,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  double? latitude,  double? longitude,  String? scheduledDate,  String? scheduledTimeNote,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _PickupDetailsEntity() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude,_that.scheduledDate,_that.scheduledTimeNote,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupDetailsEntity implements PickupDetailsEntity {
  const _PickupDetailsEntity({this.address, this.latitude, this.longitude, this.scheduledDate, this.scheduledTimeNote, this.notes});
  factory _PickupDetailsEntity.fromJson(Map<String, dynamic> json) => _$PickupDetailsEntityFromJson(json);

@override final  String? address;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? scheduledDate;
@override final  String? scheduledTimeNote;
@override final  String? notes;

/// Create a copy of PickupDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupDetailsEntityCopyWith<_PickupDetailsEntity> get copyWith => __$PickupDetailsEntityCopyWithImpl<_PickupDetailsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupDetailsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupDetailsEntity&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.scheduledDate, scheduledDate) || other.scheduledDate == scheduledDate)&&(identical(other.scheduledTimeNote, scheduledTimeNote) || other.scheduledTimeNote == scheduledTimeNote)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude,scheduledDate,scheduledTimeNote,notes);

@override
String toString() {
  return 'PickupDetailsEntity(address: $address, latitude: $latitude, longitude: $longitude, scheduledDate: $scheduledDate, scheduledTimeNote: $scheduledTimeNote, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PickupDetailsEntityCopyWith<$Res> implements $PickupDetailsEntityCopyWith<$Res> {
  factory _$PickupDetailsEntityCopyWith(_PickupDetailsEntity value, $Res Function(_PickupDetailsEntity) _then) = __$PickupDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 String? address, double? latitude, double? longitude, String? scheduledDate, String? scheduledTimeNote, String? notes
});




}
/// @nodoc
class __$PickupDetailsEntityCopyWithImpl<$Res>
    implements _$PickupDetailsEntityCopyWith<$Res> {
  __$PickupDetailsEntityCopyWithImpl(this._self, this._then);

  final _PickupDetailsEntity _self;
  final $Res Function(_PickupDetailsEntity) _then;

/// Create a copy of PickupDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? scheduledDate = freezed,Object? scheduledTimeNote = freezed,Object? notes = freezed,}) {
  return _then(_PickupDetailsEntity(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,scheduledDate: freezed == scheduledDate ? _self.scheduledDate : scheduledDate // ignore: cast_nullable_to_non_nullable
as String?,scheduledTimeNote: freezed == scheduledTimeNote ? _self.scheduledTimeNote : scheduledTimeNote // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
