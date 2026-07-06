// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterResponseEntity {

 String? get userId; int? get muzakkiId; String? get name; String? get email; String? get phone;
/// Create a copy of RegisterResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterResponseEntityCopyWith<RegisterResponseEntity> get copyWith => _$RegisterResponseEntityCopyWithImpl<RegisterResponseEntity>(this as RegisterResponseEntity, _$identity);

  /// Serializes this RegisterResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterResponseEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,muzakkiId,name,email,phone);

@override
String toString() {
  return 'RegisterResponseEntity(userId: $userId, muzakkiId: $muzakkiId, name: $name, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $RegisterResponseEntityCopyWith<$Res>  {
  factory $RegisterResponseEntityCopyWith(RegisterResponseEntity value, $Res Function(RegisterResponseEntity) _then) = _$RegisterResponseEntityCopyWithImpl;
@useResult
$Res call({
 String? userId, int? muzakkiId, String? name, String? email, String? phone
});




}
/// @nodoc
class _$RegisterResponseEntityCopyWithImpl<$Res>
    implements $RegisterResponseEntityCopyWith<$Res> {
  _$RegisterResponseEntityCopyWithImpl(this._self, this._then);

  final RegisterResponseEntity _self;
  final $Res Function(RegisterResponseEntity) _then;

/// Create a copy of RegisterResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? muzakkiId = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterResponseEntity].
extension RegisterResponseEntityPatterns on RegisterResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? userId,  int? muzakkiId,  String? name,  String? email,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterResponseEntity() when $default != null:
return $default(_that.userId,_that.muzakkiId,_that.name,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? userId,  int? muzakkiId,  String? name,  String? email,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseEntity():
return $default(_that.userId,_that.muzakkiId,_that.name,_that.email,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? userId,  int? muzakkiId,  String? name,  String? email,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseEntity() when $default != null:
return $default(_that.userId,_that.muzakkiId,_that.name,_that.email,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterResponseEntity implements RegisterResponseEntity {
  const _RegisterResponseEntity({this.userId, this.muzakkiId, this.name, this.email, this.phone});
  factory _RegisterResponseEntity.fromJson(Map<String, dynamic> json) => _$RegisterResponseEntityFromJson(json);

@override final  String? userId;
@override final  int? muzakkiId;
@override final  String? name;
@override final  String? email;
@override final  String? phone;

/// Create a copy of RegisterResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterResponseEntityCopyWith<_RegisterResponseEntity> get copyWith => __$RegisterResponseEntityCopyWithImpl<_RegisterResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterResponseEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,muzakkiId,name,email,phone);

@override
String toString() {
  return 'RegisterResponseEntity(userId: $userId, muzakkiId: $muzakkiId, name: $name, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$RegisterResponseEntityCopyWith<$Res> implements $RegisterResponseEntityCopyWith<$Res> {
  factory _$RegisterResponseEntityCopyWith(_RegisterResponseEntity value, $Res Function(_RegisterResponseEntity) _then) = __$RegisterResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? userId, int? muzakkiId, String? name, String? email, String? phone
});




}
/// @nodoc
class __$RegisterResponseEntityCopyWithImpl<$Res>
    implements _$RegisterResponseEntityCopyWith<$Res> {
  __$RegisterResponseEntityCopyWithImpl(this._self, this._then);

  final _RegisterResponseEntity _self;
  final $Res Function(_RegisterResponseEntity) _then;

/// Create a copy of RegisterResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? muzakkiId = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_RegisterResponseEntity(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
