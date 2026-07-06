// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataEntity {

 String? get id; String? get name; String? get email; String? get phone; String? get status; String? get avatar; String? get roleCode; RoleEntity? get role; MuzakkiProfileEntity? get muzakkiProfile; AmilProfileEntity? get amilProfile;
/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataEntityCopyWith<UserDataEntity> get copyWith => _$UserDataEntityCopyWithImpl<UserDataEntity>(this as UserDataEntity, _$identity);

  /// Serializes this UserDataEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.roleCode, roleCode) || other.roleCode == roleCode)&&(identical(other.role, role) || other.role == role)&&(identical(other.muzakkiProfile, muzakkiProfile) || other.muzakkiProfile == muzakkiProfile)&&(identical(other.amilProfile, amilProfile) || other.amilProfile == amilProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,status,avatar,roleCode,role,muzakkiProfile,amilProfile);

@override
String toString() {
  return 'UserDataEntity(id: $id, name: $name, email: $email, phone: $phone, status: $status, avatar: $avatar, roleCode: $roleCode, role: $role, muzakkiProfile: $muzakkiProfile, amilProfile: $amilProfile)';
}


}

/// @nodoc
abstract mixin class $UserDataEntityCopyWith<$Res>  {
  factory $UserDataEntityCopyWith(UserDataEntity value, $Res Function(UserDataEntity) _then) = _$UserDataEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? email, String? phone, String? status, String? avatar, String? roleCode, RoleEntity? role, MuzakkiProfileEntity? muzakkiProfile, AmilProfileEntity? amilProfile
});


$RoleEntityCopyWith<$Res>? get role;$MuzakkiProfileEntityCopyWith<$Res>? get muzakkiProfile;$AmilProfileEntityCopyWith<$Res>? get amilProfile;

}
/// @nodoc
class _$UserDataEntityCopyWithImpl<$Res>
    implements $UserDataEntityCopyWith<$Res> {
  _$UserDataEntityCopyWithImpl(this._self, this._then);

  final UserDataEntity _self;
  final $Res Function(UserDataEntity) _then;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? status = freezed,Object? avatar = freezed,Object? roleCode = freezed,Object? role = freezed,Object? muzakkiProfile = freezed,Object? amilProfile = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,roleCode: freezed == roleCode ? _self.roleCode : roleCode // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEntity?,muzakkiProfile: freezed == muzakkiProfile ? _self.muzakkiProfile : muzakkiProfile // ignore: cast_nullable_to_non_nullable
as MuzakkiProfileEntity?,amilProfile: freezed == amilProfile ? _self.amilProfile : amilProfile // ignore: cast_nullable_to_non_nullable
as AmilProfileEntity?,
  ));
}
/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleEntityCopyWith<$Res>? get role {
    if (_self.role == null) {
    return null;
  }

  return $RoleEntityCopyWith<$Res>(_self.role!, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuzakkiProfileEntityCopyWith<$Res>? get muzakkiProfile {
    if (_self.muzakkiProfile == null) {
    return null;
  }

  return $MuzakkiProfileEntityCopyWith<$Res>(_self.muzakkiProfile!, (value) {
    return _then(_self.copyWith(muzakkiProfile: value));
  });
}/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilProfileEntityCopyWith<$Res>? get amilProfile {
    if (_self.amilProfile == null) {
    return null;
  }

  return $AmilProfileEntityCopyWith<$Res>(_self.amilProfile!, (value) {
    return _then(_self.copyWith(amilProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDataEntity].
extension UserDataEntityPatterns on UserDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phone,  String? status,  String? avatar,  String? roleCode,  RoleEntity? role,  MuzakkiProfileEntity? muzakkiProfile,  AmilProfileEntity? amilProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.status,_that.avatar,_that.roleCode,_that.role,_that.muzakkiProfile,_that.amilProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phone,  String? status,  String? avatar,  String? roleCode,  RoleEntity? role,  MuzakkiProfileEntity? muzakkiProfile,  AmilProfileEntity? amilProfile)  $default,) {final _that = this;
switch (_that) {
case _UserDataEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.status,_that.avatar,_that.roleCode,_that.role,_that.muzakkiProfile,_that.amilProfile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? email,  String? phone,  String? status,  String? avatar,  String? roleCode,  RoleEntity? role,  MuzakkiProfileEntity? muzakkiProfile,  AmilProfileEntity? amilProfile)?  $default,) {final _that = this;
switch (_that) {
case _UserDataEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.status,_that.avatar,_that.roleCode,_that.role,_that.muzakkiProfile,_that.amilProfile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDataEntity implements UserDataEntity {
  const _UserDataEntity({this.id, this.name, this.email, this.phone, this.status, this.avatar, this.roleCode, this.role, this.muzakkiProfile, this.amilProfile});
  factory _UserDataEntity.fromJson(Map<String, dynamic> json) => _$UserDataEntityFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? status;
@override final  String? avatar;
@override final  String? roleCode;
@override final  RoleEntity? role;
@override final  MuzakkiProfileEntity? muzakkiProfile;
@override final  AmilProfileEntity? amilProfile;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataEntityCopyWith<_UserDataEntity> get copyWith => __$UserDataEntityCopyWithImpl<_UserDataEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.roleCode, roleCode) || other.roleCode == roleCode)&&(identical(other.role, role) || other.role == role)&&(identical(other.muzakkiProfile, muzakkiProfile) || other.muzakkiProfile == muzakkiProfile)&&(identical(other.amilProfile, amilProfile) || other.amilProfile == amilProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,status,avatar,roleCode,role,muzakkiProfile,amilProfile);

@override
String toString() {
  return 'UserDataEntity(id: $id, name: $name, email: $email, phone: $phone, status: $status, avatar: $avatar, roleCode: $roleCode, role: $role, muzakkiProfile: $muzakkiProfile, amilProfile: $amilProfile)';
}


}

/// @nodoc
abstract mixin class _$UserDataEntityCopyWith<$Res> implements $UserDataEntityCopyWith<$Res> {
  factory _$UserDataEntityCopyWith(_UserDataEntity value, $Res Function(_UserDataEntity) _then) = __$UserDataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? email, String? phone, String? status, String? avatar, String? roleCode, RoleEntity? role, MuzakkiProfileEntity? muzakkiProfile, AmilProfileEntity? amilProfile
});


@override $RoleEntityCopyWith<$Res>? get role;@override $MuzakkiProfileEntityCopyWith<$Res>? get muzakkiProfile;@override $AmilProfileEntityCopyWith<$Res>? get amilProfile;

}
/// @nodoc
class __$UserDataEntityCopyWithImpl<$Res>
    implements _$UserDataEntityCopyWith<$Res> {
  __$UserDataEntityCopyWithImpl(this._self, this._then);

  final _UserDataEntity _self;
  final $Res Function(_UserDataEntity) _then;

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? status = freezed,Object? avatar = freezed,Object? roleCode = freezed,Object? role = freezed,Object? muzakkiProfile = freezed,Object? amilProfile = freezed,}) {
  return _then(_UserDataEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,roleCode: freezed == roleCode ? _self.roleCode : roleCode // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleEntity?,muzakkiProfile: freezed == muzakkiProfile ? _self.muzakkiProfile : muzakkiProfile // ignore: cast_nullable_to_non_nullable
as MuzakkiProfileEntity?,amilProfile: freezed == amilProfile ? _self.amilProfile : amilProfile // ignore: cast_nullable_to_non_nullable
as AmilProfileEntity?,
  ));
}

/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleEntityCopyWith<$Res>? get role {
    if (_self.role == null) {
    return null;
  }

  return $RoleEntityCopyWith<$Res>(_self.role!, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuzakkiProfileEntityCopyWith<$Res>? get muzakkiProfile {
    if (_self.muzakkiProfile == null) {
    return null;
  }

  return $MuzakkiProfileEntityCopyWith<$Res>(_self.muzakkiProfile!, (value) {
    return _then(_self.copyWith(muzakkiProfile: value));
  });
}/// Create a copy of UserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilProfileEntityCopyWith<$Res>? get amilProfile {
    if (_self.amilProfile == null) {
    return null;
  }

  return $AmilProfileEntityCopyWith<$Res>(_self.amilProfile!, (value) {
    return _then(_self.copyWith(amilProfile: value));
  });
}
}


/// @nodoc
mixin _$RoleEntity {

 int? get id; String? get name;
/// Create a copy of RoleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleEntityCopyWith<RoleEntity> get copyWith => _$RoleEntityCopyWithImpl<RoleEntity>(this as RoleEntity, _$identity);

  /// Serializes this RoleEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoleEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $RoleEntityCopyWith<$Res>  {
  factory $RoleEntityCopyWith(RoleEntity value, $Res Function(RoleEntity) _then) = _$RoleEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$RoleEntityCopyWithImpl<$Res>
    implements $RoleEntityCopyWith<$Res> {
  _$RoleEntityCopyWithImpl(this._self, this._then);

  final RoleEntity _self;
  final $Res Function(RoleEntity) _then;

/// Create a copy of RoleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleEntity].
extension RoleEntityPatterns on RoleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleEntity value)  $default,){
final _that = this;
switch (_that) {
case _RoleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RoleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleEntity() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _RoleEntity():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _RoleEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleEntity implements RoleEntity {
  const _RoleEntity({this.id, this.name});
  factory _RoleEntity.fromJson(Map<String, dynamic> json) => _$RoleEntityFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of RoleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleEntityCopyWith<_RoleEntity> get copyWith => __$RoleEntityCopyWithImpl<_RoleEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoleEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RoleEntityCopyWith<$Res> implements $RoleEntityCopyWith<$Res> {
  factory _$RoleEntityCopyWith(_RoleEntity value, $Res Function(_RoleEntity) _then) = __$RoleEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$RoleEntityCopyWithImpl<$Res>
    implements _$RoleEntityCopyWith<$Res> {
  __$RoleEntityCopyWithImpl(this._self, this._then);

  final _RoleEntity _self;
  final $Res Function(_RoleEntity) _then;

/// Create a copy of RoleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_RoleEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MuzakkiProfileEntity {

 int? get id; String? get nik; String? get npwp; bool? get isAnonymous;
/// Create a copy of MuzakkiProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuzakkiProfileEntityCopyWith<MuzakkiProfileEntity> get copyWith => _$MuzakkiProfileEntityCopyWithImpl<MuzakkiProfileEntity>(this as MuzakkiProfileEntity, _$identity);

  /// Serializes this MuzakkiProfileEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuzakkiProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.npwp, npwp) || other.npwp == npwp)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,npwp,isAnonymous);

@override
String toString() {
  return 'MuzakkiProfileEntity(id: $id, nik: $nik, npwp: $npwp, isAnonymous: $isAnonymous)';
}


}

/// @nodoc
abstract mixin class $MuzakkiProfileEntityCopyWith<$Res>  {
  factory $MuzakkiProfileEntityCopyWith(MuzakkiProfileEntity value, $Res Function(MuzakkiProfileEntity) _then) = _$MuzakkiProfileEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? nik, String? npwp, bool? isAnonymous
});




}
/// @nodoc
class _$MuzakkiProfileEntityCopyWithImpl<$Res>
    implements $MuzakkiProfileEntityCopyWith<$Res> {
  _$MuzakkiProfileEntityCopyWithImpl(this._self, this._then);

  final MuzakkiProfileEntity _self;
  final $Res Function(MuzakkiProfileEntity) _then;

/// Create a copy of MuzakkiProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nik = freezed,Object? npwp = freezed,Object? isAnonymous = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,npwp: freezed == npwp ? _self.npwp : npwp // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuzakkiProfileEntity].
extension MuzakkiProfileEntityPatterns on MuzakkiProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuzakkiProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuzakkiProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuzakkiProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _MuzakkiProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuzakkiProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MuzakkiProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? nik,  String? npwp,  bool? isAnonymous)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuzakkiProfileEntity() when $default != null:
return $default(_that.id,_that.nik,_that.npwp,_that.isAnonymous);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? nik,  String? npwp,  bool? isAnonymous)  $default,) {final _that = this;
switch (_that) {
case _MuzakkiProfileEntity():
return $default(_that.id,_that.nik,_that.npwp,_that.isAnonymous);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? nik,  String? npwp,  bool? isAnonymous)?  $default,) {final _that = this;
switch (_that) {
case _MuzakkiProfileEntity() when $default != null:
return $default(_that.id,_that.nik,_that.npwp,_that.isAnonymous);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuzakkiProfileEntity implements MuzakkiProfileEntity {
  const _MuzakkiProfileEntity({this.id, this.nik, this.npwp, this.isAnonymous});
  factory _MuzakkiProfileEntity.fromJson(Map<String, dynamic> json) => _$MuzakkiProfileEntityFromJson(json);

@override final  int? id;
@override final  String? nik;
@override final  String? npwp;
@override final  bool? isAnonymous;

/// Create a copy of MuzakkiProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuzakkiProfileEntityCopyWith<_MuzakkiProfileEntity> get copyWith => __$MuzakkiProfileEntityCopyWithImpl<_MuzakkiProfileEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuzakkiProfileEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuzakkiProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nik, nik) || other.nik == nik)&&(identical(other.npwp, npwp) || other.npwp == npwp)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nik,npwp,isAnonymous);

@override
String toString() {
  return 'MuzakkiProfileEntity(id: $id, nik: $nik, npwp: $npwp, isAnonymous: $isAnonymous)';
}


}

/// @nodoc
abstract mixin class _$MuzakkiProfileEntityCopyWith<$Res> implements $MuzakkiProfileEntityCopyWith<$Res> {
  factory _$MuzakkiProfileEntityCopyWith(_MuzakkiProfileEntity value, $Res Function(_MuzakkiProfileEntity) _then) = __$MuzakkiProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? nik, String? npwp, bool? isAnonymous
});




}
/// @nodoc
class __$MuzakkiProfileEntityCopyWithImpl<$Res>
    implements _$MuzakkiProfileEntityCopyWith<$Res> {
  __$MuzakkiProfileEntityCopyWithImpl(this._self, this._then);

  final _MuzakkiProfileEntity _self;
  final $Res Function(_MuzakkiProfileEntity) _then;

/// Create a copy of MuzakkiProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nik = freezed,Object? npwp = freezed,Object? isAnonymous = freezed,}) {
  return _then(_MuzakkiProfileEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nik: freezed == nik ? _self.nik : nik // ignore: cast_nullable_to_non_nullable
as String?,npwp: freezed == npwp ? _self.npwp : npwp // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AmilProfileEntity {

 int? get id; String? get nip; String? get position; String? get amilType; int? get monthlyTarget; UpzEntity? get upz;
/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilProfileEntityCopyWith<AmilProfileEntity> get copyWith => _$AmilProfileEntityCopyWithImpl<AmilProfileEntity>(this as AmilProfileEntity, _$identity);

  /// Serializes this AmilProfileEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.position, position) || other.position == position)&&(identical(other.amilType, amilType) || other.amilType == amilType)&&(identical(other.monthlyTarget, monthlyTarget) || other.monthlyTarget == monthlyTarget)&&(identical(other.upz, upz) || other.upz == upz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nip,position,amilType,monthlyTarget,upz);

@override
String toString() {
  return 'AmilProfileEntity(id: $id, nip: $nip, position: $position, amilType: $amilType, monthlyTarget: $monthlyTarget, upz: $upz)';
}


}

/// @nodoc
abstract mixin class $AmilProfileEntityCopyWith<$Res>  {
  factory $AmilProfileEntityCopyWith(AmilProfileEntity value, $Res Function(AmilProfileEntity) _then) = _$AmilProfileEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? nip, String? position, String? amilType, int? monthlyTarget, UpzEntity? upz
});


$UpzEntityCopyWith<$Res>? get upz;

}
/// @nodoc
class _$AmilProfileEntityCopyWithImpl<$Res>
    implements $AmilProfileEntityCopyWith<$Res> {
  _$AmilProfileEntityCopyWithImpl(this._self, this._then);

  final AmilProfileEntity _self;
  final $Res Function(AmilProfileEntity) _then;

/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nip = freezed,Object? position = freezed,Object? amilType = freezed,Object? monthlyTarget = freezed,Object? upz = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nip: freezed == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,amilType: freezed == amilType ? _self.amilType : amilType // ignore: cast_nullable_to_non_nullable
as String?,monthlyTarget: freezed == monthlyTarget ? _self.monthlyTarget : monthlyTarget // ignore: cast_nullable_to_non_nullable
as int?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as UpzEntity?,
  ));
}
/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpzEntityCopyWith<$Res>? get upz {
    if (_self.upz == null) {
    return null;
  }

  return $UpzEntityCopyWith<$Res>(_self.upz!, (value) {
    return _then(_self.copyWith(upz: value));
  });
}
}


/// Adds pattern-matching-related methods to [AmilProfileEntity].
extension AmilProfileEntityPatterns on AmilProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? nip,  String? position,  String? amilType,  int? monthlyTarget,  UpzEntity? upz)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilProfileEntity() when $default != null:
return $default(_that.id,_that.nip,_that.position,_that.amilType,_that.monthlyTarget,_that.upz);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? nip,  String? position,  String? amilType,  int? monthlyTarget,  UpzEntity? upz)  $default,) {final _that = this;
switch (_that) {
case _AmilProfileEntity():
return $default(_that.id,_that.nip,_that.position,_that.amilType,_that.monthlyTarget,_that.upz);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? nip,  String? position,  String? amilType,  int? monthlyTarget,  UpzEntity? upz)?  $default,) {final _that = this;
switch (_that) {
case _AmilProfileEntity() when $default != null:
return $default(_that.id,_that.nip,_that.position,_that.amilType,_that.monthlyTarget,_that.upz);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilProfileEntity implements AmilProfileEntity {
  const _AmilProfileEntity({this.id, this.nip, this.position, this.amilType, this.monthlyTarget, this.upz});
  factory _AmilProfileEntity.fromJson(Map<String, dynamic> json) => _$AmilProfileEntityFromJson(json);

@override final  int? id;
@override final  String? nip;
@override final  String? position;
@override final  String? amilType;
@override final  int? monthlyTarget;
@override final  UpzEntity? upz;

/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilProfileEntityCopyWith<_AmilProfileEntity> get copyWith => __$AmilProfileEntityCopyWithImpl<_AmilProfileEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilProfileEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nip, nip) || other.nip == nip)&&(identical(other.position, position) || other.position == position)&&(identical(other.amilType, amilType) || other.amilType == amilType)&&(identical(other.monthlyTarget, monthlyTarget) || other.monthlyTarget == monthlyTarget)&&(identical(other.upz, upz) || other.upz == upz));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nip,position,amilType,monthlyTarget,upz);

@override
String toString() {
  return 'AmilProfileEntity(id: $id, nip: $nip, position: $position, amilType: $amilType, monthlyTarget: $monthlyTarget, upz: $upz)';
}


}

/// @nodoc
abstract mixin class _$AmilProfileEntityCopyWith<$Res> implements $AmilProfileEntityCopyWith<$Res> {
  factory _$AmilProfileEntityCopyWith(_AmilProfileEntity value, $Res Function(_AmilProfileEntity) _then) = __$AmilProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? nip, String? position, String? amilType, int? monthlyTarget, UpzEntity? upz
});


@override $UpzEntityCopyWith<$Res>? get upz;

}
/// @nodoc
class __$AmilProfileEntityCopyWithImpl<$Res>
    implements _$AmilProfileEntityCopyWith<$Res> {
  __$AmilProfileEntityCopyWithImpl(this._self, this._then);

  final _AmilProfileEntity _self;
  final $Res Function(_AmilProfileEntity) _then;

/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nip = freezed,Object? position = freezed,Object? amilType = freezed,Object? monthlyTarget = freezed,Object? upz = freezed,}) {
  return _then(_AmilProfileEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nip: freezed == nip ? _self.nip : nip // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,amilType: freezed == amilType ? _self.amilType : amilType // ignore: cast_nullable_to_non_nullable
as String?,monthlyTarget: freezed == monthlyTarget ? _self.monthlyTarget : monthlyTarget // ignore: cast_nullable_to_non_nullable
as int?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as UpzEntity?,
  ));
}

/// Create a copy of AmilProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpzEntityCopyWith<$Res>? get upz {
    if (_self.upz == null) {
    return null;
  }

  return $UpzEntityCopyWith<$Res>(_self.upz!, (value) {
    return _then(_self.copyWith(upz: value));
  });
}
}


/// @nodoc
mixin _$UpzEntity {

 int? get id; String? get name; String? get city;
/// Create a copy of UpzEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpzEntityCopyWith<UpzEntity> get copyWith => _$UpzEntityCopyWithImpl<UpzEntity>(this as UpzEntity, _$identity);

  /// Serializes this UpzEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpzEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,city);

@override
String toString() {
  return 'UpzEntity(id: $id, name: $name, city: $city)';
}


}

/// @nodoc
abstract mixin class $UpzEntityCopyWith<$Res>  {
  factory $UpzEntityCopyWith(UpzEntity value, $Res Function(UpzEntity) _then) = _$UpzEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? city
});




}
/// @nodoc
class _$UpzEntityCopyWithImpl<$Res>
    implements $UpzEntityCopyWith<$Res> {
  _$UpzEntityCopyWithImpl(this._self, this._then);

  final UpzEntity _self;
  final $Res Function(UpzEntity) _then;

/// Create a copy of UpzEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? city = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpzEntity].
extension UpzEntityPatterns on UpzEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpzEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpzEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpzEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpzEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpzEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpzEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? city)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpzEntity() when $default != null:
return $default(_that.id,_that.name,_that.city);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? city)  $default,) {final _that = this;
switch (_that) {
case _UpzEntity():
return $default(_that.id,_that.name,_that.city);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? city)?  $default,) {final _that = this;
switch (_that) {
case _UpzEntity() when $default != null:
return $default(_that.id,_that.name,_that.city);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpzEntity implements UpzEntity {
  const _UpzEntity({this.id, this.name, this.city});
  factory _UpzEntity.fromJson(Map<String, dynamic> json) => _$UpzEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? city;

/// Create a copy of UpzEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpzEntityCopyWith<_UpzEntity> get copyWith => __$UpzEntityCopyWithImpl<_UpzEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpzEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpzEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,city);

@override
String toString() {
  return 'UpzEntity(id: $id, name: $name, city: $city)';
}


}

/// @nodoc
abstract mixin class _$UpzEntityCopyWith<$Res> implements $UpzEntityCopyWith<$Res> {
  factory _$UpzEntityCopyWith(_UpzEntity value, $Res Function(_UpzEntity) _then) = __$UpzEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? city
});




}
/// @nodoc
class __$UpzEntityCopyWithImpl<$Res>
    implements _$UpzEntityCopyWith<$Res> {
  __$UpzEntityCopyWithImpl(this._self, this._then);

  final _UpzEntity _self;
  final $Res Function(_UpzEntity) _then;

/// Create a copy of UpzEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? city = freezed,}) {
  return _then(_UpzEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
