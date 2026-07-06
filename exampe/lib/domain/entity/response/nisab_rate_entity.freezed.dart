// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nisab_rate_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NisabRateEntity {

 int? get id; String? get code; String? get name; String? get unit; double? get nisabQuantity; double? get pricePerUnit; double? get nisabValue; String? get updatedAt;
/// Create a copy of NisabRateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NisabRateEntityCopyWith<NisabRateEntity> get copyWith => _$NisabRateEntityCopyWithImpl<NisabRateEntity>(this as NisabRateEntity, _$identity);

  /// Serializes this NisabRateEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NisabRateEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.nisabQuantity, nisabQuantity) || other.nisabQuantity == nisabQuantity)&&(identical(other.pricePerUnit, pricePerUnit) || other.pricePerUnit == pricePerUnit)&&(identical(other.nisabValue, nisabValue) || other.nisabValue == nisabValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,unit,nisabQuantity,pricePerUnit,nisabValue,updatedAt);

@override
String toString() {
  return 'NisabRateEntity(id: $id, code: $code, name: $name, unit: $unit, nisabQuantity: $nisabQuantity, pricePerUnit: $pricePerUnit, nisabValue: $nisabValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $NisabRateEntityCopyWith<$Res>  {
  factory $NisabRateEntityCopyWith(NisabRateEntity value, $Res Function(NisabRateEntity) _then) = _$NisabRateEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? code, String? name, String? unit, double? nisabQuantity, double? pricePerUnit, double? nisabValue, String? updatedAt
});




}
/// @nodoc
class _$NisabRateEntityCopyWithImpl<$Res>
    implements $NisabRateEntityCopyWith<$Res> {
  _$NisabRateEntityCopyWithImpl(this._self, this._then);

  final NisabRateEntity _self;
  final $Res Function(NisabRateEntity) _then;

/// Create a copy of NisabRateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? unit = freezed,Object? nisabQuantity = freezed,Object? pricePerUnit = freezed,Object? nisabValue = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,nisabQuantity: freezed == nisabQuantity ? _self.nisabQuantity : nisabQuantity // ignore: cast_nullable_to_non_nullable
as double?,pricePerUnit: freezed == pricePerUnit ? _self.pricePerUnit : pricePerUnit // ignore: cast_nullable_to_non_nullable
as double?,nisabValue: freezed == nisabValue ? _self.nisabValue : nisabValue // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NisabRateEntity].
extension NisabRateEntityPatterns on NisabRateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NisabRateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NisabRateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NisabRateEntity value)  $default,){
final _that = this;
switch (_that) {
case _NisabRateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NisabRateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NisabRateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit,  double? nisabValue,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NisabRateEntity() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit,_that.nisabValue,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit,  double? nisabValue,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _NisabRateEntity():
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit,_that.nisabValue,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit,  double? nisabValue,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _NisabRateEntity() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit,_that.nisabValue,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NisabRateEntity implements NisabRateEntity {
  const _NisabRateEntity({this.id, this.code, this.name, this.unit, this.nisabQuantity, this.pricePerUnit, this.nisabValue, this.updatedAt});
  factory _NisabRateEntity.fromJson(Map<String, dynamic> json) => _$NisabRateEntityFromJson(json);

@override final  int? id;
@override final  String? code;
@override final  String? name;
@override final  String? unit;
@override final  double? nisabQuantity;
@override final  double? pricePerUnit;
@override final  double? nisabValue;
@override final  String? updatedAt;

/// Create a copy of NisabRateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NisabRateEntityCopyWith<_NisabRateEntity> get copyWith => __$NisabRateEntityCopyWithImpl<_NisabRateEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NisabRateEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NisabRateEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.nisabQuantity, nisabQuantity) || other.nisabQuantity == nisabQuantity)&&(identical(other.pricePerUnit, pricePerUnit) || other.pricePerUnit == pricePerUnit)&&(identical(other.nisabValue, nisabValue) || other.nisabValue == nisabValue)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,unit,nisabQuantity,pricePerUnit,nisabValue,updatedAt);

@override
String toString() {
  return 'NisabRateEntity(id: $id, code: $code, name: $name, unit: $unit, nisabQuantity: $nisabQuantity, pricePerUnit: $pricePerUnit, nisabValue: $nisabValue, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$NisabRateEntityCopyWith<$Res> implements $NisabRateEntityCopyWith<$Res> {
  factory _$NisabRateEntityCopyWith(_NisabRateEntity value, $Res Function(_NisabRateEntity) _then) = __$NisabRateEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? code, String? name, String? unit, double? nisabQuantity, double? pricePerUnit, double? nisabValue, String? updatedAt
});




}
/// @nodoc
class __$NisabRateEntityCopyWithImpl<$Res>
    implements _$NisabRateEntityCopyWith<$Res> {
  __$NisabRateEntityCopyWithImpl(this._self, this._then);

  final _NisabRateEntity _self;
  final $Res Function(_NisabRateEntity) _then;

/// Create a copy of NisabRateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? unit = freezed,Object? nisabQuantity = freezed,Object? pricePerUnit = freezed,Object? nisabValue = freezed,Object? updatedAt = freezed,}) {
  return _then(_NisabRateEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,nisabQuantity: freezed == nisabQuantity ? _self.nisabQuantity : nisabQuantity // ignore: cast_nullable_to_non_nullable
as double?,pricePerUnit: freezed == pricePerUnit ? _self.pricePerUnit : pricePerUnit // ignore: cast_nullable_to_non_nullable
as double?,nisabValue: freezed == nisabValue ? _self.nisabValue : nisabValue // ignore: cast_nullable_to_non_nullable
as double?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
