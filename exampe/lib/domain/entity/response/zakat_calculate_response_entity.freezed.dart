// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zakat_calculate_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZakatCalculateResponseEntity {

 int? get zakatTypeId; String? get zakatTypeName; String? get slug; int? get asset; int? get people; int? get nisabValue; int? get zakatAmount; bool? get isWajib; bool? get isMustahik; String? get currency; String? get message;
/// Create a copy of ZakatCalculateResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZakatCalculateResponseEntityCopyWith<ZakatCalculateResponseEntity> get copyWith => _$ZakatCalculateResponseEntityCopyWithImpl<ZakatCalculateResponseEntity>(this as ZakatCalculateResponseEntity, _$identity);

  /// Serializes this ZakatCalculateResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZakatCalculateResponseEntity&&(identical(other.zakatTypeId, zakatTypeId) || other.zakatTypeId == zakatTypeId)&&(identical(other.zakatTypeName, zakatTypeName) || other.zakatTypeName == zakatTypeName)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.people, people) || other.people == people)&&(identical(other.nisabValue, nisabValue) || other.nisabValue == nisabValue)&&(identical(other.zakatAmount, zakatAmount) || other.zakatAmount == zakatAmount)&&(identical(other.isWajib, isWajib) || other.isWajib == isWajib)&&(identical(other.isMustahik, isMustahik) || other.isMustahik == isMustahik)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zakatTypeId,zakatTypeName,slug,asset,people,nisabValue,zakatAmount,isWajib,isMustahik,currency,message);

@override
String toString() {
  return 'ZakatCalculateResponseEntity(zakatTypeId: $zakatTypeId, zakatTypeName: $zakatTypeName, slug: $slug, asset: $asset, people: $people, nisabValue: $nisabValue, zakatAmount: $zakatAmount, isWajib: $isWajib, isMustahik: $isMustahik, currency: $currency, message: $message)';
}


}

/// @nodoc
abstract mixin class $ZakatCalculateResponseEntityCopyWith<$Res>  {
  factory $ZakatCalculateResponseEntityCopyWith(ZakatCalculateResponseEntity value, $Res Function(ZakatCalculateResponseEntity) _then) = _$ZakatCalculateResponseEntityCopyWithImpl;
@useResult
$Res call({
 int? zakatTypeId, String? zakatTypeName, String? slug, int? asset, int? people, int? nisabValue, int? zakatAmount, bool? isWajib, bool? isMustahik, String? currency, String? message
});




}
/// @nodoc
class _$ZakatCalculateResponseEntityCopyWithImpl<$Res>
    implements $ZakatCalculateResponseEntityCopyWith<$Res> {
  _$ZakatCalculateResponseEntityCopyWithImpl(this._self, this._then);

  final ZakatCalculateResponseEntity _self;
  final $Res Function(ZakatCalculateResponseEntity) _then;

/// Create a copy of ZakatCalculateResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? zakatTypeId = freezed,Object? zakatTypeName = freezed,Object? slug = freezed,Object? asset = freezed,Object? people = freezed,Object? nisabValue = freezed,Object? zakatAmount = freezed,Object? isWajib = freezed,Object? isMustahik = freezed,Object? currency = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
zakatTypeId: freezed == zakatTypeId ? _self.zakatTypeId : zakatTypeId // ignore: cast_nullable_to_non_nullable
as int?,zakatTypeName: freezed == zakatTypeName ? _self.zakatTypeName : zakatTypeName // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as int?,people: freezed == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as int?,nisabValue: freezed == nisabValue ? _self.nisabValue : nisabValue // ignore: cast_nullable_to_non_nullable
as int?,zakatAmount: freezed == zakatAmount ? _self.zakatAmount : zakatAmount // ignore: cast_nullable_to_non_nullable
as int?,isWajib: freezed == isWajib ? _self.isWajib : isWajib // ignore: cast_nullable_to_non_nullable
as bool?,isMustahik: freezed == isMustahik ? _self.isMustahik : isMustahik // ignore: cast_nullable_to_non_nullable
as bool?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ZakatCalculateResponseEntity].
extension ZakatCalculateResponseEntityPatterns on ZakatCalculateResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZakatCalculateResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZakatCalculateResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZakatCalculateResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? zakatTypeId,  String? zakatTypeName,  String? slug,  int? asset,  int? people,  int? nisabValue,  int? zakatAmount,  bool? isWajib,  bool? isMustahik,  String? currency,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity() when $default != null:
return $default(_that.zakatTypeId,_that.zakatTypeName,_that.slug,_that.asset,_that.people,_that.nisabValue,_that.zakatAmount,_that.isWajib,_that.isMustahik,_that.currency,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? zakatTypeId,  String? zakatTypeName,  String? slug,  int? asset,  int? people,  int? nisabValue,  int? zakatAmount,  bool? isWajib,  bool? isMustahik,  String? currency,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity():
return $default(_that.zakatTypeId,_that.zakatTypeName,_that.slug,_that.asset,_that.people,_that.nisabValue,_that.zakatAmount,_that.isWajib,_that.isMustahik,_that.currency,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? zakatTypeId,  String? zakatTypeName,  String? slug,  int? asset,  int? people,  int? nisabValue,  int? zakatAmount,  bool? isWajib,  bool? isMustahik,  String? currency,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ZakatCalculateResponseEntity() when $default != null:
return $default(_that.zakatTypeId,_that.zakatTypeName,_that.slug,_that.asset,_that.people,_that.nisabValue,_that.zakatAmount,_that.isWajib,_that.isMustahik,_that.currency,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZakatCalculateResponseEntity implements ZakatCalculateResponseEntity {
  const _ZakatCalculateResponseEntity({this.zakatTypeId, this.zakatTypeName, this.slug, this.asset, this.people, this.nisabValue, this.zakatAmount, this.isWajib, this.isMustahik, this.currency, this.message});
  factory _ZakatCalculateResponseEntity.fromJson(Map<String, dynamic> json) => _$ZakatCalculateResponseEntityFromJson(json);

@override final  int? zakatTypeId;
@override final  String? zakatTypeName;
@override final  String? slug;
@override final  int? asset;
@override final  int? people;
@override final  int? nisabValue;
@override final  int? zakatAmount;
@override final  bool? isWajib;
@override final  bool? isMustahik;
@override final  String? currency;
@override final  String? message;

/// Create a copy of ZakatCalculateResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZakatCalculateResponseEntityCopyWith<_ZakatCalculateResponseEntity> get copyWith => __$ZakatCalculateResponseEntityCopyWithImpl<_ZakatCalculateResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZakatCalculateResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZakatCalculateResponseEntity&&(identical(other.zakatTypeId, zakatTypeId) || other.zakatTypeId == zakatTypeId)&&(identical(other.zakatTypeName, zakatTypeName) || other.zakatTypeName == zakatTypeName)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.people, people) || other.people == people)&&(identical(other.nisabValue, nisabValue) || other.nisabValue == nisabValue)&&(identical(other.zakatAmount, zakatAmount) || other.zakatAmount == zakatAmount)&&(identical(other.isWajib, isWajib) || other.isWajib == isWajib)&&(identical(other.isMustahik, isMustahik) || other.isMustahik == isMustahik)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zakatTypeId,zakatTypeName,slug,asset,people,nisabValue,zakatAmount,isWajib,isMustahik,currency,message);

@override
String toString() {
  return 'ZakatCalculateResponseEntity(zakatTypeId: $zakatTypeId, zakatTypeName: $zakatTypeName, slug: $slug, asset: $asset, people: $people, nisabValue: $nisabValue, zakatAmount: $zakatAmount, isWajib: $isWajib, isMustahik: $isMustahik, currency: $currency, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ZakatCalculateResponseEntityCopyWith<$Res> implements $ZakatCalculateResponseEntityCopyWith<$Res> {
  factory _$ZakatCalculateResponseEntityCopyWith(_ZakatCalculateResponseEntity value, $Res Function(_ZakatCalculateResponseEntity) _then) = __$ZakatCalculateResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 int? zakatTypeId, String? zakatTypeName, String? slug, int? asset, int? people, int? nisabValue, int? zakatAmount, bool? isWajib, bool? isMustahik, String? currency, String? message
});




}
/// @nodoc
class __$ZakatCalculateResponseEntityCopyWithImpl<$Res>
    implements _$ZakatCalculateResponseEntityCopyWith<$Res> {
  __$ZakatCalculateResponseEntityCopyWithImpl(this._self, this._then);

  final _ZakatCalculateResponseEntity _self;
  final $Res Function(_ZakatCalculateResponseEntity) _then;

/// Create a copy of ZakatCalculateResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zakatTypeId = freezed,Object? zakatTypeName = freezed,Object? slug = freezed,Object? asset = freezed,Object? people = freezed,Object? nisabValue = freezed,Object? zakatAmount = freezed,Object? isWajib = freezed,Object? isMustahik = freezed,Object? currency = freezed,Object? message = freezed,}) {
  return _then(_ZakatCalculateResponseEntity(
zakatTypeId: freezed == zakatTypeId ? _self.zakatTypeId : zakatTypeId // ignore: cast_nullable_to_non_nullable
as int?,zakatTypeName: freezed == zakatTypeName ? _self.zakatTypeName : zakatTypeName // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as int?,people: freezed == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as int?,nisabValue: freezed == nisabValue ? _self.nisabValue : nisabValue // ignore: cast_nullable_to_non_nullable
as int?,zakatAmount: freezed == zakatAmount ? _self.zakatAmount : zakatAmount // ignore: cast_nullable_to_non_nullable
as int?,isWajib: freezed == isWajib ? _self.isWajib : isWajib // ignore: cast_nullable_to_non_nullable
as bool?,isMustahik: freezed == isMustahik ? _self.isMustahik : isMustahik // ignore: cast_nullable_to_non_nullable
as bool?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
