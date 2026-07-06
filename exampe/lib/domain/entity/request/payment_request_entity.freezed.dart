// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentRequestEntity {

 int get programId; int? get muzakkiId; String? get muzakkiNik; String? get paymentMethod; bool get isNatura; bool get isPickupRequested; PickupDetailsEntity? get pickupDetails; double? get amount; List<NaturaItemEntity>? get naturaItems; String? get proofFilePath; bool? get isAnonymous; String? get anonymousName; String? get anonymousPhone; int? get upzId; double? get latitude; double? get longitude;
/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestEntityCopyWith<PaymentRequestEntity> get copyWith => _$PaymentRequestEntityCopyWithImpl<PaymentRequestEntity>(this as PaymentRequestEntity, _$identity);

  /// Serializes this PaymentRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestEntity&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.muzakkiNik, muzakkiNik) || other.muzakkiNik == muzakkiNik)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&(identical(other.isPickupRequested, isPickupRequested) || other.isPickupRequested == isPickupRequested)&&(identical(other.pickupDetails, pickupDetails) || other.pickupDetails == pickupDetails)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.naturaItems, naturaItems)&&(identical(other.proofFilePath, proofFilePath) || other.proofFilePath == proofFilePath)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.anonymousName, anonymousName) || other.anonymousName == anonymousName)&&(identical(other.anonymousPhone, anonymousPhone) || other.anonymousPhone == anonymousPhone)&&(identical(other.upzId, upzId) || other.upzId == upzId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,muzakkiId,muzakkiNik,paymentMethod,isNatura,isPickupRequested,pickupDetails,amount,const DeepCollectionEquality().hash(naturaItems),proofFilePath,isAnonymous,anonymousName,anonymousPhone,upzId,latitude,longitude);

@override
String toString() {
  return 'PaymentRequestEntity(programId: $programId, muzakkiId: $muzakkiId, muzakkiNik: $muzakkiNik, paymentMethod: $paymentMethod, isNatura: $isNatura, isPickupRequested: $isPickupRequested, pickupDetails: $pickupDetails, amount: $amount, naturaItems: $naturaItems, proofFilePath: $proofFilePath, isAnonymous: $isAnonymous, anonymousName: $anonymousName, anonymousPhone: $anonymousPhone, upzId: $upzId, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestEntityCopyWith<$Res>  {
  factory $PaymentRequestEntityCopyWith(PaymentRequestEntity value, $Res Function(PaymentRequestEntity) _then) = _$PaymentRequestEntityCopyWithImpl;
@useResult
$Res call({
 int programId, int? muzakkiId, String? muzakkiNik, String? paymentMethod, bool isNatura, bool isPickupRequested, PickupDetailsEntity? pickupDetails, double? amount, List<NaturaItemEntity>? naturaItems, String? proofFilePath, bool? isAnonymous, String? anonymousName, String? anonymousPhone, int? upzId, double? latitude, double? longitude
});


$PickupDetailsEntityCopyWith<$Res>? get pickupDetails;

}
/// @nodoc
class _$PaymentRequestEntityCopyWithImpl<$Res>
    implements $PaymentRequestEntityCopyWith<$Res> {
  _$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final PaymentRequestEntity _self;
  final $Res Function(PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programId = null,Object? muzakkiId = freezed,Object? muzakkiNik = freezed,Object? paymentMethod = freezed,Object? isNatura = null,Object? isPickupRequested = null,Object? pickupDetails = freezed,Object? amount = freezed,Object? naturaItems = freezed,Object? proofFilePath = freezed,Object? isAnonymous = freezed,Object? anonymousName = freezed,Object? anonymousPhone = freezed,Object? upzId = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as int,muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,muzakkiNik: freezed == muzakkiNik ? _self.muzakkiNik : muzakkiNik // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,isNatura: null == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool,isPickupRequested: null == isPickupRequested ? _self.isPickupRequested : isPickupRequested // ignore: cast_nullable_to_non_nullable
as bool,pickupDetails: freezed == pickupDetails ? _self.pickupDetails : pickupDetails // ignore: cast_nullable_to_non_nullable
as PickupDetailsEntity?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,naturaItems: freezed == naturaItems ? _self.naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<NaturaItemEntity>?,proofFilePath: freezed == proofFilePath ? _self.proofFilePath : proofFilePath // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,anonymousName: freezed == anonymousName ? _self.anonymousName : anonymousName // ignore: cast_nullable_to_non_nullable
as String?,anonymousPhone: freezed == anonymousPhone ? _self.anonymousPhone : anonymousPhone // ignore: cast_nullable_to_non_nullable
as String?,upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupDetailsEntityCopyWith<$Res>? get pickupDetails {
    if (_self.pickupDetails == null) {
    return null;
  }

  return $PickupDetailsEntityCopyWith<$Res>(_self.pickupDetails!, (value) {
    return _then(_self.copyWith(pickupDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentRequestEntity].
extension PaymentRequestEntityPatterns on PaymentRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int programId,  int? muzakkiId,  String? muzakkiNik,  String? paymentMethod,  bool isNatura,  bool isPickupRequested,  PickupDetailsEntity? pickupDetails,  double? amount,  List<NaturaItemEntity>? naturaItems,  String? proofFilePath,  bool? isAnonymous,  String? anonymousName,  String? anonymousPhone,  int? upzId,  double? latitude,  double? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.programId,_that.muzakkiId,_that.muzakkiNik,_that.paymentMethod,_that.isNatura,_that.isPickupRequested,_that.pickupDetails,_that.amount,_that.naturaItems,_that.proofFilePath,_that.isAnonymous,_that.anonymousName,_that.anonymousPhone,_that.upzId,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int programId,  int? muzakkiId,  String? muzakkiNik,  String? paymentMethod,  bool isNatura,  bool isPickupRequested,  PickupDetailsEntity? pickupDetails,  double? amount,  List<NaturaItemEntity>? naturaItems,  String? proofFilePath,  bool? isAnonymous,  String? anonymousName,  String? anonymousPhone,  int? upzId,  double? latitude,  double? longitude)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity():
return $default(_that.programId,_that.muzakkiId,_that.muzakkiNik,_that.paymentMethod,_that.isNatura,_that.isPickupRequested,_that.pickupDetails,_that.amount,_that.naturaItems,_that.proofFilePath,_that.isAnonymous,_that.anonymousName,_that.anonymousPhone,_that.upzId,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int programId,  int? muzakkiId,  String? muzakkiNik,  String? paymentMethod,  bool isNatura,  bool isPickupRequested,  PickupDetailsEntity? pickupDetails,  double? amount,  List<NaturaItemEntity>? naturaItems,  String? proofFilePath,  bool? isAnonymous,  String? anonymousName,  String? anonymousPhone,  int? upzId,  double? latitude,  double? longitude)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.programId,_that.muzakkiId,_that.muzakkiNik,_that.paymentMethod,_that.isNatura,_that.isPickupRequested,_that.pickupDetails,_that.amount,_that.naturaItems,_that.proofFilePath,_that.isAnonymous,_that.anonymousName,_that.anonymousPhone,_that.upzId,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRequestEntity implements PaymentRequestEntity {
  const _PaymentRequestEntity({required this.programId, this.muzakkiId, this.muzakkiNik, this.paymentMethod, this.isNatura = false, this.isPickupRequested = false, this.pickupDetails, this.amount, final  List<NaturaItemEntity>? naturaItems, this.proofFilePath, this.isAnonymous, this.anonymousName, this.anonymousPhone, this.upzId, this.latitude, this.longitude}): _naturaItems = naturaItems;
  factory _PaymentRequestEntity.fromJson(Map<String, dynamic> json) => _$PaymentRequestEntityFromJson(json);

@override final  int programId;
@override final  int? muzakkiId;
@override final  String? muzakkiNik;
@override final  String? paymentMethod;
@override@JsonKey() final  bool isNatura;
@override@JsonKey() final  bool isPickupRequested;
@override final  PickupDetailsEntity? pickupDetails;
@override final  double? amount;
 final  List<NaturaItemEntity>? _naturaItems;
@override List<NaturaItemEntity>? get naturaItems {
  final value = _naturaItems;
  if (value == null) return null;
  if (_naturaItems is EqualUnmodifiableListView) return _naturaItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? proofFilePath;
@override final  bool? isAnonymous;
@override final  String? anonymousName;
@override final  String? anonymousPhone;
@override final  int? upzId;
@override final  double? latitude;
@override final  double? longitude;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestEntityCopyWith<_PaymentRequestEntity> get copyWith => __$PaymentRequestEntityCopyWithImpl<_PaymentRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestEntity&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.muzakkiNik, muzakkiNik) || other.muzakkiNik == muzakkiNik)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&(identical(other.isPickupRequested, isPickupRequested) || other.isPickupRequested == isPickupRequested)&&(identical(other.pickupDetails, pickupDetails) || other.pickupDetails == pickupDetails)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._naturaItems, _naturaItems)&&(identical(other.proofFilePath, proofFilePath) || other.proofFilePath == proofFilePath)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.anonymousName, anonymousName) || other.anonymousName == anonymousName)&&(identical(other.anonymousPhone, anonymousPhone) || other.anonymousPhone == anonymousPhone)&&(identical(other.upzId, upzId) || other.upzId == upzId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,muzakkiId,muzakkiNik,paymentMethod,isNatura,isPickupRequested,pickupDetails,amount,const DeepCollectionEquality().hash(_naturaItems),proofFilePath,isAnonymous,anonymousName,anonymousPhone,upzId,latitude,longitude);

@override
String toString() {
  return 'PaymentRequestEntity(programId: $programId, muzakkiId: $muzakkiId, muzakkiNik: $muzakkiNik, paymentMethod: $paymentMethod, isNatura: $isNatura, isPickupRequested: $isPickupRequested, pickupDetails: $pickupDetails, amount: $amount, naturaItems: $naturaItems, proofFilePath: $proofFilePath, isAnonymous: $isAnonymous, anonymousName: $anonymousName, anonymousPhone: $anonymousPhone, upzId: $upzId, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestEntityCopyWith<$Res> implements $PaymentRequestEntityCopyWith<$Res> {
  factory _$PaymentRequestEntityCopyWith(_PaymentRequestEntity value, $Res Function(_PaymentRequestEntity) _then) = __$PaymentRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int programId, int? muzakkiId, String? muzakkiNik, String? paymentMethod, bool isNatura, bool isPickupRequested, PickupDetailsEntity? pickupDetails, double? amount, List<NaturaItemEntity>? naturaItems, String? proofFilePath, bool? isAnonymous, String? anonymousName, String? anonymousPhone, int? upzId, double? latitude, double? longitude
});


@override $PickupDetailsEntityCopyWith<$Res>? get pickupDetails;

}
/// @nodoc
class __$PaymentRequestEntityCopyWithImpl<$Res>
    implements _$PaymentRequestEntityCopyWith<$Res> {
  __$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final _PaymentRequestEntity _self;
  final $Res Function(_PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programId = null,Object? muzakkiId = freezed,Object? muzakkiNik = freezed,Object? paymentMethod = freezed,Object? isNatura = null,Object? isPickupRequested = null,Object? pickupDetails = freezed,Object? amount = freezed,Object? naturaItems = freezed,Object? proofFilePath = freezed,Object? isAnonymous = freezed,Object? anonymousName = freezed,Object? anonymousPhone = freezed,Object? upzId = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_PaymentRequestEntity(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as int,muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,muzakkiNik: freezed == muzakkiNik ? _self.muzakkiNik : muzakkiNik // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,isNatura: null == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool,isPickupRequested: null == isPickupRequested ? _self.isPickupRequested : isPickupRequested // ignore: cast_nullable_to_non_nullable
as bool,pickupDetails: freezed == pickupDetails ? _self.pickupDetails : pickupDetails // ignore: cast_nullable_to_non_nullable
as PickupDetailsEntity?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,naturaItems: freezed == naturaItems ? _self._naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<NaturaItemEntity>?,proofFilePath: freezed == proofFilePath ? _self.proofFilePath : proofFilePath // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: freezed == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool?,anonymousName: freezed == anonymousName ? _self.anonymousName : anonymousName // ignore: cast_nullable_to_non_nullable
as String?,anonymousPhone: freezed == anonymousPhone ? _self.anonymousPhone : anonymousPhone // ignore: cast_nullable_to_non_nullable
as String?,upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupDetailsEntityCopyWith<$Res>? get pickupDetails {
    if (_self.pickupDetails == null) {
    return null;
  }

  return $PickupDetailsEntityCopyWith<$Res>(_self.pickupDetails!, (value) {
    return _then(_self.copyWith(pickupDetails: value));
  });
}
}

// dart format on
