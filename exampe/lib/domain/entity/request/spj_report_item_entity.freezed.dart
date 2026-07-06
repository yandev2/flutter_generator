// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spj_report_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpjReportItemEntity {

 String? get description; int? get amount; String? get receiptFilePath;
/// Create a copy of SpjReportItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpjReportItemEntityCopyWith<SpjReportItemEntity> get copyWith => _$SpjReportItemEntityCopyWithImpl<SpjReportItemEntity>(this as SpjReportItemEntity, _$identity);

  /// Serializes this SpjReportItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpjReportItemEntity&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiptFilePath, receiptFilePath) || other.receiptFilePath == receiptFilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,amount,receiptFilePath);

@override
String toString() {
  return 'SpjReportItemEntity(description: $description, amount: $amount, receiptFilePath: $receiptFilePath)';
}


}

/// @nodoc
abstract mixin class $SpjReportItemEntityCopyWith<$Res>  {
  factory $SpjReportItemEntityCopyWith(SpjReportItemEntity value, $Res Function(SpjReportItemEntity) _then) = _$SpjReportItemEntityCopyWithImpl;
@useResult
$Res call({
 String? description, int? amount, String? receiptFilePath
});




}
/// @nodoc
class _$SpjReportItemEntityCopyWithImpl<$Res>
    implements $SpjReportItemEntityCopyWith<$Res> {
  _$SpjReportItemEntityCopyWithImpl(this._self, this._then);

  final SpjReportItemEntity _self;
  final $Res Function(SpjReportItemEntity) _then;

/// Create a copy of SpjReportItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? amount = freezed,Object? receiptFilePath = freezed,}) {
  return _then(_self.copyWith(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,receiptFilePath: freezed == receiptFilePath ? _self.receiptFilePath : receiptFilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpjReportItemEntity].
extension SpjReportItemEntityPatterns on SpjReportItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpjReportItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpjReportItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpjReportItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpjReportItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpjReportItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpjReportItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  int? amount,  String? receiptFilePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpjReportItemEntity() when $default != null:
return $default(_that.description,_that.amount,_that.receiptFilePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  int? amount,  String? receiptFilePath)  $default,) {final _that = this;
switch (_that) {
case _SpjReportItemEntity():
return $default(_that.description,_that.amount,_that.receiptFilePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  int? amount,  String? receiptFilePath)?  $default,) {final _that = this;
switch (_that) {
case _SpjReportItemEntity() when $default != null:
return $default(_that.description,_that.amount,_that.receiptFilePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpjReportItemEntity implements SpjReportItemEntity {
  const _SpjReportItemEntity({this.description, this.amount, this.receiptFilePath});
  factory _SpjReportItemEntity.fromJson(Map<String, dynamic> json) => _$SpjReportItemEntityFromJson(json);

@override final  String? description;
@override final  int? amount;
@override final  String? receiptFilePath;

/// Create a copy of SpjReportItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpjReportItemEntityCopyWith<_SpjReportItemEntity> get copyWith => __$SpjReportItemEntityCopyWithImpl<_SpjReportItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpjReportItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpjReportItemEntity&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.receiptFilePath, receiptFilePath) || other.receiptFilePath == receiptFilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,amount,receiptFilePath);

@override
String toString() {
  return 'SpjReportItemEntity(description: $description, amount: $amount, receiptFilePath: $receiptFilePath)';
}


}

/// @nodoc
abstract mixin class _$SpjReportItemEntityCopyWith<$Res> implements $SpjReportItemEntityCopyWith<$Res> {
  factory _$SpjReportItemEntityCopyWith(_SpjReportItemEntity value, $Res Function(_SpjReportItemEntity) _then) = __$SpjReportItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String? description, int? amount, String? receiptFilePath
});




}
/// @nodoc
class __$SpjReportItemEntityCopyWithImpl<$Res>
    implements _$SpjReportItemEntityCopyWith<$Res> {
  __$SpjReportItemEntityCopyWithImpl(this._self, this._then);

  final _SpjReportItemEntity _self;
  final $Res Function(_SpjReportItemEntity) _then;

/// Create a copy of SpjReportItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? amount = freezed,Object? receiptFilePath = freezed,}) {
  return _then(_SpjReportItemEntity(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,receiptFilePath: freezed == receiptFilePath ? _self.receiptFilePath : receiptFilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
