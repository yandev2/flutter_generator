// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zakat_calculate_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZakatCalculateRequestEntity {

 int? get zakatTypeId; ZakatCalculateParametersEntity? get parameters;
/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatCalculateRequestEntityCopyWith<ZakatCalculateRequestEntity> get copyWith => _$ZakatCalculateRequestEntityCopyWithImpl<ZakatCalculateRequestEntity>(this as ZakatCalculateRequestEntity, _$identity);

  /// Serializes this ZakatCalculateRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatCalculateRequestEntity&&(identical(other.zakatTypeId, zakatTypeId) || other.zakatTypeId == zakatTypeId)&&(identical(other.parameters, parameters) || other.parameters == parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zakatTypeId,parameters);

@override
String toString() {
  return 'ZakatCalculateRequestEntity(zakatTypeId: $zakatTypeId, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $ZakatCalculateRequestEntityCopyWith<$Res>  {
  factory $ZakatCalculateRequestEntityCopyWith(ZakatCalculateRequestEntity value, $Res Function(ZakatCalculateRequestEntity) _then) = _$ZakatCalculateRequestEntityCopyWithImpl;
@useResult
$Res call({
 int? zakatTypeId, ZakatCalculateParametersEntity? parameters
});


$ZakatCalculateParametersEntityCopyWith<$Res>? get parameters;

}
/// @nodoc
class _$ZakatCalculateRequestEntityCopyWithImpl<$Res>
    implements $ZakatCalculateRequestEntityCopyWith<$Res> {
  _$ZakatCalculateRequestEntityCopyWithImpl(this._self, this._then);

  final ZakatCalculateRequestEntity _self;
  final $Res Function(ZakatCalculateRequestEntity) _then;

/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? zakatTypeId = freezed,Object? parameters = freezed,}) {
  return _then(_self.copyWith(
zakatTypeId: freezed == zakatTypeId ? _self.zakatTypeId : zakatTypeId // ignore: cast_nullable_to_non_nullable
as int?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as ZakatCalculateParametersEntity?,
  ));
}
/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatCalculateParametersEntityCopyWith<$Res>? get parameters {
    if (_self.parameters == null) {
    return null;
  }

  return $ZakatCalculateParametersEntityCopyWith<$Res>(_self.parameters!, (value) {
    return _then(_self.copyWith(parameters: value));
  });
}
}


/// Adds pattern-matching-related methods to [ZakatCalculateRequestEntity].
extension ZakatCalculateRequestEntityPatterns on ZakatCalculateRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatCalculateRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatCalculateRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatCalculateRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? zakatTypeId,  ZakatCalculateParametersEntity? parameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity() when $default != null:
return $default(_that.zakatTypeId,_that.parameters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? zakatTypeId,  ZakatCalculateParametersEntity? parameters)  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity():
return $default(_that.zakatTypeId,_that.parameters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? zakatTypeId,  ZakatCalculateParametersEntity? parameters)?  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateRequestEntity() when $default != null:
return $default(_that.zakatTypeId,_that.parameters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatCalculateRequestEntity implements ZakatCalculateRequestEntity {
  const _ZakatCalculateRequestEntity({this.zakatTypeId, this.parameters});
  factory _ZakatCalculateRequestEntity.fromJson(Map<String, dynamic> json) => _$ZakatCalculateRequestEntityFromJson(json);

@override final  int? zakatTypeId;
@override final  ZakatCalculateParametersEntity? parameters;

/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatCalculateRequestEntityCopyWith<_ZakatCalculateRequestEntity> get copyWith => __$ZakatCalculateRequestEntityCopyWithImpl<_ZakatCalculateRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatCalculateRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatCalculateRequestEntity&&(identical(other.zakatTypeId, zakatTypeId) || other.zakatTypeId == zakatTypeId)&&(identical(other.parameters, parameters) || other.parameters == parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zakatTypeId,parameters);

@override
String toString() {
  return 'ZakatCalculateRequestEntity(zakatTypeId: $zakatTypeId, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$ZakatCalculateRequestEntityCopyWith<$Res> implements $ZakatCalculateRequestEntityCopyWith<$Res> {
  factory _$ZakatCalculateRequestEntityCopyWith(_ZakatCalculateRequestEntity value, $Res Function(_ZakatCalculateRequestEntity) _then) = __$ZakatCalculateRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int? zakatTypeId, ZakatCalculateParametersEntity? parameters
});


@override $ZakatCalculateParametersEntityCopyWith<$Res>? get parameters;

}
/// @nodoc
class __$ZakatCalculateRequestEntityCopyWithImpl<$Res>
    implements _$ZakatCalculateRequestEntityCopyWith<$Res> {
  __$ZakatCalculateRequestEntityCopyWithImpl(this._self, this._then);

  final _ZakatCalculateRequestEntity _self;
  final $Res Function(_ZakatCalculateRequestEntity) _then;

/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zakatTypeId = freezed,Object? parameters = freezed,}) {
  return _then(_ZakatCalculateRequestEntity(
zakatTypeId: freezed == zakatTypeId ? _self.zakatTypeId : zakatTypeId // ignore: cast_nullable_to_non_nullable
as int?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as ZakatCalculateParametersEntity?,
  ));
}

/// Create a copy of ZakatCalculateRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatCalculateParametersEntityCopyWith<$Res>? get parameters {
    if (_self.parameters == null) {
    return null;
  }

  return $ZakatCalculateParametersEntityCopyWith<$Res>(_self.parameters!, (value) {
    return _then(_self.copyWith(parameters: value));
  });
}
}


/// @nodoc
mixin _$ZakatCalculateParametersEntity {

/// Nilai harta / aset (rupiah)
 num? get asset;/// Jumlah jiwa (untuk zakat fitrah)
 int? get people;
/// Create a copy of ZakatCalculateParametersEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatCalculateParametersEntityCopyWith<ZakatCalculateParametersEntity> get copyWith => _$ZakatCalculateParametersEntityCopyWithImpl<ZakatCalculateParametersEntity>(this as ZakatCalculateParametersEntity, _$identity);

  /// Serializes this ZakatCalculateParametersEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatCalculateParametersEntity&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.people, people) || other.people == people));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,people);

@override
String toString() {
  return 'ZakatCalculateParametersEntity(asset: $asset, people: $people)';
}


}

/// @nodoc
abstract mixin class $ZakatCalculateParametersEntityCopyWith<$Res>  {
  factory $ZakatCalculateParametersEntityCopyWith(ZakatCalculateParametersEntity value, $Res Function(ZakatCalculateParametersEntity) _then) = _$ZakatCalculateParametersEntityCopyWithImpl;
@useResult
$Res call({
 num? asset, int? people
});




}
/// @nodoc
class _$ZakatCalculateParametersEntityCopyWithImpl<$Res>
    implements $ZakatCalculateParametersEntityCopyWith<$Res> {
  _$ZakatCalculateParametersEntityCopyWithImpl(this._self, this._then);

  final ZakatCalculateParametersEntity _self;
  final $Res Function(ZakatCalculateParametersEntity) _then;

/// Create a copy of ZakatCalculateParametersEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asset = freezed,Object? people = freezed,}) {
  return _then(_self.copyWith(
asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as num?,people: freezed == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZakatCalculateParametersEntity].
extension ZakatCalculateParametersEntityPatterns on ZakatCalculateParametersEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatCalculateParametersEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatCalculateParametersEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatCalculateParametersEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num? asset,  int? people)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity() when $default != null:
return $default(_that.asset,_that.people);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num? asset,  int? people)  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity():
return $default(_that.asset,_that.people);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num? asset,  int? people)?  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateParametersEntity() when $default != null:
return $default(_that.asset,_that.people);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatCalculateParametersEntity implements ZakatCalculateParametersEntity {
  const _ZakatCalculateParametersEntity({this.asset, this.people});
  factory _ZakatCalculateParametersEntity.fromJson(Map<String, dynamic> json) => _$ZakatCalculateParametersEntityFromJson(json);

/// Nilai harta / aset (rupiah)
@override final  num? asset;
/// Jumlah jiwa (untuk zakat fitrah)
@override final  int? people;

/// Create a copy of ZakatCalculateParametersEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatCalculateParametersEntityCopyWith<_ZakatCalculateParametersEntity> get copyWith => __$ZakatCalculateParametersEntityCopyWithImpl<_ZakatCalculateParametersEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatCalculateParametersEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatCalculateParametersEntity&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.people, people) || other.people == people));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,asset,people);

@override
String toString() {
  return 'ZakatCalculateParametersEntity(asset: $asset, people: $people)';
}


}

/// @nodoc
abstract mixin class _$ZakatCalculateParametersEntityCopyWith<$Res> implements $ZakatCalculateParametersEntityCopyWith<$Res> {
  factory _$ZakatCalculateParametersEntityCopyWith(_ZakatCalculateParametersEntity value, $Res Function(_ZakatCalculateParametersEntity) _then) = __$ZakatCalculateParametersEntityCopyWithImpl;
@override @useResult
$Res call({
 num? asset, int? people
});




}
/// @nodoc
class __$ZakatCalculateParametersEntityCopyWithImpl<$Res>
    implements _$ZakatCalculateParametersEntityCopyWith<$Res> {
  __$ZakatCalculateParametersEntityCopyWithImpl(this._self, this._then);

  final _ZakatCalculateParametersEntity _self;
  final $Res Function(_ZakatCalculateParametersEntity) _then;

/// Create a copy of ZakatCalculateParametersEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asset = freezed,Object? people = freezed,}) {
  return _then(_ZakatCalculateParametersEntity(
asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as num?,people: freezed == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
