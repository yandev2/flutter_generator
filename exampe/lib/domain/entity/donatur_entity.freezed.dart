// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donatur_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonaturEntity {

 int? get id; String? get name; int? get amount; bool? get isAnonymous; String? get date; String? get avatar;
/// Create a copy of DonaturEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonaturEntityCopyWith<DonaturEntity> get copyWith => _$DonaturEntityCopyWithImpl<DonaturEntity>(this as DonaturEntity, _$identity);

  /// Serializes this DonaturEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonaturEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.date, date) || other.date == date)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amount,isAnonymous,date,avatar);

@override
String toString() {
  return 'DonaturEntity(id: $id, name: $name, amount: $amount, isAnonymous: $isAnonymous, date: $date, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $DonaturEntityCopyWith<$Res>  {
  factory $DonaturEntityCopyWith(DonaturEntity value, $Res Function(DonaturEntity) _then) = _$DonaturEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? amount, bool? isAnonymous, String? date, String? avatar
});




}
/// @nodoc
class _$DonaturEntityCopyWithImpl<$Res>
    implements $DonaturEntityCopyWith<$Res> {
  _$DonaturEntityCopyWithImpl(this._self, this._then);

  final DonaturEntity _self;
  final $Res Function(DonaturEntity) _then;

/// Create a copy of DonaturEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? amount = freezed,Object? isAnonymous = freezed,Object? date = freezed,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DonaturEntity].
extension DonaturEntityPatterns on DonaturEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonaturEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonaturEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonaturEntity value)  $default,){
final _that = this;
switch (_that) {
case _DonaturEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonaturEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DonaturEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? amount,  bool? isAnonymous,  String? date,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonaturEntity() when $default != null:
return $default(_that.id,_that.name,_that.amount,_that.isAnonymous,_that.date,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? amount,  bool? isAnonymous,  String? date,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _DonaturEntity():
return $default(_that.id,_that.name,_that.amount,_that.isAnonymous,_that.date,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? amount,  bool? isAnonymous,  String? date,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _DonaturEntity() when $default != null:
return $default(_that.id,_that.name,_that.amount,_that.isAnonymous,_that.date,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonaturEntity implements DonaturEntity {
  const _DonaturEntity({this.id, this.name, this.amount, this.isAnonymous, this.date, this.avatar});
  factory _DonaturEntity.fromJson(Map<String, dynamic> json) => _$DonaturEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? amount;
@override final  bool? isAnonymous;
@override final  String? date;
@override final  String? avatar;

/// Create a copy of DonaturEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonaturEntityCopyWith<_DonaturEntity> get copyWith => __$DonaturEntityCopyWithImpl<_DonaturEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonaturEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonaturEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.date, date) || other.date == date)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amount,isAnonymous,date,avatar);

@override
String toString() {
  return 'DonaturEntity(id: $id, name: $name, amount: $amount, isAnonymous: $isAnonymous, date: $date, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$DonaturEntityCopyWith<$Res> implements $DonaturEntityCopyWith<$Res> {
  factory _$DonaturEntityCopyWith(_DonaturEntity value, $Res Function(_DonaturEntity) _then) = __$DonaturEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? amount, bool? isAnonymous, String? date, String? avatar
});




}
/// @nodoc
class __$DonaturEntityCopyWithImpl<$Res>
    implements _$DonaturEntityCopyWith<$Res> {
  __$DonaturEntityCopyWithImpl(this._self, this._then);

  final _DonaturEntity _self;
  final $Res Function(_DonaturEntity) _then;

/// Create a copy of DonaturEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? amount = freezed,Object? isAnonymous = freezed,Object? date = freezed,Object? avatar = freezed,}) {
  return _then(_DonaturEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
