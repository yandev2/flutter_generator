// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disbursement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisbursementEntity {

 int? get id; String? get upz; String? get upzLocation; String? get fundType; int? get amount; String? get disbursementType; String? get status; String? get location; String? get proofUrl; List<dynamic>? get inventoryItem; double? get naturaQty; String? get kabid; String? get pimpinan; String? get kabidApprovedAt; String? get pimpinanApprovedAt; String? get approvalNotes; DisbursementJournalEntity? get journal; String? get createdAt; String? get updatedAt; DisbursementMustahikEntity? get mustahik;
/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisbursementEntityCopyWith<DisbursementEntity> get copyWith => _$DisbursementEntityCopyWithImpl<DisbursementEntity>(this as DisbursementEntity, _$identity);

  /// Serializes this DisbursementEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisbursementEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.upz, upz) || other.upz == upz)&&(identical(other.upzLocation, upzLocation) || other.upzLocation == upzLocation)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.disbursementType, disbursementType) || other.disbursementType == disbursementType)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.proofUrl, proofUrl) || other.proofUrl == proofUrl)&&const DeepCollectionEquality().equals(other.inventoryItem, inventoryItem)&&(identical(other.naturaQty, naturaQty) || other.naturaQty == naturaQty)&&(identical(other.kabid, kabid) || other.kabid == kabid)&&(identical(other.pimpinan, pimpinan) || other.pimpinan == pimpinan)&&(identical(other.kabidApprovedAt, kabidApprovedAt) || other.kabidApprovedAt == kabidApprovedAt)&&(identical(other.pimpinanApprovedAt, pimpinanApprovedAt) || other.pimpinanApprovedAt == pimpinanApprovedAt)&&(identical(other.approvalNotes, approvalNotes) || other.approvalNotes == approvalNotes)&&(identical(other.journal, journal) || other.journal == journal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.mustahik, mustahik) || other.mustahik == mustahik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,upz,upzLocation,fundType,amount,disbursementType,status,location,proofUrl,const DeepCollectionEquality().hash(inventoryItem),naturaQty,kabid,pimpinan,kabidApprovedAt,pimpinanApprovedAt,approvalNotes,journal,createdAt,updatedAt,mustahik]);

@override
String toString() {
  return 'DisbursementEntity(id: $id, upz: $upz, upzLocation: $upzLocation, fundType: $fundType, amount: $amount, disbursementType: $disbursementType, status: $status, location: $location, proofUrl: $proofUrl, inventoryItem: $inventoryItem, naturaQty: $naturaQty, kabid: $kabid, pimpinan: $pimpinan, kabidApprovedAt: $kabidApprovedAt, pimpinanApprovedAt: $pimpinanApprovedAt, approvalNotes: $approvalNotes, journal: $journal, createdAt: $createdAt, updatedAt: $updatedAt, mustahik: $mustahik)';
}


}

/// @nodoc
abstract mixin class $DisbursementEntityCopyWith<$Res>  {
  factory $DisbursementEntityCopyWith(DisbursementEntity value, $Res Function(DisbursementEntity) _then) = _$DisbursementEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? upz, String? upzLocation, String? fundType, int? amount, String? disbursementType, String? status, String? location, String? proofUrl, List<dynamic>? inventoryItem, double? naturaQty, String? kabid, String? pimpinan, String? kabidApprovedAt, String? pimpinanApprovedAt, String? approvalNotes, DisbursementJournalEntity? journal, String? createdAt, String? updatedAt, DisbursementMustahikEntity? mustahik
});


$DisbursementJournalEntityCopyWith<$Res>? get journal;$DisbursementMustahikEntityCopyWith<$Res>? get mustahik;

}
/// @nodoc
class _$DisbursementEntityCopyWithImpl<$Res>
    implements $DisbursementEntityCopyWith<$Res> {
  _$DisbursementEntityCopyWithImpl(this._self, this._then);

  final DisbursementEntity _self;
  final $Res Function(DisbursementEntity) _then;

/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? upz = freezed,Object? upzLocation = freezed,Object? fundType = freezed,Object? amount = freezed,Object? disbursementType = freezed,Object? status = freezed,Object? location = freezed,Object? proofUrl = freezed,Object? inventoryItem = freezed,Object? naturaQty = freezed,Object? kabid = freezed,Object? pimpinan = freezed,Object? kabidApprovedAt = freezed,Object? pimpinanApprovedAt = freezed,Object? approvalNotes = freezed,Object? journal = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? mustahik = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as String?,upzLocation: freezed == upzLocation ? _self.upzLocation : upzLocation // ignore: cast_nullable_to_non_nullable
as String?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,disbursementType: freezed == disbursementType ? _self.disbursementType : disbursementType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,proofUrl: freezed == proofUrl ? _self.proofUrl : proofUrl // ignore: cast_nullable_to_non_nullable
as String?,inventoryItem: freezed == inventoryItem ? _self.inventoryItem : inventoryItem // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,naturaQty: freezed == naturaQty ? _self.naturaQty : naturaQty // ignore: cast_nullable_to_non_nullable
as double?,kabid: freezed == kabid ? _self.kabid : kabid // ignore: cast_nullable_to_non_nullable
as String?,pimpinan: freezed == pimpinan ? _self.pimpinan : pimpinan // ignore: cast_nullable_to_non_nullable
as String?,kabidApprovedAt: freezed == kabidApprovedAt ? _self.kabidApprovedAt : kabidApprovedAt // ignore: cast_nullable_to_non_nullable
as String?,pimpinanApprovedAt: freezed == pimpinanApprovedAt ? _self.pimpinanApprovedAt : pimpinanApprovedAt // ignore: cast_nullable_to_non_nullable
as String?,approvalNotes: freezed == approvalNotes ? _self.approvalNotes : approvalNotes // ignore: cast_nullable_to_non_nullable
as String?,journal: freezed == journal ? _self.journal : journal // ignore: cast_nullable_to_non_nullable
as DisbursementJournalEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,mustahik: freezed == mustahik ? _self.mustahik : mustahik // ignore: cast_nullable_to_non_nullable
as DisbursementMustahikEntity?,
  ));
}
/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisbursementJournalEntityCopyWith<$Res>? get journal {
    if (_self.journal == null) {
    return null;
  }

  return $DisbursementJournalEntityCopyWith<$Res>(_self.journal!, (value) {
    return _then(_self.copyWith(journal: value));
  });
}/// Create a copy of DisbursementEntity
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


/// Adds pattern-matching-related methods to [DisbursementEntity].
extension DisbursementEntityPatterns on DisbursementEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisbursementEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisbursementEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisbursementEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisbursementEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisbursementEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisbursementEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? upz,  String? upzLocation,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? location,  String? proofUrl,  List<dynamic>? inventoryItem,  double? naturaQty,  String? kabid,  String? pimpinan,  String? kabidApprovedAt,  String? pimpinanApprovedAt,  String? approvalNotes,  DisbursementJournalEntity? journal,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisbursementEntity() when $default != null:
return $default(_that.id,_that.upz,_that.upzLocation,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.location,_that.proofUrl,_that.inventoryItem,_that.naturaQty,_that.kabid,_that.pimpinan,_that.kabidApprovedAt,_that.pimpinanApprovedAt,_that.approvalNotes,_that.journal,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? upz,  String? upzLocation,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? location,  String? proofUrl,  List<dynamic>? inventoryItem,  double? naturaQty,  String? kabid,  String? pimpinan,  String? kabidApprovedAt,  String? pimpinanApprovedAt,  String? approvalNotes,  DisbursementJournalEntity? journal,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)  $default,) {final _that = this;
switch (_that) {
case _DisbursementEntity():
return $default(_that.id,_that.upz,_that.upzLocation,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.location,_that.proofUrl,_that.inventoryItem,_that.naturaQty,_that.kabid,_that.pimpinan,_that.kabidApprovedAt,_that.pimpinanApprovedAt,_that.approvalNotes,_that.journal,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? upz,  String? upzLocation,  String? fundType,  int? amount,  String? disbursementType,  String? status,  String? location,  String? proofUrl,  List<dynamic>? inventoryItem,  double? naturaQty,  String? kabid,  String? pimpinan,  String? kabidApprovedAt,  String? pimpinanApprovedAt,  String? approvalNotes,  DisbursementJournalEntity? journal,  String? createdAt,  String? updatedAt,  DisbursementMustahikEntity? mustahik)?  $default,) {final _that = this;
switch (_that) {
case _DisbursementEntity() when $default != null:
return $default(_that.id,_that.upz,_that.upzLocation,_that.fundType,_that.amount,_that.disbursementType,_that.status,_that.location,_that.proofUrl,_that.inventoryItem,_that.naturaQty,_that.kabid,_that.pimpinan,_that.kabidApprovedAt,_that.pimpinanApprovedAt,_that.approvalNotes,_that.journal,_that.createdAt,_that.updatedAt,_that.mustahik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisbursementEntity implements DisbursementEntity {
  const _DisbursementEntity({this.id, this.upz, this.upzLocation, this.fundType, this.amount, this.disbursementType, this.status, this.location, this.proofUrl, final  List<dynamic>? inventoryItem, this.naturaQty, this.kabid, this.pimpinan, this.kabidApprovedAt, this.pimpinanApprovedAt, this.approvalNotes, this.journal, this.createdAt, this.updatedAt, this.mustahik}): _inventoryItem = inventoryItem;
  factory _DisbursementEntity.fromJson(Map<String, dynamic> json) => _$DisbursementEntityFromJson(json);

@override final  int? id;
@override final  String? upz;
@override final  String? upzLocation;
@override final  String? fundType;
@override final  int? amount;
@override final  String? disbursementType;
@override final  String? status;
@override final  String? location;
@override final  String? proofUrl;
 final  List<dynamic>? _inventoryItem;
@override List<dynamic>? get inventoryItem {
  final value = _inventoryItem;
  if (value == null) return null;
  if (_inventoryItem is EqualUnmodifiableListView) return _inventoryItem;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? naturaQty;
@override final  String? kabid;
@override final  String? pimpinan;
@override final  String? kabidApprovedAt;
@override final  String? pimpinanApprovedAt;
@override final  String? approvalNotes;
@override final  DisbursementJournalEntity? journal;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  DisbursementMustahikEntity? mustahik;

/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisbursementEntityCopyWith<_DisbursementEntity> get copyWith => __$DisbursementEntityCopyWithImpl<_DisbursementEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisbursementEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisbursementEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.upz, upz) || other.upz == upz)&&(identical(other.upzLocation, upzLocation) || other.upzLocation == upzLocation)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.disbursementType, disbursementType) || other.disbursementType == disbursementType)&&(identical(other.status, status) || other.status == status)&&(identical(other.location, location) || other.location == location)&&(identical(other.proofUrl, proofUrl) || other.proofUrl == proofUrl)&&const DeepCollectionEquality().equals(other._inventoryItem, _inventoryItem)&&(identical(other.naturaQty, naturaQty) || other.naturaQty == naturaQty)&&(identical(other.kabid, kabid) || other.kabid == kabid)&&(identical(other.pimpinan, pimpinan) || other.pimpinan == pimpinan)&&(identical(other.kabidApprovedAt, kabidApprovedAt) || other.kabidApprovedAt == kabidApprovedAt)&&(identical(other.pimpinanApprovedAt, pimpinanApprovedAt) || other.pimpinanApprovedAt == pimpinanApprovedAt)&&(identical(other.approvalNotes, approvalNotes) || other.approvalNotes == approvalNotes)&&(identical(other.journal, journal) || other.journal == journal)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.mustahik, mustahik) || other.mustahik == mustahik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,upz,upzLocation,fundType,amount,disbursementType,status,location,proofUrl,const DeepCollectionEquality().hash(_inventoryItem),naturaQty,kabid,pimpinan,kabidApprovedAt,pimpinanApprovedAt,approvalNotes,journal,createdAt,updatedAt,mustahik]);

@override
String toString() {
  return 'DisbursementEntity(id: $id, upz: $upz, upzLocation: $upzLocation, fundType: $fundType, amount: $amount, disbursementType: $disbursementType, status: $status, location: $location, proofUrl: $proofUrl, inventoryItem: $inventoryItem, naturaQty: $naturaQty, kabid: $kabid, pimpinan: $pimpinan, kabidApprovedAt: $kabidApprovedAt, pimpinanApprovedAt: $pimpinanApprovedAt, approvalNotes: $approvalNotes, journal: $journal, createdAt: $createdAt, updatedAt: $updatedAt, mustahik: $mustahik)';
}


}

/// @nodoc
abstract mixin class _$DisbursementEntityCopyWith<$Res> implements $DisbursementEntityCopyWith<$Res> {
  factory _$DisbursementEntityCopyWith(_DisbursementEntity value, $Res Function(_DisbursementEntity) _then) = __$DisbursementEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? upz, String? upzLocation, String? fundType, int? amount, String? disbursementType, String? status, String? location, String? proofUrl, List<dynamic>? inventoryItem, double? naturaQty, String? kabid, String? pimpinan, String? kabidApprovedAt, String? pimpinanApprovedAt, String? approvalNotes, DisbursementJournalEntity? journal, String? createdAt, String? updatedAt, DisbursementMustahikEntity? mustahik
});


@override $DisbursementJournalEntityCopyWith<$Res>? get journal;@override $DisbursementMustahikEntityCopyWith<$Res>? get mustahik;

}
/// @nodoc
class __$DisbursementEntityCopyWithImpl<$Res>
    implements _$DisbursementEntityCopyWith<$Res> {
  __$DisbursementEntityCopyWithImpl(this._self, this._then);

  final _DisbursementEntity _self;
  final $Res Function(_DisbursementEntity) _then;

/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? upz = freezed,Object? upzLocation = freezed,Object? fundType = freezed,Object? amount = freezed,Object? disbursementType = freezed,Object? status = freezed,Object? location = freezed,Object? proofUrl = freezed,Object? inventoryItem = freezed,Object? naturaQty = freezed,Object? kabid = freezed,Object? pimpinan = freezed,Object? kabidApprovedAt = freezed,Object? pimpinanApprovedAt = freezed,Object? approvalNotes = freezed,Object? journal = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? mustahik = freezed,}) {
  return _then(_DisbursementEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,upz: freezed == upz ? _self.upz : upz // ignore: cast_nullable_to_non_nullable
as String?,upzLocation: freezed == upzLocation ? _self.upzLocation : upzLocation // ignore: cast_nullable_to_non_nullable
as String?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,disbursementType: freezed == disbursementType ? _self.disbursementType : disbursementType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,proofUrl: freezed == proofUrl ? _self.proofUrl : proofUrl // ignore: cast_nullable_to_non_nullable
as String?,inventoryItem: freezed == inventoryItem ? _self._inventoryItem : inventoryItem // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,naturaQty: freezed == naturaQty ? _self.naturaQty : naturaQty // ignore: cast_nullable_to_non_nullable
as double?,kabid: freezed == kabid ? _self.kabid : kabid // ignore: cast_nullable_to_non_nullable
as String?,pimpinan: freezed == pimpinan ? _self.pimpinan : pimpinan // ignore: cast_nullable_to_non_nullable
as String?,kabidApprovedAt: freezed == kabidApprovedAt ? _self.kabidApprovedAt : kabidApprovedAt // ignore: cast_nullable_to_non_nullable
as String?,pimpinanApprovedAt: freezed == pimpinanApprovedAt ? _self.pimpinanApprovedAt : pimpinanApprovedAt // ignore: cast_nullable_to_non_nullable
as String?,approvalNotes: freezed == approvalNotes ? _self.approvalNotes : approvalNotes // ignore: cast_nullable_to_non_nullable
as String?,journal: freezed == journal ? _self.journal : journal // ignore: cast_nullable_to_non_nullable
as DisbursementJournalEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,mustahik: freezed == mustahik ? _self.mustahik : mustahik // ignore: cast_nullable_to_non_nullable
as DisbursementMustahikEntity?,
  ));
}

/// Create a copy of DisbursementEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisbursementJournalEntityCopyWith<$Res>? get journal {
    if (_self.journal == null) {
    return null;
  }

  return $DisbursementJournalEntityCopyWith<$Res>(_self.journal!, (value) {
    return _then(_self.copyWith(journal: value));
  });
}/// Create a copy of DisbursementEntity
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
mixin _$DisbursementJournalEntity {

 int? get id; String? get referenceNo; String? get transactionDate; String? get description; int? get totalAmount; String? get status;
/// Create a copy of DisbursementJournalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisbursementJournalEntityCopyWith<DisbursementJournalEntity> get copyWith => _$DisbursementJournalEntityCopyWithImpl<DisbursementJournalEntity>(this as DisbursementJournalEntity, _$identity);

  /// Serializes this DisbursementJournalEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisbursementJournalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceNo, referenceNo) || other.referenceNo == referenceNo)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceNo,transactionDate,description,totalAmount,status);

@override
String toString() {
  return 'DisbursementJournalEntity(id: $id, referenceNo: $referenceNo, transactionDate: $transactionDate, description: $description, totalAmount: $totalAmount, status: $status)';
}


}

/// @nodoc
abstract mixin class $DisbursementJournalEntityCopyWith<$Res>  {
  factory $DisbursementJournalEntityCopyWith(DisbursementJournalEntity value, $Res Function(DisbursementJournalEntity) _then) = _$DisbursementJournalEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? referenceNo, String? transactionDate, String? description, int? totalAmount, String? status
});




}
/// @nodoc
class _$DisbursementJournalEntityCopyWithImpl<$Res>
    implements $DisbursementJournalEntityCopyWith<$Res> {
  _$DisbursementJournalEntityCopyWithImpl(this._self, this._then);

  final DisbursementJournalEntity _self;
  final $Res Function(DisbursementJournalEntity) _then;

/// Create a copy of DisbursementJournalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? referenceNo = freezed,Object? transactionDate = freezed,Object? description = freezed,Object? totalAmount = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,referenceNo: freezed == referenceNo ? _self.referenceNo : referenceNo // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisbursementJournalEntity].
extension DisbursementJournalEntityPatterns on DisbursementJournalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisbursementJournalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisbursementJournalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisbursementJournalEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisbursementJournalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisbursementJournalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisbursementJournalEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? referenceNo,  String? transactionDate,  String? description,  int? totalAmount,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisbursementJournalEntity() when $default != null:
return $default(_that.id,_that.referenceNo,_that.transactionDate,_that.description,_that.totalAmount,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? referenceNo,  String? transactionDate,  String? description,  int? totalAmount,  String? status)  $default,) {final _that = this;
switch (_that) {
case _DisbursementJournalEntity():
return $default(_that.id,_that.referenceNo,_that.transactionDate,_that.description,_that.totalAmount,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? referenceNo,  String? transactionDate,  String? description,  int? totalAmount,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _DisbursementJournalEntity() when $default != null:
return $default(_that.id,_that.referenceNo,_that.transactionDate,_that.description,_that.totalAmount,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisbursementJournalEntity implements DisbursementJournalEntity {
  const _DisbursementJournalEntity({this.id, this.referenceNo, this.transactionDate, this.description, this.totalAmount, this.status});
  factory _DisbursementJournalEntity.fromJson(Map<String, dynamic> json) => _$DisbursementJournalEntityFromJson(json);

@override final  int? id;
@override final  String? referenceNo;
@override final  String? transactionDate;
@override final  String? description;
@override final  int? totalAmount;
@override final  String? status;

/// Create a copy of DisbursementJournalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisbursementJournalEntityCopyWith<_DisbursementJournalEntity> get copyWith => __$DisbursementJournalEntityCopyWithImpl<_DisbursementJournalEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisbursementJournalEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisbursementJournalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceNo, referenceNo) || other.referenceNo == referenceNo)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceNo,transactionDate,description,totalAmount,status);

@override
String toString() {
  return 'DisbursementJournalEntity(id: $id, referenceNo: $referenceNo, transactionDate: $transactionDate, description: $description, totalAmount: $totalAmount, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DisbursementJournalEntityCopyWith<$Res> implements $DisbursementJournalEntityCopyWith<$Res> {
  factory _$DisbursementJournalEntityCopyWith(_DisbursementJournalEntity value, $Res Function(_DisbursementJournalEntity) _then) = __$DisbursementJournalEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? referenceNo, String? transactionDate, String? description, int? totalAmount, String? status
});




}
/// @nodoc
class __$DisbursementJournalEntityCopyWithImpl<$Res>
    implements _$DisbursementJournalEntityCopyWith<$Res> {
  __$DisbursementJournalEntityCopyWithImpl(this._self, this._then);

  final _DisbursementJournalEntity _self;
  final $Res Function(_DisbursementJournalEntity) _then;

/// Create a copy of DisbursementJournalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? referenceNo = freezed,Object? transactionDate = freezed,Object? description = freezed,Object? totalAmount = freezed,Object? status = freezed,}) {
  return _then(_DisbursementJournalEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,referenceNo: freezed == referenceNo ? _self.referenceNo : referenceNo // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
