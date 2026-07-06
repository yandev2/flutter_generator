// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disbursement_mustahik_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisbursementMustahikEntity {

 String? get name; String? get asnafCategory;
/// Create a copy of DisbursementMustahikEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisbursementMustahikEntityCopyWith<DisbursementMustahikEntity> get copyWith => _$DisbursementMustahikEntityCopyWithImpl<DisbursementMustahikEntity>(this as DisbursementMustahikEntity, _$identity);

  /// Serializes this DisbursementMustahikEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisbursementMustahikEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.asnafCategory, asnafCategory) || other.asnafCategory == asnafCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,asnafCategory);

@override
String toString() {
  return 'DisbursementMustahikEntity(name: $name, asnafCategory: $asnafCategory)';
}


}

/// @nodoc
abstract mixin class $DisbursementMustahikEntityCopyWith<$Res>  {
  factory $DisbursementMustahikEntityCopyWith(DisbursementMustahikEntity value, $Res Function(DisbursementMustahikEntity) _then) = _$DisbursementMustahikEntityCopyWithImpl;
@useResult
$Res call({
 String? name, String? asnafCategory
});




}
/// @nodoc
class _$DisbursementMustahikEntityCopyWithImpl<$Res>
    implements $DisbursementMustahikEntityCopyWith<$Res> {
  _$DisbursementMustahikEntityCopyWithImpl(this._self, this._then);

  final DisbursementMustahikEntity _self;
  final $Res Function(DisbursementMustahikEntity) _then;

/// Create a copy of DisbursementMustahikEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? asnafCategory = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,asnafCategory: freezed == asnafCategory ? _self.asnafCategory : asnafCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisbursementMustahikEntity].
extension DisbursementMustahikEntityPatterns on DisbursementMustahikEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisbursementMustahikEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisbursementMustahikEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisbursementMustahikEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisbursementMustahikEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisbursementMustahikEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisbursementMustahikEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? asnafCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisbursementMustahikEntity() when $default != null:
return $default(_that.name,_that.asnafCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? asnafCategory)  $default,) {final _that = this;
switch (_that) {
case _DisbursementMustahikEntity():
return $default(_that.name,_that.asnafCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? asnafCategory)?  $default,) {final _that = this;
switch (_that) {
case _DisbursementMustahikEntity() when $default != null:
return $default(_that.name,_that.asnafCategory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisbursementMustahikEntity implements DisbursementMustahikEntity {
  const _DisbursementMustahikEntity({this.name, this.asnafCategory});
  factory _DisbursementMustahikEntity.fromJson(Map<String, dynamic> json) => _$DisbursementMustahikEntityFromJson(json);

@override final  String? name;
@override final  String? asnafCategory;

/// Create a copy of DisbursementMustahikEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisbursementMustahikEntityCopyWith<_DisbursementMustahikEntity> get copyWith => __$DisbursementMustahikEntityCopyWithImpl<_DisbursementMustahikEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisbursementMustahikEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisbursementMustahikEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.asnafCategory, asnafCategory) || other.asnafCategory == asnafCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,asnafCategory);

@override
String toString() {
  return 'DisbursementMustahikEntity(name: $name, asnafCategory: $asnafCategory)';
}


}

/// @nodoc
abstract mixin class _$DisbursementMustahikEntityCopyWith<$Res> implements $DisbursementMustahikEntityCopyWith<$Res> {
  factory _$DisbursementMustahikEntityCopyWith(_DisbursementMustahikEntity value, $Res Function(_DisbursementMustahikEntity) _then) = __$DisbursementMustahikEntityCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? asnafCategory
});




}
/// @nodoc
class __$DisbursementMustahikEntityCopyWithImpl<$Res>
    implements _$DisbursementMustahikEntityCopyWith<$Res> {
  __$DisbursementMustahikEntityCopyWithImpl(this._self, this._then);

  final _DisbursementMustahikEntity _self;
  final $Res Function(_DisbursementMustahikEntity) _then;

/// Create a copy of DisbursementMustahikEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? asnafCategory = freezed,}) {
  return _then(_DisbursementMustahikEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,asnafCategory: freezed == asnafCategory ? _self.asnafCategory : asnafCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
