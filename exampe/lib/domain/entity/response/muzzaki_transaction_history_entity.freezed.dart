// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muzzaki_transaction_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuzzakiTransactionHistoryEntity {

 int? get id; int? get programId; String? get programName; int? get amount; String? get paymentMethod; bool? get isNatura; List<NaturaItemEntity>? get naturaItems; String? get status; String? get paymentDate; String? get bszNo; String? get receiptUrl; TrackingTimelineEntity? get trackingTimeline; String? get createdAt; String? get updatedAt;
/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuzzakiTransactionHistoryEntityCopyWith<MuzzakiTransactionHistoryEntity> get copyWith => _$MuzzakiTransactionHistoryEntityCopyWithImpl<MuzzakiTransactionHistoryEntity>(this as MuzzakiTransactionHistoryEntity, _$identity);

  /// Serializes this MuzzakiTransactionHistoryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuzzakiTransactionHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&const DeepCollectionEquality().equals(other.naturaItems, naturaItems)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.bszNo, bszNo) || other.bszNo == bszNo)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.trackingTimeline, trackingTimeline) || other.trackingTimeline == trackingTimeline)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,programId,programName,amount,paymentMethod,isNatura,const DeepCollectionEquality().hash(naturaItems),status,paymentDate,bszNo,receiptUrl,trackingTimeline,createdAt,updatedAt);

@override
String toString() {
  return 'MuzzakiTransactionHistoryEntity(id: $id, programId: $programId, programName: $programName, amount: $amount, paymentMethod: $paymentMethod, isNatura: $isNatura, naturaItems: $naturaItems, status: $status, paymentDate: $paymentDate, bszNo: $bszNo, receiptUrl: $receiptUrl, trackingTimeline: $trackingTimeline, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MuzzakiTransactionHistoryEntityCopyWith<$Res>  {
  factory $MuzzakiTransactionHistoryEntityCopyWith(MuzzakiTransactionHistoryEntity value, $Res Function(MuzzakiTransactionHistoryEntity) _then) = _$MuzzakiTransactionHistoryEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? programId, String? programName, int? amount, String? paymentMethod, bool? isNatura, List<NaturaItemEntity>? naturaItems, String? status, String? paymentDate, String? bszNo, String? receiptUrl, TrackingTimelineEntity? trackingTimeline, String? createdAt, String? updatedAt
});


$TrackingTimelineEntityCopyWith<$Res>? get trackingTimeline;

}
/// @nodoc
class _$MuzzakiTransactionHistoryEntityCopyWithImpl<$Res>
    implements $MuzzakiTransactionHistoryEntityCopyWith<$Res> {
  _$MuzzakiTransactionHistoryEntityCopyWithImpl(this._self, this._then);

  final MuzzakiTransactionHistoryEntity _self;
  final $Res Function(MuzzakiTransactionHistoryEntity) _then;

/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? programId = freezed,Object? programName = freezed,Object? amount = freezed,Object? paymentMethod = freezed,Object? isNatura = freezed,Object? naturaItems = freezed,Object? status = freezed,Object? paymentDate = freezed,Object? bszNo = freezed,Object? receiptUrl = freezed,Object? trackingTimeline = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,programId: freezed == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as int?,programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,isNatura: freezed == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool?,naturaItems: freezed == naturaItems ? _self.naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<NaturaItemEntity>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String?,bszNo: freezed == bszNo ? _self.bszNo : bszNo // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,trackingTimeline: freezed == trackingTimeline ? _self.trackingTimeline : trackingTimeline // ignore: cast_nullable_to_non_nullable
as TrackingTimelineEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingTimelineEntityCopyWith<$Res>? get trackingTimeline {
    if (_self.trackingTimeline == null) {
    return null;
  }

  return $TrackingTimelineEntityCopyWith<$Res>(_self.trackingTimeline!, (value) {
    return _then(_self.copyWith(trackingTimeline: value));
  });
}
}


/// Adds pattern-matching-related methods to [MuzzakiTransactionHistoryEntity].
extension MuzzakiTransactionHistoryEntityPatterns on MuzzakiTransactionHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuzzakiTransactionHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuzzakiTransactionHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuzzakiTransactionHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? programId,  String? programName,  int? amount,  String? paymentMethod,  bool? isNatura,  List<NaturaItemEntity>? naturaItems,  String? status,  String? paymentDate,  String? bszNo,  String? receiptUrl,  TrackingTimelineEntity? trackingTimeline,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity() when $default != null:
return $default(_that.id,_that.programId,_that.programName,_that.amount,_that.paymentMethod,_that.isNatura,_that.naturaItems,_that.status,_that.paymentDate,_that.bszNo,_that.receiptUrl,_that.trackingTimeline,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? programId,  String? programName,  int? amount,  String? paymentMethod,  bool? isNatura,  List<NaturaItemEntity>? naturaItems,  String? status,  String? paymentDate,  String? bszNo,  String? receiptUrl,  TrackingTimelineEntity? trackingTimeline,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity():
return $default(_that.id,_that.programId,_that.programName,_that.amount,_that.paymentMethod,_that.isNatura,_that.naturaItems,_that.status,_that.paymentDate,_that.bszNo,_that.receiptUrl,_that.trackingTimeline,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? programId,  String? programName,  int? amount,  String? paymentMethod,  bool? isNatura,  List<NaturaItemEntity>? naturaItems,  String? status,  String? paymentDate,  String? bszNo,  String? receiptUrl,  TrackingTimelineEntity? trackingTimeline,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MuzzakiTransactionHistoryEntity() when $default != null:
return $default(_that.id,_that.programId,_that.programName,_that.amount,_that.paymentMethod,_that.isNatura,_that.naturaItems,_that.status,_that.paymentDate,_that.bszNo,_that.receiptUrl,_that.trackingTimeline,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuzzakiTransactionHistoryEntity implements MuzzakiTransactionHistoryEntity {
  const _MuzzakiTransactionHistoryEntity({this.id, this.programId, this.programName, this.amount, this.paymentMethod, this.isNatura, final  List<NaturaItemEntity>? naturaItems, this.status, this.paymentDate, this.bszNo, this.receiptUrl, this.trackingTimeline, this.createdAt, this.updatedAt}): _naturaItems = naturaItems;
  factory _MuzzakiTransactionHistoryEntity.fromJson(Map<String, dynamic> json) => _$MuzzakiTransactionHistoryEntityFromJson(json);

@override final  int? id;
@override final  int? programId;
@override final  String? programName;
@override final  int? amount;
@override final  String? paymentMethod;
@override final  bool? isNatura;
 final  List<NaturaItemEntity>? _naturaItems;
@override List<NaturaItemEntity>? get naturaItems {
  final value = _naturaItems;
  if (value == null) return null;
  if (_naturaItems is EqualUnmodifiableListView) return _naturaItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? status;
@override final  String? paymentDate;
@override final  String? bszNo;
@override final  String? receiptUrl;
@override final  TrackingTimelineEntity? trackingTimeline;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuzzakiTransactionHistoryEntityCopyWith<_MuzzakiTransactionHistoryEntity> get copyWith => __$MuzzakiTransactionHistoryEntityCopyWithImpl<_MuzzakiTransactionHistoryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuzzakiTransactionHistoryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuzzakiTransactionHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&const DeepCollectionEquality().equals(other._naturaItems, _naturaItems)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.bszNo, bszNo) || other.bszNo == bszNo)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.trackingTimeline, trackingTimeline) || other.trackingTimeline == trackingTimeline)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,programId,programName,amount,paymentMethod,isNatura,const DeepCollectionEquality().hash(_naturaItems),status,paymentDate,bszNo,receiptUrl,trackingTimeline,createdAt,updatedAt);

@override
String toString() {
  return 'MuzzakiTransactionHistoryEntity(id: $id, programId: $programId, programName: $programName, amount: $amount, paymentMethod: $paymentMethod, isNatura: $isNatura, naturaItems: $naturaItems, status: $status, paymentDate: $paymentDate, bszNo: $bszNo, receiptUrl: $receiptUrl, trackingTimeline: $trackingTimeline, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MuzzakiTransactionHistoryEntityCopyWith<$Res> implements $MuzzakiTransactionHistoryEntityCopyWith<$Res> {
  factory _$MuzzakiTransactionHistoryEntityCopyWith(_MuzzakiTransactionHistoryEntity value, $Res Function(_MuzzakiTransactionHistoryEntity) _then) = __$MuzzakiTransactionHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? programId, String? programName, int? amount, String? paymentMethod, bool? isNatura, List<NaturaItemEntity>? naturaItems, String? status, String? paymentDate, String? bszNo, String? receiptUrl, TrackingTimelineEntity? trackingTimeline, String? createdAt, String? updatedAt
});


@override $TrackingTimelineEntityCopyWith<$Res>? get trackingTimeline;

}
/// @nodoc
class __$MuzzakiTransactionHistoryEntityCopyWithImpl<$Res>
    implements _$MuzzakiTransactionHistoryEntityCopyWith<$Res> {
  __$MuzzakiTransactionHistoryEntityCopyWithImpl(this._self, this._then);

  final _MuzzakiTransactionHistoryEntity _self;
  final $Res Function(_MuzzakiTransactionHistoryEntity) _then;

/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? programId = freezed,Object? programName = freezed,Object? amount = freezed,Object? paymentMethod = freezed,Object? isNatura = freezed,Object? naturaItems = freezed,Object? status = freezed,Object? paymentDate = freezed,Object? bszNo = freezed,Object? receiptUrl = freezed,Object? trackingTimeline = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MuzzakiTransactionHistoryEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,programId: freezed == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as int?,programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,isNatura: freezed == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool?,naturaItems: freezed == naturaItems ? _self._naturaItems : naturaItems // ignore: cast_nullable_to_non_nullable
as List<NaturaItemEntity>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String?,bszNo: freezed == bszNo ? _self.bszNo : bszNo // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,trackingTimeline: freezed == trackingTimeline ? _self.trackingTimeline : trackingTimeline // ignore: cast_nullable_to_non_nullable
as TrackingTimelineEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MuzzakiTransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingTimelineEntityCopyWith<$Res>? get trackingTimeline {
    if (_self.trackingTimeline == null) {
    return null;
  }

  return $TrackingTimelineEntityCopyWith<$Res>(_self.trackingTimeline!, (value) {
    return _then(_self.copyWith(trackingTimeline: value));
  });
}
}


/// @nodoc
mixin _$TrackingTimelineEntity {

 String? get paymentReceivedAt; String? get verifiedAt; String? get allocatedAt; String? get distributedAt;
/// Create a copy of TrackingTimelineEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingTimelineEntityCopyWith<TrackingTimelineEntity> get copyWith => _$TrackingTimelineEntityCopyWithImpl<TrackingTimelineEntity>(this as TrackingTimelineEntity, _$identity);

  /// Serializes this TrackingTimelineEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingTimelineEntity&&(identical(other.paymentReceivedAt, paymentReceivedAt) || other.paymentReceivedAt == paymentReceivedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.distributedAt, distributedAt) || other.distributedAt == distributedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentReceivedAt,verifiedAt,allocatedAt,distributedAt);

@override
String toString() {
  return 'TrackingTimelineEntity(paymentReceivedAt: $paymentReceivedAt, verifiedAt: $verifiedAt, allocatedAt: $allocatedAt, distributedAt: $distributedAt)';
}


}

/// @nodoc
abstract mixin class $TrackingTimelineEntityCopyWith<$Res>  {
  factory $TrackingTimelineEntityCopyWith(TrackingTimelineEntity value, $Res Function(TrackingTimelineEntity) _then) = _$TrackingTimelineEntityCopyWithImpl;
@useResult
$Res call({
 String? paymentReceivedAt, String? verifiedAt, String? allocatedAt, String? distributedAt
});




}
/// @nodoc
class _$TrackingTimelineEntityCopyWithImpl<$Res>
    implements $TrackingTimelineEntityCopyWith<$Res> {
  _$TrackingTimelineEntityCopyWithImpl(this._self, this._then);

  final TrackingTimelineEntity _self;
  final $Res Function(TrackingTimelineEntity) _then;

/// Create a copy of TrackingTimelineEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentReceivedAt = freezed,Object? verifiedAt = freezed,Object? allocatedAt = freezed,Object? distributedAt = freezed,}) {
  return _then(_self.copyWith(
paymentReceivedAt: freezed == paymentReceivedAt ? _self.paymentReceivedAt : paymentReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as String?,distributedAt: freezed == distributedAt ? _self.distributedAt : distributedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrackingTimelineEntity].
extension TrackingTimelineEntityPatterns on TrackingTimelineEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingTimelineEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingTimelineEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingTimelineEntity value)  $default,){
final _that = this;
switch (_that) {
case _TrackingTimelineEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingTimelineEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingTimelineEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? paymentReceivedAt,  String? verifiedAt,  String? allocatedAt,  String? distributedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingTimelineEntity() when $default != null:
return $default(_that.paymentReceivedAt,_that.verifiedAt,_that.allocatedAt,_that.distributedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? paymentReceivedAt,  String? verifiedAt,  String? allocatedAt,  String? distributedAt)  $default,) {final _that = this;
switch (_that) {
case _TrackingTimelineEntity():
return $default(_that.paymentReceivedAt,_that.verifiedAt,_that.allocatedAt,_that.distributedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? paymentReceivedAt,  String? verifiedAt,  String? allocatedAt,  String? distributedAt)?  $default,) {final _that = this;
switch (_that) {
case _TrackingTimelineEntity() when $default != null:
return $default(_that.paymentReceivedAt,_that.verifiedAt,_that.allocatedAt,_that.distributedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrackingTimelineEntity implements TrackingTimelineEntity {
  const _TrackingTimelineEntity({this.paymentReceivedAt, this.verifiedAt, this.allocatedAt, this.distributedAt});
  factory _TrackingTimelineEntity.fromJson(Map<String, dynamic> json) => _$TrackingTimelineEntityFromJson(json);

@override final  String? paymentReceivedAt;
@override final  String? verifiedAt;
@override final  String? allocatedAt;
@override final  String? distributedAt;

/// Create a copy of TrackingTimelineEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingTimelineEntityCopyWith<_TrackingTimelineEntity> get copyWith => __$TrackingTimelineEntityCopyWithImpl<_TrackingTimelineEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackingTimelineEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingTimelineEntity&&(identical(other.paymentReceivedAt, paymentReceivedAt) || other.paymentReceivedAt == paymentReceivedAt)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.distributedAt, distributedAt) || other.distributedAt == distributedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentReceivedAt,verifiedAt,allocatedAt,distributedAt);

@override
String toString() {
  return 'TrackingTimelineEntity(paymentReceivedAt: $paymentReceivedAt, verifiedAt: $verifiedAt, allocatedAt: $allocatedAt, distributedAt: $distributedAt)';
}


}

/// @nodoc
abstract mixin class _$TrackingTimelineEntityCopyWith<$Res> implements $TrackingTimelineEntityCopyWith<$Res> {
  factory _$TrackingTimelineEntityCopyWith(_TrackingTimelineEntity value, $Res Function(_TrackingTimelineEntity) _then) = __$TrackingTimelineEntityCopyWithImpl;
@override @useResult
$Res call({
 String? paymentReceivedAt, String? verifiedAt, String? allocatedAt, String? distributedAt
});




}
/// @nodoc
class __$TrackingTimelineEntityCopyWithImpl<$Res>
    implements _$TrackingTimelineEntityCopyWith<$Res> {
  __$TrackingTimelineEntityCopyWithImpl(this._self, this._then);

  final _TrackingTimelineEntity _self;
  final $Res Function(_TrackingTimelineEntity) _then;

/// Create a copy of TrackingTimelineEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentReceivedAt = freezed,Object? verifiedAt = freezed,Object? allocatedAt = freezed,Object? distributedAt = freezed,}) {
  return _then(_TrackingTimelineEntity(
paymentReceivedAt: freezed == paymentReceivedAt ? _self.paymentReceivedAt : paymentReceivedAt // ignore: cast_nullable_to_non_nullable
as String?,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as String?,distributedAt: freezed == distributedAt ? _self.distributedAt : distributedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
