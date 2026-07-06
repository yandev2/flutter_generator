// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItemEntity {

 int? get id; String? get name; String? get uom;
/// Create a copy of InventoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemEntityCopyWith<InventoryItemEntity> get copyWith => _$InventoryItemEntityCopyWithImpl<InventoryItemEntity>(this as InventoryItemEntity, _$identity);

  /// Serializes this InventoryItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.uom, uom) || other.uom == uom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,uom);

@override
String toString() {
  return 'InventoryItemEntity(id: $id, name: $name, uom: $uom)';
}


}

/// @nodoc
abstract mixin class $InventoryItemEntityCopyWith<$Res>  {
  factory $InventoryItemEntityCopyWith(InventoryItemEntity value, $Res Function(InventoryItemEntity) _then) = _$InventoryItemEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? uom
});




}
/// @nodoc
class _$InventoryItemEntityCopyWithImpl<$Res>
    implements $InventoryItemEntityCopyWith<$Res> {
  _$InventoryItemEntityCopyWithImpl(this._self, this._then);

  final InventoryItemEntity _self;
  final $Res Function(InventoryItemEntity) _then;

/// Create a copy of InventoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? uom = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemEntity].
extension InventoryItemEntityPatterns on InventoryItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? uom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.uom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? uom)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemEntity():
return $default(_that.id,_that.name,_that.uom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? uom)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.uom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemEntity implements InventoryItemEntity {
  const _InventoryItemEntity({this.id, this.name, this.uom});
  factory _InventoryItemEntity.fromJson(Map<String, dynamic> json) => _$InventoryItemEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? uom;

/// Create a copy of InventoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemEntityCopyWith<_InventoryItemEntity> get copyWith => __$InventoryItemEntityCopyWithImpl<_InventoryItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.uom, uom) || other.uom == uom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,uom);

@override
String toString() {
  return 'InventoryItemEntity(id: $id, name: $name, uom: $uom)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemEntityCopyWith<$Res> implements $InventoryItemEntityCopyWith<$Res> {
  factory _$InventoryItemEntityCopyWith(_InventoryItemEntity value, $Res Function(_InventoryItemEntity) _then) = __$InventoryItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? uom
});




}
/// @nodoc
class __$InventoryItemEntityCopyWithImpl<$Res>
    implements _$InventoryItemEntityCopyWith<$Res> {
  __$InventoryItemEntityCopyWithImpl(this._self, this._then);

  final _InventoryItemEntity _self;
  final $Res Function(_InventoryItemEntity) _then;

/// Create a copy of InventoryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? uom = freezed,}) {
  return _then(_InventoryItemEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,uom: freezed == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
