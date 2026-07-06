// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zakat_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZakatTypeEntity {

 int? get id; String? get slug; String? get name; String? get description; String? get iconUrl; bool? get isActive; int? get fundTypeId; String? get fundTypeName; ZakatTypeCommodityEntity? get commodity; double? get zakatRate; int? get haulMonths; String? get nisabFormula; String? get zakatFormula; ZakatTypeVariablesEntity? get variables; String? get variablesNote;
/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatTypeEntityCopyWith<ZakatTypeEntity> get copyWith => _$ZakatTypeEntityCopyWithImpl<ZakatTypeEntity>(this as ZakatTypeEntity, _$identity);

  /// Serializes this ZakatTypeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.fundTypeName, fundTypeName) || other.fundTypeName == fundTypeName)&&(identical(other.commodity, commodity) || other.commodity == commodity)&&(identical(other.zakatRate, zakatRate) || other.zakatRate == zakatRate)&&(identical(other.haulMonths, haulMonths) || other.haulMonths == haulMonths)&&(identical(other.nisabFormula, nisabFormula) || other.nisabFormula == nisabFormula)&&(identical(other.zakatFormula, zakatFormula) || other.zakatFormula == zakatFormula)&&(identical(other.variables, variables) || other.variables == variables)&&(identical(other.variablesNote, variablesNote) || other.variablesNote == variablesNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,description,iconUrl,isActive,fundTypeId,fundTypeName,commodity,zakatRate,haulMonths,nisabFormula,zakatFormula,variables,variablesNote);

@override
String toString() {
  return 'ZakatTypeEntity(id: $id, slug: $slug, name: $name, description: $description, iconUrl: $iconUrl, isActive: $isActive, fundTypeId: $fundTypeId, fundTypeName: $fundTypeName, commodity: $commodity, zakatRate: $zakatRate, haulMonths: $haulMonths, nisabFormula: $nisabFormula, zakatFormula: $zakatFormula, variables: $variables, variablesNote: $variablesNote)';
}


}

/// @nodoc
abstract mixin class $ZakatTypeEntityCopyWith<$Res>  {
  factory $ZakatTypeEntityCopyWith(ZakatTypeEntity value, $Res Function(ZakatTypeEntity) _then) = _$ZakatTypeEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? slug, String? name, String? description, String? iconUrl, bool? isActive, int? fundTypeId, String? fundTypeName, ZakatTypeCommodityEntity? commodity, double? zakatRate, int? haulMonths, String? nisabFormula, String? zakatFormula, ZakatTypeVariablesEntity? variables, String? variablesNote
});


$ZakatTypeCommodityEntityCopyWith<$Res>? get commodity;$ZakatTypeVariablesEntityCopyWith<$Res>? get variables;

}
/// @nodoc
class _$ZakatTypeEntityCopyWithImpl<$Res>
    implements $ZakatTypeEntityCopyWith<$Res> {
  _$ZakatTypeEntityCopyWithImpl(this._self, this._then);

  final ZakatTypeEntity _self;
  final $Res Function(ZakatTypeEntity) _then;

/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? slug = freezed,Object? name = freezed,Object? description = freezed,Object? iconUrl = freezed,Object? isActive = freezed,Object? fundTypeId = freezed,Object? fundTypeName = freezed,Object? commodity = freezed,Object? zakatRate = freezed,Object? haulMonths = freezed,Object? nisabFormula = freezed,Object? zakatFormula = freezed,Object? variables = freezed,Object? variablesNote = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,fundTypeName: freezed == fundTypeName ? _self.fundTypeName : fundTypeName // ignore: cast_nullable_to_non_nullable
as String?,commodity: freezed == commodity ? _self.commodity : commodity // ignore: cast_nullable_to_non_nullable
as ZakatTypeCommodityEntity?,zakatRate: freezed == zakatRate ? _self.zakatRate : zakatRate // ignore: cast_nullable_to_non_nullable
as double?,haulMonths: freezed == haulMonths ? _self.haulMonths : haulMonths // ignore: cast_nullable_to_non_nullable
as int?,nisabFormula: freezed == nisabFormula ? _self.nisabFormula : nisabFormula // ignore: cast_nullable_to_non_nullable
as String?,zakatFormula: freezed == zakatFormula ? _self.zakatFormula : zakatFormula // ignore: cast_nullable_to_non_nullable
as String?,variables: freezed == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as ZakatTypeVariablesEntity?,variablesNote: freezed == variablesNote ? _self.variablesNote : variablesNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatTypeCommodityEntityCopyWith<$Res>? get commodity {
    if (_self.commodity == null) {
    return null;
  }

  return $ZakatTypeCommodityEntityCopyWith<$Res>(_self.commodity!, (value) {
    return _then(_self.copyWith(commodity: value));
  });
}/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatTypeVariablesEntityCopyWith<$Res>? get variables {
    if (_self.variables == null) {
    return null;
  }

  return $ZakatTypeVariablesEntityCopyWith<$Res>(_self.variables!, (value) {
    return _then(_self.copyWith(variables: value));
  });
}
}


/// Adds pattern-matching-related methods to [ZakatTypeEntity].
extension ZakatTypeEntityPatterns on ZakatTypeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatTypeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatTypeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatTypeEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatTypeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? slug,  String? name,  String? description,  String? iconUrl,  bool? isActive,  int? fundTypeId,  String? fundTypeName,  ZakatTypeCommodityEntity? commodity,  double? zakatRate,  int? haulMonths,  String? nisabFormula,  String? zakatFormula,  ZakatTypeVariablesEntity? variables,  String? variablesNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatTypeEntity() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.description,_that.iconUrl,_that.isActive,_that.fundTypeId,_that.fundTypeName,_that.commodity,_that.zakatRate,_that.haulMonths,_that.nisabFormula,_that.zakatFormula,_that.variables,_that.variablesNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? slug,  String? name,  String? description,  String? iconUrl,  bool? isActive,  int? fundTypeId,  String? fundTypeName,  ZakatTypeCommodityEntity? commodity,  double? zakatRate,  int? haulMonths,  String? nisabFormula,  String? zakatFormula,  ZakatTypeVariablesEntity? variables,  String? variablesNote)  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeEntity():
return $default(_that.id,_that.slug,_that.name,_that.description,_that.iconUrl,_that.isActive,_that.fundTypeId,_that.fundTypeName,_that.commodity,_that.zakatRate,_that.haulMonths,_that.nisabFormula,_that.zakatFormula,_that.variables,_that.variablesNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? slug,  String? name,  String? description,  String? iconUrl,  bool? isActive,  int? fundTypeId,  String? fundTypeName,  ZakatTypeCommodityEntity? commodity,  double? zakatRate,  int? haulMonths,  String? nisabFormula,  String? zakatFormula,  ZakatTypeVariablesEntity? variables,  String? variablesNote)?  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeEntity() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.description,_that.iconUrl,_that.isActive,_that.fundTypeId,_that.fundTypeName,_that.commodity,_that.zakatRate,_that.haulMonths,_that.nisabFormula,_that.zakatFormula,_that.variables,_that.variablesNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatTypeEntity implements ZakatTypeEntity {
  const _ZakatTypeEntity({this.id, this.slug, this.name, this.description, this.iconUrl, this.isActive, this.fundTypeId, this.fundTypeName, this.commodity, this.zakatRate, this.haulMonths, this.nisabFormula, this.zakatFormula, this.variables, this.variablesNote});
  factory _ZakatTypeEntity.fromJson(Map<String, dynamic> json) => _$ZakatTypeEntityFromJson(json);

@override final  int? id;
@override final  String? slug;
@override final  String? name;
@override final  String? description;
@override final  String? iconUrl;
@override final  bool? isActive;
@override final  int? fundTypeId;
@override final  String? fundTypeName;
@override final  ZakatTypeCommodityEntity? commodity;
@override final  double? zakatRate;
@override final  int? haulMonths;
@override final  String? nisabFormula;
@override final  String? zakatFormula;
@override final  ZakatTypeVariablesEntity? variables;
@override final  String? variablesNote;

/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatTypeEntityCopyWith<_ZakatTypeEntity> get copyWith => __$ZakatTypeEntityCopyWithImpl<_ZakatTypeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatTypeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.fundTypeName, fundTypeName) || other.fundTypeName == fundTypeName)&&(identical(other.commodity, commodity) || other.commodity == commodity)&&(identical(other.zakatRate, zakatRate) || other.zakatRate == zakatRate)&&(identical(other.haulMonths, haulMonths) || other.haulMonths == haulMonths)&&(identical(other.nisabFormula, nisabFormula) || other.nisabFormula == nisabFormula)&&(identical(other.zakatFormula, zakatFormula) || other.zakatFormula == zakatFormula)&&(identical(other.variables, variables) || other.variables == variables)&&(identical(other.variablesNote, variablesNote) || other.variablesNote == variablesNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,description,iconUrl,isActive,fundTypeId,fundTypeName,commodity,zakatRate,haulMonths,nisabFormula,zakatFormula,variables,variablesNote);

@override
String toString() {
  return 'ZakatTypeEntity(id: $id, slug: $slug, name: $name, description: $description, iconUrl: $iconUrl, isActive: $isActive, fundTypeId: $fundTypeId, fundTypeName: $fundTypeName, commodity: $commodity, zakatRate: $zakatRate, haulMonths: $haulMonths, nisabFormula: $nisabFormula, zakatFormula: $zakatFormula, variables: $variables, variablesNote: $variablesNote)';
}


}

/// @nodoc
abstract mixin class _$ZakatTypeEntityCopyWith<$Res> implements $ZakatTypeEntityCopyWith<$Res> {
  factory _$ZakatTypeEntityCopyWith(_ZakatTypeEntity value, $Res Function(_ZakatTypeEntity) _then) = __$ZakatTypeEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? slug, String? name, String? description, String? iconUrl, bool? isActive, int? fundTypeId, String? fundTypeName, ZakatTypeCommodityEntity? commodity, double? zakatRate, int? haulMonths, String? nisabFormula, String? zakatFormula, ZakatTypeVariablesEntity? variables, String? variablesNote
});


@override $ZakatTypeCommodityEntityCopyWith<$Res>? get commodity;@override $ZakatTypeVariablesEntityCopyWith<$Res>? get variables;

}
/// @nodoc
class __$ZakatTypeEntityCopyWithImpl<$Res>
    implements _$ZakatTypeEntityCopyWith<$Res> {
  __$ZakatTypeEntityCopyWithImpl(this._self, this._then);

  final _ZakatTypeEntity _self;
  final $Res Function(_ZakatTypeEntity) _then;

/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? slug = freezed,Object? name = freezed,Object? description = freezed,Object? iconUrl = freezed,Object? isActive = freezed,Object? fundTypeId = freezed,Object? fundTypeName = freezed,Object? commodity = freezed,Object? zakatRate = freezed,Object? haulMonths = freezed,Object? nisabFormula = freezed,Object? zakatFormula = freezed,Object? variables = freezed,Object? variablesNote = freezed,}) {
  return _then(_ZakatTypeEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,fundTypeName: freezed == fundTypeName ? _self.fundTypeName : fundTypeName // ignore: cast_nullable_to_non_nullable
as String?,commodity: freezed == commodity ? _self.commodity : commodity // ignore: cast_nullable_to_non_nullable
as ZakatTypeCommodityEntity?,zakatRate: freezed == zakatRate ? _self.zakatRate : zakatRate // ignore: cast_nullable_to_non_nullable
as double?,haulMonths: freezed == haulMonths ? _self.haulMonths : haulMonths // ignore: cast_nullable_to_non_nullable
as int?,nisabFormula: freezed == nisabFormula ? _self.nisabFormula : nisabFormula // ignore: cast_nullable_to_non_nullable
as String?,zakatFormula: freezed == zakatFormula ? _self.zakatFormula : zakatFormula // ignore: cast_nullable_to_non_nullable
as String?,variables: freezed == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as ZakatTypeVariablesEntity?,variablesNote: freezed == variablesNote ? _self.variablesNote : variablesNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatTypeCommodityEntityCopyWith<$Res>? get commodity {
    if (_self.commodity == null) {
    return null;
  }

  return $ZakatTypeCommodityEntityCopyWith<$Res>(_self.commodity!, (value) {
    return _then(_self.copyWith(commodity: value));
  });
}/// Create a copy of ZakatTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ZakatTypeVariablesEntityCopyWith<$Res>? get variables {
    if (_self.variables == null) {
    return null;
  }

  return $ZakatTypeVariablesEntityCopyWith<$Res>(_self.variables!, (value) {
    return _then(_self.copyWith(variables: value));
  });
}
}


/// @nodoc
mixin _$ZakatTypeCommodityEntity {

 int? get id; String? get code; String? get name; String? get unit; double? get nisabQuantity; double? get pricePerUnit;
/// Create a copy of ZakatTypeCommodityEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatTypeCommodityEntityCopyWith<ZakatTypeCommodityEntity> get copyWith => _$ZakatTypeCommodityEntityCopyWithImpl<ZakatTypeCommodityEntity>(this as ZakatTypeCommodityEntity, _$identity);

  /// Serializes this ZakatTypeCommodityEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatTypeCommodityEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.nisabQuantity, nisabQuantity) || other.nisabQuantity == nisabQuantity)&&(identical(other.pricePerUnit, pricePerUnit) || other.pricePerUnit == pricePerUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,unit,nisabQuantity,pricePerUnit);

@override
String toString() {
  return 'ZakatTypeCommodityEntity(id: $id, code: $code, name: $name, unit: $unit, nisabQuantity: $nisabQuantity, pricePerUnit: $pricePerUnit)';
}


}

/// @nodoc
abstract mixin class $ZakatTypeCommodityEntityCopyWith<$Res>  {
  factory $ZakatTypeCommodityEntityCopyWith(ZakatTypeCommodityEntity value, $Res Function(ZakatTypeCommodityEntity) _then) = _$ZakatTypeCommodityEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? code, String? name, String? unit, double? nisabQuantity, double? pricePerUnit
});




}
/// @nodoc
class _$ZakatTypeCommodityEntityCopyWithImpl<$Res>
    implements $ZakatTypeCommodityEntityCopyWith<$Res> {
  _$ZakatTypeCommodityEntityCopyWithImpl(this._self, this._then);

  final ZakatTypeCommodityEntity _self;
  final $Res Function(ZakatTypeCommodityEntity) _then;

/// Create a copy of ZakatTypeCommodityEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? unit = freezed,Object? nisabQuantity = freezed,Object? pricePerUnit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,nisabQuantity: freezed == nisabQuantity ? _self.nisabQuantity : nisabQuantity // ignore: cast_nullable_to_non_nullable
as double?,pricePerUnit: freezed == pricePerUnit ? _self.pricePerUnit : pricePerUnit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZakatTypeCommodityEntity].
extension ZakatTypeCommodityEntityPatterns on ZakatTypeCommodityEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatTypeCommodityEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatTypeCommodityEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatTypeCommodityEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit)  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity():
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? code,  String? name,  String? unit,  double? nisabQuantity,  double? pricePerUnit)?  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeCommodityEntity() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.unit,_that.nisabQuantity,_that.pricePerUnit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatTypeCommodityEntity implements ZakatTypeCommodityEntity {
  const _ZakatTypeCommodityEntity({this.id, this.code, this.name, this.unit, this.nisabQuantity, this.pricePerUnit});
  factory _ZakatTypeCommodityEntity.fromJson(Map<String, dynamic> json) => _$ZakatTypeCommodityEntityFromJson(json);

@override final  int? id;
@override final  String? code;
@override final  String? name;
@override final  String? unit;
@override final  double? nisabQuantity;
@override final  double? pricePerUnit;

/// Create a copy of ZakatTypeCommodityEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatTypeCommodityEntityCopyWith<_ZakatTypeCommodityEntity> get copyWith => __$ZakatTypeCommodityEntityCopyWithImpl<_ZakatTypeCommodityEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatTypeCommodityEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatTypeCommodityEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.nisabQuantity, nisabQuantity) || other.nisabQuantity == nisabQuantity)&&(identical(other.pricePerUnit, pricePerUnit) || other.pricePerUnit == pricePerUnit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,unit,nisabQuantity,pricePerUnit);

@override
String toString() {
  return 'ZakatTypeCommodityEntity(id: $id, code: $code, name: $name, unit: $unit, nisabQuantity: $nisabQuantity, pricePerUnit: $pricePerUnit)';
}


}

/// @nodoc
abstract mixin class _$ZakatTypeCommodityEntityCopyWith<$Res> implements $ZakatTypeCommodityEntityCopyWith<$Res> {
  factory _$ZakatTypeCommodityEntityCopyWith(_ZakatTypeCommodityEntity value, $Res Function(_ZakatTypeCommodityEntity) _then) = __$ZakatTypeCommodityEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? code, String? name, String? unit, double? nisabQuantity, double? pricePerUnit
});




}
/// @nodoc
class __$ZakatTypeCommodityEntityCopyWithImpl<$Res>
    implements _$ZakatTypeCommodityEntityCopyWith<$Res> {
  __$ZakatTypeCommodityEntityCopyWithImpl(this._self, this._then);

  final _ZakatTypeCommodityEntity _self;
  final $Res Function(_ZakatTypeCommodityEntity) _then;

/// Create a copy of ZakatTypeCommodityEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? unit = freezed,Object? nisabQuantity = freezed,Object? pricePerUnit = freezed,}) {
  return _then(_ZakatTypeCommodityEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,nisabQuantity: freezed == nisabQuantity ? _self.nisabQuantity : nisabQuantity // ignore: cast_nullable_to_non_nullable
as double?,pricePerUnit: freezed == pricePerUnit ? _self.pricePerUnit : pricePerUnit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ZakatTypeVariablesEntity {

 double? get price; double? get rate; double? get nisabQty;
/// Create a copy of ZakatTypeVariablesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatTypeVariablesEntityCopyWith<ZakatTypeVariablesEntity> get copyWith => _$ZakatTypeVariablesEntityCopyWithImpl<ZakatTypeVariablesEntity>(this as ZakatTypeVariablesEntity, _$identity);

  /// Serializes this ZakatTypeVariablesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatTypeVariablesEntity&&(identical(other.price, price) || other.price == price)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.nisabQty, nisabQty) || other.nisabQty == nisabQty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,price,rate,nisabQty);

@override
String toString() {
  return 'ZakatTypeVariablesEntity(price: $price, rate: $rate, nisabQty: $nisabQty)';
}


}

/// @nodoc
abstract mixin class $ZakatTypeVariablesEntityCopyWith<$Res>  {
  factory $ZakatTypeVariablesEntityCopyWith(ZakatTypeVariablesEntity value, $Res Function(ZakatTypeVariablesEntity) _then) = _$ZakatTypeVariablesEntityCopyWithImpl;
@useResult
$Res call({
 double? price, double? rate, double? nisabQty
});




}
/// @nodoc
class _$ZakatTypeVariablesEntityCopyWithImpl<$Res>
    implements $ZakatTypeVariablesEntityCopyWith<$Res> {
  _$ZakatTypeVariablesEntityCopyWithImpl(this._self, this._then);

  final ZakatTypeVariablesEntity _self;
  final $Res Function(ZakatTypeVariablesEntity) _then;

/// Create a copy of ZakatTypeVariablesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = freezed,Object? rate = freezed,Object? nisabQty = freezed,}) {
  return _then(_self.copyWith(
price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,nisabQty: freezed == nisabQty ? _self.nisabQty : nisabQty // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZakatTypeVariablesEntity].
extension ZakatTypeVariablesEntityPatterns on ZakatTypeVariablesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatTypeVariablesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatTypeVariablesEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatTypeVariablesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? price,  double? rate,  double? nisabQty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity() when $default != null:
return $default(_that.price,_that.rate,_that.nisabQty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? price,  double? rate,  double? nisabQty)  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity():
return $default(_that.price,_that.rate,_that.nisabQty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? price,  double? rate,  double? nisabQty)?  $default,) {final _that = this;
switch (_that) {
case _ZakatTypeVariablesEntity() when $default != null:
return $default(_that.price,_that.rate,_that.nisabQty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatTypeVariablesEntity implements ZakatTypeVariablesEntity {
  const _ZakatTypeVariablesEntity({this.price, this.rate, this.nisabQty});
  factory _ZakatTypeVariablesEntity.fromJson(Map<String, dynamic> json) => _$ZakatTypeVariablesEntityFromJson(json);

@override final  double? price;
@override final  double? rate;
@override final  double? nisabQty;

/// Create a copy of ZakatTypeVariablesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatTypeVariablesEntityCopyWith<_ZakatTypeVariablesEntity> get copyWith => __$ZakatTypeVariablesEntityCopyWithImpl<_ZakatTypeVariablesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatTypeVariablesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatTypeVariablesEntity&&(identical(other.price, price) || other.price == price)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.nisabQty, nisabQty) || other.nisabQty == nisabQty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,price,rate,nisabQty);

@override
String toString() {
  return 'ZakatTypeVariablesEntity(price: $price, rate: $rate, nisabQty: $nisabQty)';
}


}

/// @nodoc
abstract mixin class _$ZakatTypeVariablesEntityCopyWith<$Res> implements $ZakatTypeVariablesEntityCopyWith<$Res> {
  factory _$ZakatTypeVariablesEntityCopyWith(_ZakatTypeVariablesEntity value, $Res Function(_ZakatTypeVariablesEntity) _then) = __$ZakatTypeVariablesEntityCopyWithImpl;
@override @useResult
$Res call({
 double? price, double? rate, double? nisabQty
});




}
/// @nodoc
class __$ZakatTypeVariablesEntityCopyWithImpl<$Res>
    implements _$ZakatTypeVariablesEntityCopyWith<$Res> {
  __$ZakatTypeVariablesEntityCopyWithImpl(this._self, this._then);

  final _ZakatTypeVariablesEntity _self;
  final $Res Function(_ZakatTypeVariablesEntity) _then;

/// Create a copy of ZakatTypeVariablesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = freezed,Object? rate = freezed,Object? nisabQty = freezed,}) {
  return _then(_ZakatTypeVariablesEntity(
price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,nisabQty: freezed == nisabQty ? _self.nisabQty : nisabQty // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
