// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disbursement_item_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisbursementItemListEntity {

 int? get id; String? get proofUrl; String? get upz; String? get fundType; int? get amount; String? get disbursementType; String? get status; String? get createdAt; String? get updatedAt; DisbursementMustahikEntity? get mustahik;
/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisbursementItemListEntityCopyWith<DisbursementItemListEntity> get copyWith => _$DisbursementItemListEntityCopyWithImpl<DisbursementItemListEntity>(this as DisbursementItemListEntity, _$identity);

  /// Serializes this DisbursementItemListEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisbursementItemListEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.proofUrl, proofUrl) || other.proofUrl == proofUrl)&&(identical(other.upz, upz) || other.upz == upz)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.disbursementType, disbursementType) || other.disbursementType == disbursementType)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.mustahik, mustahik) || other.mustahik == mustahik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,proofUrl,upz,fundType,amount,disbursementType,status,createdAt,updatedAt,mustahik);

@override
String toString() {
  return 'DisbursementItemListEntity(id: $id, proofUrl: $proofUrl, upz: $upz, fundType: $fundType, amount: $amount, disbursementType: $disbursementType, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, mustahik: $mustahik)';
}


}

/// @nodoc
abstract mixin class $DisbursementItemListEntityCopyWith<$Res>  {
  factory $DisbursementItemListEntityCopyWith(DisbursementItemListEntity value, $Res Function(DisbursementItemListEntity) _then) = _$DisbursementItemListEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? proofUrl, String? upz, String? fundType, int? amount, String? disbursementType, String? status, String? createdAt, String? updatedAt, DisbursementMustahikEntity? mustahik
});


$DisbursementMustahikEntityCopyWith<$Res>? get mustahik;

}
/// @nodoc
class _$DisbursementItemListEntityCopyWithImpl<$Res>
    implements $DisbursementItemListEntityCopyWith<$Res> {
  _$DisbursementItemListEntityCopyWithImpl(this._self, this._then);

  final DisbursementItemListEntity _self;
  final $Res Function(DisbursementItemListEntity) _then;

/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? proofUrl = freezed,Object? upz = freezed,Object? fundType = freezed,Object? amount = freezed,Object? disbursementType = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? mustahik = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,proofUrl: freezed == proofUrl ? _self.proofUrl : proofUrl // ignore: cast_nullable_to_non_nullable
as String?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as String?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,disbursementType: freezed == disbursementType ? _self.disbursementType : disbursementType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,mustahik: freezed == mustahik ? _self.mustahik : mustahik // ignore: cast_nullable_to_non_nullable
as DisbursementMustahikEntity?,
  ));
}
/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisbursementMustahikEntityCopyWith<$Res>? get mustahik {
    if (_self.mustahik == null) {
    return null;
  }

  return $DisbursementMustahikEntityCopyWith<$Res>(_self.mustahik!, (value) {
    return _then(_self.copyWith(mustahik: value));
  });
}
}


/// Adds pattern-matching-related methods to [DisbursementItemListEntity].
extension DisbursementItemListEntityPatterns on DisbursementItemListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisbursementItemListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisbursementItemListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisbursementItemListEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisbursementItemListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisbursementItemListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisbursementItemListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? proofUrl,  String? upz,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisbursementItemListEntity() when $default != null:
return $default(_that.id,_that.proofUrl,_that.upz,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? proofUrl,  String? upz,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)  $default,) {final _that = this;
switch (_that) {
case _DisbursementItemListEntity():
return $default(_that.id,_that.proofUrl,_that.upz,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? proofUrl,  String? upz,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)?  $default,) {final _that = this;
switch (_that) {
case _DisbursementItemListEntity() when $default != null:
return $default(_that.id,_that.proofUrl,_that.upz,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisbursementItemListEntity implements DisbursementItemListEntity {
  const _DisbursementItemListEntity({this.id, this.proofUrl, this.upz, this.fundType, this.amount, this.disbursementType, this.status, this.createdAt, this.updatedAt, this.mustahik});
  factory _DisbursementItemListEntity.fromJson(Map<String, dynamic> json) => _$DisbursementItemListEntityFromJson(json);

@override final  int? id;
@override final  String? proofUrl;
@override final  String? upz;
@override final  String? fundType;
@override final  int? amount;
@override final  String? disbursementType;
@override final  String? status;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  DisbursementMustahikEntity? mustahik;

/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisbursementItemListEntityCopyWith<_DisbursementItemListEntity> get copyWith => __$DisbursementItemListEntityCopyWithImpl<_DisbursementItemListEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisbursementItemListEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisbursementItemListEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.proofUrl, proofUrl) || other.proofUrl == proofUrl)&&(identical(other.upz, upz) || other.upz == upz)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.disbursementType, disbursementType) || other.disbursementType == disbursementType)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.mustahik, mustahik) || other.mustahik == mustahik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,proofUrl,upz,fundType,amount,disbursementType,status,createdAt,updatedAt,mustahik);

@override
String toString() {
  return 'DisbursementItemListEntity(id: $id, proofUrl: $proofUrl, upz: $upz, fundType: $fundType, amount: $amount, disbursementType: $disbursementType, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, mustahik: $mustahik)';
}


}

/// @nodoc
abstract mixin class _$DisbursementItemListEntityCopyWith<$Res> implements $DisbursementItemListEntityCopyWith<$Res> {
  factory _$DisbursementItemListEntityCopyWith(_DisbursementItemListEntity value, $Res Function(_DisbursementItemListEntity) _then) = __$DisbursementItemListEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? proofUrl, String? upz, String? fundType, int? amount, String? disbursementType, String? status, String? createdAt, String? updatedAt, DisbursementMustahikEntity? mustahik
});


@override $DisbursementMustahikEntityCopyWith<$Res>? get mustahik;

}
/// @nodoc
class __$DisbursementItemListEntityCopyWithImpl<$Res>
    implements _$DisbursementItemListEntityCopyWith<$Res> {
  __$DisbursementItemListEntityCopyWithImpl(this._self, this._then);

  final _DisbursementItemListEntity _self;
  final $Res Function(_DisbursementItemListEntity) _then;

/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? proofUrl = freezed,Object? upz = freezed,Object? fundType = freezed,Object? amount = freezed,Object? disbursementType = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? mustahik = freezed,}) {
  return _then(_DisbursementItemListEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,proofUrl: freezed == proofUrl ? _self.proofUrl : proofUrl // ignore: cast_nullable_to_non_nullable
as String?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as String?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,disbursementType: freezed == disbursementType ? _self.disbursementType : disbursementType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,mustahik: freezed == mustahik ? _self.mustahik : mustahik // ignore: cast_nullable_to_non_nullable
as DisbursementMustahikEntity?,
  ));
}

/// Create a copy of DisbursementItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisbursementMustahikEntityCopyWith<$Res>? get mustahik {
    if (_self.mustahik == null) {
    return null;
  }

  return $DisbursementMustahikEntityCopyWith<$Res>(_self.mustahik!, (value) {
    return _then(_self.copyWith(mustahik: value));
  });
}
}


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
