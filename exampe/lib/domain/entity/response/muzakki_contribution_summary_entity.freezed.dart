// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muzakki_contribution_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuzakkiContributionSummaryEntity {

 int? get muzakkiId; int? get totalZakat; int? get totalDonasi; int? get bszCountThisYear; String? get lastTransactionDate;
/// Create a copy of MuzakkiContributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuzakkiContributionSummaryEntityCopyWith<MuzakkiContributionSummaryEntity> get copyWith => _$MuzakkiContributionSummaryEntityCopyWithImpl<MuzakkiContributionSummaryEntity>(this as MuzakkiContributionSummaryEntity, _$identity);

  /// Serializes this MuzakkiContributionSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuzakkiContributionSummaryEntity&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.totalZakat, totalZakat) || other.totalZakat == totalZakat)&&(identical(other.totalDonasi, totalDonasi) || other.totalDonasi == totalDonasi)&&(identical(other.bszCountThisYear, bszCountThisYear) || other.bszCountThisYear == bszCountThisYear)&&(identical(other.lastTransactionDate, lastTransactionDate) || other.lastTransactionDate == lastTransactionDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muzakkiId,totalZakat,totalDonasi,bszCountThisYear,lastTransactionDate);

@override
String toString() {
  return 'MuzakkiContributionSummaryEntity(muzakkiId: $muzakkiId, totalZakat: $totalZakat, totalDonasi: $totalDonasi, bszCountThisYear: $bszCountThisYear, lastTransactionDate: $lastTransactionDate)';
}


}

/// @nodoc
abstract mixin class $MuzakkiContributionSummaryEntityCopyWith<$Res>  {
  factory $MuzakkiContributionSummaryEntityCopyWith(MuzakkiContributionSummaryEntity value, $Res Function(MuzakkiContributionSummaryEntity) _then) = _$MuzakkiContributionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int? muzakkiId, int? totalZakat, int? totalDonasi, int? bszCountThisYear, String? lastTransactionDate
});




}
/// @nodoc
class _$MuzakkiContributionSummaryEntityCopyWithImpl<$Res>
    implements $MuzakkiContributionSummaryEntityCopyWith<$Res> {
  _$MuzakkiContributionSummaryEntityCopyWithImpl(this._self, this._then);

  final MuzakkiContributionSummaryEntity _self;
  final $Res Function(MuzakkiContributionSummaryEntity) _then;

/// Create a copy of MuzakkiContributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? muzakkiId = freezed,Object? totalZakat = freezed,Object? totalDonasi = freezed,Object? bszCountThisYear = freezed,Object? lastTransactionDate = freezed,}) {
  return _then(_self.copyWith(
muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,totalZakat: freezed == totalZakat ? _self.totalZakat : totalZakat // ignore: cast_nullable_to_non_nullable
as int?,totalDonasi: freezed == totalDonasi ? _self.totalDonasi : totalDonasi // ignore: cast_nullable_to_non_nullable
as int?,bszCountThisYear: freezed == bszCountThisYear ? _self.bszCountThisYear : bszCountThisYear // ignore: cast_nullable_to_non_nullable
as int?,lastTransactionDate: freezed == lastTransactionDate ? _self.lastTransactionDate : lastTransactionDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuzakkiContributionSummaryEntity].
extension MuzakkiContributionSummaryEntityPatterns on MuzakkiContributionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuzakkiContributionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuzakkiContributionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuzakkiContributionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? muzakkiId,  int? totalZakat,  int? totalDonasi,  int? bszCountThisYear,  String? lastTransactionDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity() when $default != null:
return $default(_that.muzakkiId,_that.totalZakat,_that.totalDonasi,_that.bszCountThisYear,_that.lastTransactionDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? muzakkiId,  int? totalZakat,  int? totalDonasi,  int? bszCountThisYear,  String? lastTransactionDate)  $default,) {final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity():
return $default(_that.muzakkiId,_that.totalZakat,_that.totalDonasi,_that.bszCountThisYear,_that.lastTransactionDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? muzakkiId,  int? totalZakat,  int? totalDonasi,  int? bszCountThisYear,  String? lastTransactionDate)?  $default,) {final _that = this;
switch (_that) {
case _MuzakkiContributionSummaryEntity() when $default != null:
return $default(_that.muzakkiId,_that.totalZakat,_that.totalDonasi,_that.bszCountThisYear,_that.lastTransactionDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuzakkiContributionSummaryEntity implements MuzakkiContributionSummaryEntity {
  const _MuzakkiContributionSummaryEntity({this.muzakkiId, this.totalZakat, this.totalDonasi, this.bszCountThisYear, this.lastTransactionDate});
  factory _MuzakkiContributionSummaryEntity.fromJson(Map<String, dynamic> json) => _$MuzakkiContributionSummaryEntityFromJson(json);

@override final  int? muzakkiId;
@override final  int? totalZakat;
@override final  int? totalDonasi;
@override final  int? bszCountThisYear;
@override final  String? lastTransactionDate;

/// Create a copy of MuzakkiContributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuzakkiContributionSummaryEntityCopyWith<_MuzakkiContributionSummaryEntity> get copyWith => __$MuzakkiContributionSummaryEntityCopyWithImpl<_MuzakkiContributionSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuzakkiContributionSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuzakkiContributionSummaryEntity&&(identical(other.muzakkiId, muzakkiId) || other.muzakkiId == muzakkiId)&&(identical(other.totalZakat, totalZakat) || other.totalZakat == totalZakat)&&(identical(other.totalDonasi, totalDonasi) || other.totalDonasi == totalDonasi)&&(identical(other.bszCountThisYear, bszCountThisYear) || other.bszCountThisYear == bszCountThisYear)&&(identical(other.lastTransactionDate, lastTransactionDate) || other.lastTransactionDate == lastTransactionDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muzakkiId,totalZakat,totalDonasi,bszCountThisYear,lastTransactionDate);

@override
String toString() {
  return 'MuzakkiContributionSummaryEntity(muzakkiId: $muzakkiId, totalZakat: $totalZakat, totalDonasi: $totalDonasi, bszCountThisYear: $bszCountThisYear, lastTransactionDate: $lastTransactionDate)';
}


}

/// @nodoc
abstract mixin class _$MuzakkiContributionSummaryEntityCopyWith<$Res> implements $MuzakkiContributionSummaryEntityCopyWith<$Res> {
  factory _$MuzakkiContributionSummaryEntityCopyWith(_MuzakkiContributionSummaryEntity value, $Res Function(_MuzakkiContributionSummaryEntity) _then) = __$MuzakkiContributionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int? muzakkiId, int? totalZakat, int? totalDonasi, int? bszCountThisYear, String? lastTransactionDate
});




}
/// @nodoc
class __$MuzakkiContributionSummaryEntityCopyWithImpl<$Res>
    implements _$MuzakkiContributionSummaryEntityCopyWith<$Res> {
  __$MuzakkiContributionSummaryEntityCopyWithImpl(this._self, this._then);

  final _MuzakkiContributionSummaryEntity _self;
  final $Res Function(_MuzakkiContributionSummaryEntity) _then;

/// Create a copy of MuzakkiContributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? muzakkiId = freezed,Object? totalZakat = freezed,Object? totalDonasi = freezed,Object? bszCountThisYear = freezed,Object? lastTransactionDate = freezed,}) {
  return _then(_MuzakkiContributionSummaryEntity(
muzakkiId: freezed == muzakkiId ? _self.muzakkiId : muzakkiId // ignore: cast_nullable_to_non_nullable
as int?,totalZakat: freezed == totalZakat ? _self.totalZakat : totalZakat // ignore: cast_nullable_to_non_nullable
as int?,totalDonasi: freezed == totalDonasi ? _self.totalDonasi : totalDonasi // ignore: cast_nullable_to_non_nullable
as int?,bszCountThisYear: freezed == bszCountThisYear ? _self.bszCountThisYear : bszCountThisYear // ignore: cast_nullable_to_non_nullable
as int?,lastTransactionDate: freezed == lastTransactionDate ? _self.lastTransactionDate : lastTransactionDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
