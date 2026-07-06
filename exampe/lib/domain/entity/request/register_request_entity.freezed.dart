// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRequestEntity {

 String? get name; String? get email; String? get phone; String? get type;// 'individu' | 'institusi'
 String? get nik; String? get npwp; String? get password; String? get confirmPassword; String? get fcmToken;
/// Create a copy of RegisterRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestEntityCopyWith<RegisterRequestEntity> get copyWith => _$RegisterRequestEntityCopyWithImpl<RegisterRequestEntity>(this as RegisterRequestEntity, _$identity);

  /// Serializes this RegisterRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequestEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.type, type) || other.type == type)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.npwp, npwp) || other.npwp == npwp)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,type,nik,npwp,password,confirmPassword,fcmToken);

@override
String toString() {
  return 'RegisterRequestEntity(name: $name, email: $email, phone: $phone, type: $type, nik: $nik, npwp: $npwp, password: $password, confirmPassword: $confirmPassword, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestEntityCopyWith<$Res>  {
  factory $RegisterRequestEntityCopyWith(RegisterRequestEntity value, $Res Function(RegisterRequestEntity) _then) = _$RegisterRequestEntityCopyWithImpl;
@useResult
$Res call({
 String? name, String? email, String? phone, String? type, String? nik, String? npwp, String? password, String? confirmPassword, String? fcmToken
});




}
/// @nodoc
class _$RegisterRequestEntityCopyWithImpl<$Res>
    implements $RegisterRequestEntityCopyWith<$Res> {
  _$RegisterRequestEntityCopyWithImpl(this._self, this._then);

  final RegisterRequestEntity _self;
  final $Res Function(RegisterRequestEntity) _then;

/// Create a copy of RegisterRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? type = freezed,Object? nik = freezed,Object? npwp = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? fcmToken = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,npwp: freezed == npwp ? _self.npwp : npwp // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRequestEntity].
extension RegisterRequestEntityPatterns on RegisterRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? type,  String? nik,  String? npwp,  String? password,  String? confirmPassword,  String? fcmToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRequestEntity() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.type,_that.nik,_that.npwp,_that.password,_that.confirmPassword,_that.fcmToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? type,  String? nik,  String? npwp,  String? password,  String? confirmPassword,  String? fcmToken)  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestEntity():
return $default(_that.name,_that.email,_that.phone,_that.type,_that.nik,_that.npwp,_that.password,_that.confirmPassword,_that.fcmToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? email,  String? phone,  String? type,  String? nik,  String? npwp,  String? password,  String? confirmPassword,  String? fcmToken)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestEntity() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.type,_that.nik,_that.npwp,_that.password,_that.confirmPassword,_that.fcmToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRequestEntity implements RegisterRequestEntity {
  const _RegisterRequestEntity({this.name, this.email, this.phone, this.type, this.nik, this.npwp, this.password, this.confirmPassword, this.fcmToken});
  factory _RegisterRequestEntity.fromJson(Map<String, dynamic> json) => _$RegisterRequestEntityFromJson(json);

@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? type;
// 'individu' | 'institusi'
@override final  String? nik;
@override final  String? npwp;
@override final  String? password;
@override final  String? confirmPassword;
@override final  String? fcmToken;

/// Create a copy of RegisterRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestEntityCopyWith<_RegisterRequestEntity> get copyWith => __$RegisterRequestEntityCopyWithImpl<_RegisterRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequestEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.type, type) || other.type == type)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.npwp, npwp) || other.npwp == npwp)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,type,nik,npwp,password,confirmPassword,fcmToken);

@override
String toString() {
  return 'RegisterRequestEntity(name: $name, email: $email, phone: $phone, type: $type, nik: $nik, npwp: $npwp, password: $password, confirmPassword: $confirmPassword, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestEntityCopyWith<$Res> implements $RegisterRequestEntityCopyWith<$Res> {
  factory _$RegisterRequestEntityCopyWith(_RegisterRequestEntity value, $Res Function(_RegisterRequestEntity) _then) = __$RegisterRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? email, String? phone, String? type, String? nik, String? npwp, String? password, String? confirmPassword, String? fcmToken
});




}
/// @nodoc
class __$RegisterRequestEntityCopyWithImpl<$Res>
    implements _$RegisterRequestEntityCopyWith<$Res> {
  __$RegisterRequestEntityCopyWithImpl(this._self, this._then);

  final _RegisterRequestEntity _self;
  final $Res Function(_RegisterRequestEntity) _then;

/// Create a copy of RegisterRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? type = freezed,Object? nik = freezed,Object? npwp = freezed,Object? password = freezed,Object? confirmPassword = freezed,Object? fcmToken = freezed,}) {
  return _then(_RegisterRequestEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,npwp: freezed == npwp ? _self.npwp : npwp // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
