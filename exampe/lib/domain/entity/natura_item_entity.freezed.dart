// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'natura_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NaturaItemEntity {

 int? get inventoryItemId; String? get itemName; double? get qty; double? get lineValue;
/// Create a copy of NaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NaturaItemEntityCopyWith<NaturaItemEntity> get copyWith => _$NaturaItemEntityCopyWithImpl<NaturaItemEntity>(this as NaturaItemEntity, _$identity);

  /// Serializes this NaturaItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NaturaItemEntity&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.lineValue, lineValue) || other.lineValue == lineValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inventoryItemId,itemName,qty,lineValue);

@override
String toString() {
  return 'NaturaItemEntity(inventoryItemId: $inventoryItemId, itemName: $itemName, qty: $qty, lineValue: $lineValue)';
}


}

/// @nodoc
abstract mixin class $NaturaItemEntityCopyWith<$Res>  {
  factory $NaturaItemEntityCopyWith(NaturaItemEntity value, $Res Function(NaturaItemEntity) _then) = _$NaturaItemEntityCopyWithImpl;
@useResult
$Res call({
 int? inventoryItemId, String? itemName, double? qty, double? lineValue
});




}
/// @nodoc
class _$NaturaItemEntityCopyWithImpl<$Res>
    implements $NaturaItemEntityCopyWith<$Res> {
  _$NaturaItemEntityCopyWithImpl(this._self, this._then);

  final NaturaItemEntity _self;
  final $Res Function(NaturaItemEntity) _then;

/// Create a copy of NaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inventoryItemId = freezed,Object? itemName = freezed,Object? qty = freezed,Object? lineValue = freezed,}) {
  return _then(_self.copyWith(
inventoryItemId: freezed == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as double?,lineValue: freezed == lineValue ? _self.lineValue : lineValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [NaturaItemEntity].
extension NaturaItemEntityPatterns on NaturaItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NaturaItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NaturaItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NaturaItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _NaturaItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NaturaItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NaturaItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? inventoryItemId,  String? itemName,  double? qty,  double? lineValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NaturaItemEntity() when $default != null:
return $default(_that.inventoryItemId,_that.itemName,_that.qty,_that.lineValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? inventoryItemId,  String? itemName,  double? qty,  double? lineValue)  $default,) {final _that = this;
switch (_that) {
case _NaturaItemEntity():
return $default(_that.inventoryItemId,_that.itemName,_that.qty,_that.lineValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? inventoryItemId,  String? itemName,  double? qty,  double? lineValue)?  $default,) {final _that = this;
switch (_that) {
case _NaturaItemEntity() when $default != null:
return $default(_that.inventoryItemId,_that.itemName,_that.qty,_that.lineValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NaturaItemEntity implements NaturaItemEntity {
  const _NaturaItemEntity({this.inventoryItemId, this.itemName, this.qty, this.lineValue});
  factory _NaturaItemEntity.fromJson(Map<String, dynamic> json) => _$NaturaItemEntityFromJson(json);

@override final  int? inventoryItemId;
@override final  String? itemName;
@override final  double? qty;
@override final  double? lineValue;

/// Create a copy of NaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NaturaItemEntityCopyWith<_NaturaItemEntity> get copyWith => __$NaturaItemEntityCopyWithImpl<_NaturaItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NaturaItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NaturaItemEntity&&(identical(other.inventoryItemId, inventoryItemId) || other.inventoryItemId == inventoryItemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.lineValue, lineValue) || other.lineValue == lineValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inventoryItemId,itemName,qty,lineValue);

@override
String toString() {
  return 'NaturaItemEntity(inventoryItemId: $inventoryItemId, itemName: $itemName, qty: $qty, lineValue: $lineValue)';
}


}

/// @nodoc
abstract mixin class _$NaturaItemEntityCopyWith<$Res> implements $NaturaItemEntityCopyWith<$Res> {
  factory _$NaturaItemEntityCopyWith(_NaturaItemEntity value, $Res Function(_NaturaItemEntity) _then) = __$NaturaItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int? inventoryItemId, String? itemName, double? qty, double? lineValue
});




}
/// @nodoc
class __$NaturaItemEntityCopyWithImpl<$Res>
    implements _$NaturaItemEntityCopyWith<$Res> {
  __$NaturaItemEntityCopyWithImpl(this._self, this._then);

  final _NaturaItemEntity _self;
  final $Res Function(_NaturaItemEntity) _then;

/// Create a copy of NaturaItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inventoryItemId = freezed,Object? itemName = freezed,Object? qty = freezed,Object? lineValue = freezed,}) {
  return _then(_NaturaItemEntity(
inventoryItemId: freezed == inventoryItemId ? _self.inventoryItemId : inventoryItemId // ignore: cast_nullable_to_non_nullable
as int?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as double?,lineValue: freezed == lineValue ? _self.lineValue : lineValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
