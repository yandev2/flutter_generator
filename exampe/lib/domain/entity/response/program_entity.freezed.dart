// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProgramEntity {

 int? get id; int? get fundTypeId; String? get fundType; String? get name; String? get description; int? get targetAmount; double? get amilPercentageFee; bool? get isZakatFitrah; String? get startDate; String? get endDate; String? get bannerUrl; String? get thumbnailUrl; bool? get isActive; String? get createdAt; String? get updatedAt; List<String>? get lastDonaturAvatar; ProgramStatisticsEntity? get statistics; ProgramLastDonationEntity? get lastDonation; List<String>? get documentation; ProgramDistributionSummaryEntity? get distributionSummary;
/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgramEntityCopyWith<ProgramEntity> get copyWith => _$ProgramEntityCopyWithImpl<ProgramEntity>(this as ProgramEntity, _$identity);

  /// Serializes this ProgramEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgramEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amilPercentageFee, amilPercentageFee) || other.amilPercentageFee == amilPercentageFee)&&(identical(other.isZakatFitrah, isZakatFitrah) || other.isZakatFitrah == isZakatFitrah)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.lastDonaturAvatar, lastDonaturAvatar)&&(identical(other.statistics, statistics) || other.statistics == statistics)&&(identical(other.lastDonation, lastDonation) || other.lastDonation == lastDonation)&&const DeepCollectionEquality().equals(other.documentation, documentation)&&(identical(other.distributionSummary, distributionSummary) || other.distributionSummary == distributionSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fundTypeId,fundType,name,description,targetAmount,amilPercentageFee,isZakatFitrah,startDate,endDate,bannerUrl,thumbnailUrl,isActive,createdAt,updatedAt,const DeepCollectionEquality().hash(lastDonaturAvatar),statistics,lastDonation,const DeepCollectionEquality().hash(documentation),distributionSummary]);

@override
String toString() {
  return 'ProgramEntity(id: $id, fundTypeId: $fundTypeId, fundType: $fundType, name: $name, description: $description, targetAmount: $targetAmount, amilPercentageFee: $amilPercentageFee, isZakatFitrah: $isZakatFitrah, startDate: $startDate, endDate: $endDate, bannerUrl: $bannerUrl, thumbnailUrl: $thumbnailUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, lastDonaturAvatar: $lastDonaturAvatar, statistics: $statistics, lastDonation: $lastDonation, documentation: $documentation, distributionSummary: $distributionSummary)';
}


}

/// @nodoc
abstract mixin class $ProgramEntityCopyWith<$Res>  {
  factory $ProgramEntityCopyWith(ProgramEntity value, $Res Function(ProgramEntity) _then) = _$ProgramEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? fundTypeId, String? fundType, String? name, String? description, int? targetAmount, double? amilPercentageFee, bool? isZakatFitrah, String? startDate, String? endDate, String? bannerUrl, String? thumbnailUrl, bool? isActive, String? createdAt, String? updatedAt, List<String>? lastDonaturAvatar, ProgramStatisticsEntity? statistics, ProgramLastDonationEntity? lastDonation, List<String>? documentation, ProgramDistributionSummaryEntity? distributionSummary
});


$ProgramStatisticsEntityCopyWith<$Res>? get statistics;$ProgramLastDonationEntityCopyWith<$Res>? get lastDonation;$ProgramDistributionSummaryEntityCopyWith<$Res>? get distributionSummary;

}
/// @nodoc
class _$ProgramEntityCopyWithImpl<$Res>
    implements $ProgramEntityCopyWith<$Res> {
  _$ProgramEntityCopyWithImpl(this._self, this._then);

  final ProgramEntity _self;
  final $Res Function(ProgramEntity) _then;

/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fundTypeId = freezed,Object? fundType = freezed,Object? name = freezed,Object? description = freezed,Object? targetAmount = freezed,Object? amilPercentageFee = freezed,Object? isZakatFitrah = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? bannerUrl = freezed,Object? thumbnailUrl = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? lastDonaturAvatar = freezed,Object? statistics = freezed,Object? lastDonation = freezed,Object? documentation = freezed,Object? distributionSummary = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: freezed == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as int?,amilPercentageFee: freezed == amilPercentageFee ? _self.amilPercentageFee : amilPercentageFee // ignore: cast_nullable_to_non_nullable
as double?,isZakatFitrah: freezed == isZakatFitrah ? _self.isZakatFitrah : isZakatFitrah // ignore: cast_nullable_to_non_nullable
as bool?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,lastDonaturAvatar: freezed == lastDonaturAvatar ? _self.lastDonaturAvatar : lastDonaturAvatar // ignore: cast_nullable_to_non_nullable
as List<String>?,statistics: freezed == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as ProgramStatisticsEntity?,lastDonation: freezed == lastDonation ? _self.lastDonation : lastDonation // ignore: cast_nullable_to_non_nullable
as ProgramLastDonationEntity?,documentation: freezed == documentation ? _self.documentation : documentation // ignore: cast_nullable_to_non_nullable
as List<String>?,distributionSummary: freezed == distributionSummary ? _self.distributionSummary : distributionSummary // ignore: cast_nullable_to_non_nullable
as ProgramDistributionSummaryEntity?,
  ));
}
/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramStatisticsEntityCopyWith<$Res>? get statistics {
    if (_self.statistics == null) {
    return null;
  }

  return $ProgramStatisticsEntityCopyWith<$Res>(_self.statistics!, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramLastDonationEntityCopyWith<$Res>? get lastDonation {
    if (_self.lastDonation == null) {
    return null;
  }

  return $ProgramLastDonationEntityCopyWith<$Res>(_self.lastDonation!, (value) {
    return _then(_self.copyWith(lastDonation: value));
  });
}/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramDistributionSummaryEntityCopyWith<$Res>? get distributionSummary {
    if (_self.distributionSummary == null) {
    return null;
  }

  return $ProgramDistributionSummaryEntityCopyWith<$Res>(_self.distributionSummary!, (value) {
    return _then(_self.copyWith(distributionSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProgramEntity].
extension ProgramEntityPatterns on ProgramEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgramEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgramEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgramEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProgramEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgramEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProgramEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? fundTypeId,  String? fundType,  String? name,  String? description,  int? targetAmount,  double? amilPercentageFee,  bool? isZakatFitrah,  String? startDate,  String? endDate,  String? bannerUrl,  String? thumbnailUrl,  bool? isActive,  String? createdAt,  String? updatedAt,  List<String>? lastDonaturAvatar,  ProgramStatisticsEntity? statistics,  ProgramLastDonationEntity? lastDonation,  List<String>? documentation,  ProgramDistributionSummaryEntity? distributionSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgramEntity() when $default != null:
return $default(_that.id,_that.fundTypeId,_that.fundType,_that.name,_that.description,_that.targetAmount,_that.amilPercentageFee,_that.isZakatFitrah,_that.startDate,_that.endDate,_that.bannerUrl,_that.thumbnailUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.lastDonaturAvatar,_that.statistics,_that.lastDonation,_that.documentation,_that.distributionSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? fundTypeId,  String? fundType,  String? name,  String? description,  int? targetAmount,  double? amilPercentageFee,  bool? isZakatFitrah,  String? startDate,  String? endDate,  String? bannerUrl,  String? thumbnailUrl,  bool? isActive,  String? createdAt,  String? updatedAt,  List<String>? lastDonaturAvatar,  ProgramStatisticsEntity? statistics,  ProgramLastDonationEntity? lastDonation,  List<String>? documentation,  ProgramDistributionSummaryEntity? distributionSummary)  $default,) {final _that = this;
switch (_that) {
case _ProgramEntity():
return $default(_that.id,_that.fundTypeId,_that.fundType,_that.name,_that.description,_that.targetAmount,_that.amilPercentageFee,_that.isZakatFitrah,_that.startDate,_that.endDate,_that.bannerUrl,_that.thumbnailUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.lastDonaturAvatar,_that.statistics,_that.lastDonation,_that.documentation,_that.distributionSummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? fundTypeId,  String? fundType,  String? name,  String? description,  int? targetAmount,  double? amilPercentageFee,  bool? isZakatFitrah,  String? startDate,  String? endDate,  String? bannerUrl,  String? thumbnailUrl,  bool? isActive,  String? createdAt,  String? updatedAt,  List<String>? lastDonaturAvatar,  ProgramStatisticsEntity? statistics,  ProgramLastDonationEntity? lastDonation,  List<String>? documentation,  ProgramDistributionSummaryEntity? distributionSummary)?  $default,) {final _that = this;
switch (_that) {
case _ProgramEntity() when $default != null:
return $default(_that.id,_that.fundTypeId,_that.fundType,_that.name,_that.description,_that.targetAmount,_that.amilPercentageFee,_that.isZakatFitrah,_that.startDate,_that.endDate,_that.bannerUrl,_that.thumbnailUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.lastDonaturAvatar,_that.statistics,_that.lastDonation,_that.documentation,_that.distributionSummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgramEntity implements ProgramEntity {
  const _ProgramEntity({this.id, this.fundTypeId, this.fundType, this.name, this.description, this.targetAmount, this.amilPercentageFee, this.isZakatFitrah, this.startDate, this.endDate, this.bannerUrl, this.thumbnailUrl, this.isActive, this.createdAt, this.updatedAt, final  List<String>? lastDonaturAvatar, this.statistics, this.lastDonation, final  List<String>? documentation, this.distributionSummary}): _lastDonaturAvatar = lastDonaturAvatar,_documentation = documentation;
  factory _ProgramEntity.fromJson(Map<String, dynamic> json) => _$ProgramEntityFromJson(json);

@override final  int? id;
@override final  int? fundTypeId;
@override final  String? fundType;
@override final  String? name;
@override final  String? description;
@override final  int? targetAmount;
@override final  double? amilPercentageFee;
@override final  bool? isZakatFitrah;
@override final  String? startDate;
@override final  String? endDate;
@override final  String? bannerUrl;
@override final  String? thumbnailUrl;
@override final  bool? isActive;
@override final  String? createdAt;
@override final  String? updatedAt;
 final  List<String>? _lastDonaturAvatar;
@override List<String>? get lastDonaturAvatar {
  final value = _lastDonaturAvatar;
  if (value == null) return null;
  if (_lastDonaturAvatar is EqualUnmodifiableListView) return _lastDonaturAvatar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ProgramStatisticsEntity? statistics;
@override final  ProgramLastDonationEntity? lastDonation;
 final  List<String>? _documentation;
@override List<String>? get documentation {
  final value = _documentation;
  if (value == null) return null;
  if (_documentation is EqualUnmodifiableListView) return _documentation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ProgramDistributionSummaryEntity? distributionSummary;

/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgramEntityCopyWith<_ProgramEntity> get copyWith => __$ProgramEntityCopyWithImpl<_ProgramEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgramEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgramEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.fundType, fundType) || other.fundType == fundType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amilPercentageFee, amilPercentageFee) || other.amilPercentageFee == amilPercentageFee)&&(identical(other.isZakatFitrah, isZakatFitrah) || other.isZakatFitrah == isZakatFitrah)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._lastDonaturAvatar, _lastDonaturAvatar)&&(identical(other.statistics, statistics) || other.statistics == statistics)&&(identical(other.lastDonation, lastDonation) || other.lastDonation == lastDonation)&&const DeepCollectionEquality().equals(other._documentation, _documentation)&&(identical(other.distributionSummary, distributionSummary) || other.distributionSummary == distributionSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fundTypeId,fundType,name,description,targetAmount,amilPercentageFee,isZakatFitrah,startDate,endDate,bannerUrl,thumbnailUrl,isActive,createdAt,updatedAt,const DeepCollectionEquality().hash(_lastDonaturAvatar),statistics,lastDonation,const DeepCollectionEquality().hash(_documentation),distributionSummary]);

@override
String toString() {
  return 'ProgramEntity(id: $id, fundTypeId: $fundTypeId, fundType: $fundType, name: $name, description: $description, targetAmount: $targetAmount, amilPercentageFee: $amilPercentageFee, isZakatFitrah: $isZakatFitrah, startDate: $startDate, endDate: $endDate, bannerUrl: $bannerUrl, thumbnailUrl: $thumbnailUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, lastDonaturAvatar: $lastDonaturAvatar, statistics: $statistics, lastDonation: $lastDonation, documentation: $documentation, distributionSummary: $distributionSummary)';
}


}

/// @nodoc
abstract mixin class _$ProgramEntityCopyWith<$Res> implements $ProgramEntityCopyWith<$Res> {
  factory _$ProgramEntityCopyWith(_ProgramEntity value, $Res Function(_ProgramEntity) _then) = __$ProgramEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? fundTypeId, String? fundType, String? name, String? description, int? targetAmount, double? amilPercentageFee, bool? isZakatFitrah, String? startDate, String? endDate, String? bannerUrl, String? thumbnailUrl, bool? isActive, String? createdAt, String? updatedAt, List<String>? lastDonaturAvatar, ProgramStatisticsEntity? statistics, ProgramLastDonationEntity? lastDonation, List<String>? documentation, ProgramDistributionSummaryEntity? distributionSummary
});


@override $ProgramStatisticsEntityCopyWith<$Res>? get statistics;@override $ProgramLastDonationEntityCopyWith<$Res>? get lastDonation;@override $ProgramDistributionSummaryEntityCopyWith<$Res>? get distributionSummary;

}
/// @nodoc
class __$ProgramEntityCopyWithImpl<$Res>
    implements _$ProgramEntityCopyWith<$Res> {
  __$ProgramEntityCopyWithImpl(this._self, this._then);

  final _ProgramEntity _self;
  final $Res Function(_ProgramEntity) _then;

/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fundTypeId = freezed,Object? fundType = freezed,Object? name = freezed,Object? description = freezed,Object? targetAmount = freezed,Object? amilPercentageFee = freezed,Object? isZakatFitrah = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? bannerUrl = freezed,Object? thumbnailUrl = freezed,Object? isActive = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? lastDonaturAvatar = freezed,Object? statistics = freezed,Object? lastDonation = freezed,Object? documentation = freezed,Object? distributionSummary = freezed,}) {
  return _then(_ProgramEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,fundType: freezed == fundType ? _self.fundType : fundType // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: freezed == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as int?,amilPercentageFee: freezed == amilPercentageFee ? _self.amilPercentageFee : amilPercentageFee // ignore: cast_nullable_to_non_nullable
as double?,isZakatFitrah: freezed == isZakatFitrah ? _self.isZakatFitrah : isZakatFitrah // ignore: cast_nullable_to_non_nullable
as bool?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,lastDonaturAvatar: freezed == lastDonaturAvatar ? _self._lastDonaturAvatar : lastDonaturAvatar // ignore: cast_nullable_to_non_nullable
as List<String>?,statistics: freezed == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as ProgramStatisticsEntity?,lastDonation: freezed == lastDonation ? _self.lastDonation : lastDonation // ignore: cast_nullable_to_non_nullable
as ProgramLastDonationEntity?,documentation: freezed == documentation ? _self._documentation : documentation // ignore: cast_nullable_to_non_nullable
as List<String>?,distributionSummary: freezed == distributionSummary ? _self.distributionSummary : distributionSummary // ignore: cast_nullable_to_non_nullable
as ProgramDistributionSummaryEntity?,
  ));
}

/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramStatisticsEntityCopyWith<$Res>? get statistics {
    if (_self.statistics == null) {
    return null;
  }

  return $ProgramStatisticsEntityCopyWith<$Res>(_self.statistics!, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramLastDonationEntityCopyWith<$Res>? get lastDonation {
    if (_self.lastDonation == null) {
    return null;
  }

  return $ProgramLastDonationEntityCopyWith<$Res>(_self.lastDonation!, (value) {
    return _then(_self.copyWith(lastDonation: value));
  });
}/// Create a copy of ProgramEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProgramDistributionSummaryEntityCopyWith<$Res>? get distributionSummary {
    if (_self.distributionSummary == null) {
    return null;
  }

  return $ProgramDistributionSummaryEntityCopyWith<$Res>(_self.distributionSummary!, (value) {
    return _then(_self.copyWith(distributionSummary: value));
  });
}
}


/// @nodoc
mixin _$ProgramStatisticsEntity {

 int? get donaturCount; int? get fundsCollected; double? get percentTarget;
/// Create a copy of ProgramStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgramStatisticsEntityCopyWith<ProgramStatisticsEntity> get copyWith => _$ProgramStatisticsEntityCopyWithImpl<ProgramStatisticsEntity>(this as ProgramStatisticsEntity, _$identity);

  /// Serializes this ProgramStatisticsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgramStatisticsEntity&&(identical(other.donaturCount, donaturCount) || other.donaturCount == donaturCount)&&(identical(other.fundsCollected, fundsCollected) || other.fundsCollected == fundsCollected)&&(identical(other.percentTarget, percentTarget) || other.percentTarget == percentTarget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,donaturCount,fundsCollected,percentTarget);

@override
String toString() {
  return 'ProgramStatisticsEntity(donaturCount: $donaturCount, fundsCollected: $fundsCollected, percentTarget: $percentTarget)';
}


}

/// @nodoc
abstract mixin class $ProgramStatisticsEntityCopyWith<$Res>  {
  factory $ProgramStatisticsEntityCopyWith(ProgramStatisticsEntity value, $Res Function(ProgramStatisticsEntity) _then) = _$ProgramStatisticsEntityCopyWithImpl;
@useResult
$Res call({
 int? donaturCount, int? fundsCollected, double? percentTarget
});




}
/// @nodoc
class _$ProgramStatisticsEntityCopyWithImpl<$Res>
    implements $ProgramStatisticsEntityCopyWith<$Res> {
  _$ProgramStatisticsEntityCopyWithImpl(this._self, this._then);

  final ProgramStatisticsEntity _self;
  final $Res Function(ProgramStatisticsEntity) _then;

/// Create a copy of ProgramStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? donaturCount = freezed,Object? fundsCollected = freezed,Object? percentTarget = freezed,}) {
  return _then(_self.copyWith(
donaturCount: freezed == donaturCount ? _self.donaturCount : donaturCount // ignore: cast_nullable_to_non_nullable
as int?,fundsCollected: freezed == fundsCollected ? _self.fundsCollected : fundsCollected // ignore: cast_nullable_to_non_nullable
as int?,percentTarget: freezed == percentTarget ? _self.percentTarget : percentTarget // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgramStatisticsEntity].
extension ProgramStatisticsEntityPatterns on ProgramStatisticsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgramStatisticsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgramStatisticsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgramStatisticsEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProgramStatisticsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgramStatisticsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProgramStatisticsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? donaturCount,  int? fundsCollected,  double? percentTarget)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgramStatisticsEntity() when $default != null:
return $default(_that.donaturCount,_that.fundsCollected,_that.percentTarget);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? donaturCount,  int? fundsCollected,  double? percentTarget)  $default,) {final _that = this;
switch (_that) {
case _ProgramStatisticsEntity():
return $default(_that.donaturCount,_that.fundsCollected,_that.percentTarget);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? donaturCount,  int? fundsCollected,  double? percentTarget)?  $default,) {final _that = this;
switch (_that) {
case _ProgramStatisticsEntity() when $default != null:
return $default(_that.donaturCount,_that.fundsCollected,_that.percentTarget);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgramStatisticsEntity implements ProgramStatisticsEntity {
  const _ProgramStatisticsEntity({this.donaturCount, this.fundsCollected, this.percentTarget});
  factory _ProgramStatisticsEntity.fromJson(Map<String, dynamic> json) => _$ProgramStatisticsEntityFromJson(json);

@override final  int? donaturCount;
@override final  int? fundsCollected;
@override final  double? percentTarget;

/// Create a copy of ProgramStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgramStatisticsEntityCopyWith<_ProgramStatisticsEntity> get copyWith => __$ProgramStatisticsEntityCopyWithImpl<_ProgramStatisticsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgramStatisticsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgramStatisticsEntity&&(identical(other.donaturCount, donaturCount) || other.donaturCount == donaturCount)&&(identical(other.fundsCollected, fundsCollected) || other.fundsCollected == fundsCollected)&&(identical(other.percentTarget, percentTarget) || other.percentTarget == percentTarget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,donaturCount,fundsCollected,percentTarget);

@override
String toString() {
  return 'ProgramStatisticsEntity(donaturCount: $donaturCount, fundsCollected: $fundsCollected, percentTarget: $percentTarget)';
}


}

/// @nodoc
abstract mixin class _$ProgramStatisticsEntityCopyWith<$Res> implements $ProgramStatisticsEntityCopyWith<$Res> {
  factory _$ProgramStatisticsEntityCopyWith(_ProgramStatisticsEntity value, $Res Function(_ProgramStatisticsEntity) _then) = __$ProgramStatisticsEntityCopyWithImpl;
@override @useResult
$Res call({
 int? donaturCount, int? fundsCollected, double? percentTarget
});




}
/// @nodoc
class __$ProgramStatisticsEntityCopyWithImpl<$Res>
    implements _$ProgramStatisticsEntityCopyWith<$Res> {
  __$ProgramStatisticsEntityCopyWithImpl(this._self, this._then);

  final _ProgramStatisticsEntity _self;
  final $Res Function(_ProgramStatisticsEntity) _then;

/// Create a copy of ProgramStatisticsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? donaturCount = freezed,Object? fundsCollected = freezed,Object? percentTarget = freezed,}) {
  return _then(_ProgramStatisticsEntity(
donaturCount: freezed == donaturCount ? _self.donaturCount : donaturCount // ignore: cast_nullable_to_non_nullable
as int?,fundsCollected: freezed == fundsCollected ? _self.fundsCollected : fundsCollected // ignore: cast_nullable_to_non_nullable
as int?,percentTarget: freezed == percentTarget ? _self.percentTarget : percentTarget // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ProgramLastDonationEntity {

 int? get amount; String? get time;
/// Create a copy of ProgramLastDonationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgramLastDonationEntityCopyWith<ProgramLastDonationEntity> get copyWith => _$ProgramLastDonationEntityCopyWithImpl<ProgramLastDonationEntity>(this as ProgramLastDonationEntity, _$identity);

  /// Serializes this ProgramLastDonationEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgramLastDonationEntity&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,time);

@override
String toString() {
  return 'ProgramLastDonationEntity(amount: $amount, time: $time)';
}


}

/// @nodoc
abstract mixin class $ProgramLastDonationEntityCopyWith<$Res>  {
  factory $ProgramLastDonationEntityCopyWith(ProgramLastDonationEntity value, $Res Function(ProgramLastDonationEntity) _then) = _$ProgramLastDonationEntityCopyWithImpl;
@useResult
$Res call({
 int? amount, String? time
});




}
/// @nodoc
class _$ProgramLastDonationEntityCopyWithImpl<$Res>
    implements $ProgramLastDonationEntityCopyWith<$Res> {
  _$ProgramLastDonationEntityCopyWithImpl(this._self, this._then);

  final ProgramLastDonationEntity _self;
  final $Res Function(ProgramLastDonationEntity) _then;

/// Create a copy of ProgramLastDonationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? time = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgramLastDonationEntity].
extension ProgramLastDonationEntityPatterns on ProgramLastDonationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgramLastDonationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgramLastDonationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgramLastDonationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProgramLastDonationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgramLastDonationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProgramLastDonationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? amount,  String? time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgramLastDonationEntity() when $default != null:
return $default(_that.amount,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? amount,  String? time)  $default,) {final _that = this;
switch (_that) {
case _ProgramLastDonationEntity():
return $default(_that.amount,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? amount,  String? time)?  $default,) {final _that = this;
switch (_that) {
case _ProgramLastDonationEntity() when $default != null:
return $default(_that.amount,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgramLastDonationEntity implements ProgramLastDonationEntity {
  const _ProgramLastDonationEntity({this.amount, this.time});
  factory _ProgramLastDonationEntity.fromJson(Map<String, dynamic> json) => _$ProgramLastDonationEntityFromJson(json);

@override final  int? amount;
@override final  String? time;

/// Create a copy of ProgramLastDonationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgramLastDonationEntityCopyWith<_ProgramLastDonationEntity> get copyWith => __$ProgramLastDonationEntityCopyWithImpl<_ProgramLastDonationEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgramLastDonationEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgramLastDonationEntity&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,time);

@override
String toString() {
  return 'ProgramLastDonationEntity(amount: $amount, time: $time)';
}


}

/// @nodoc
abstract mixin class _$ProgramLastDonationEntityCopyWith<$Res> implements $ProgramLastDonationEntityCopyWith<$Res> {
  factory _$ProgramLastDonationEntityCopyWith(_ProgramLastDonationEntity value, $Res Function(_ProgramLastDonationEntity) _then) = __$ProgramLastDonationEntityCopyWithImpl;
@override @useResult
$Res call({
 int? amount, String? time
});




}
/// @nodoc
class __$ProgramLastDonationEntityCopyWithImpl<$Res>
    implements _$ProgramLastDonationEntityCopyWith<$Res> {
  __$ProgramLastDonationEntityCopyWithImpl(this._self, this._then);

  final _ProgramLastDonationEntity _self;
  final $Res Function(_ProgramLastDonationEntity) _then;

/// Create a copy of ProgramLastDonationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? time = freezed,}) {
  return _then(_ProgramLastDonationEntity(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProgramDistributionSummaryEntity {

 int? get distributed; double? get totalDistributedPercent; int? get remainingFunds; double? get totalRemainingPercent; String? get lastUpdated;
/// Create a copy of ProgramDistributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgramDistributionSummaryEntityCopyWith<ProgramDistributionSummaryEntity> get copyWith => _$ProgramDistributionSummaryEntityCopyWithImpl<ProgramDistributionSummaryEntity>(this as ProgramDistributionSummaryEntity, _$identity);

  /// Serializes this ProgramDistributionSummaryEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgramDistributionSummaryEntity&&(identical(other.distributed, distributed) || other.distributed == distributed)&&(identical(other.totalDistributedPercent, totalDistributedPercent) || other.totalDistributedPercent == totalDistributedPercent)&&(identical(other.remainingFunds, remainingFunds) || other.remainingFunds == remainingFunds)&&(identical(other.totalRemainingPercent, totalRemainingPercent) || other.totalRemainingPercent == totalRemainingPercent)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distributed,totalDistributedPercent,remainingFunds,totalRemainingPercent,lastUpdated);

@override
String toString() {
  return 'ProgramDistributionSummaryEntity(distributed: $distributed, totalDistributedPercent: $totalDistributedPercent, remainingFunds: $remainingFunds, totalRemainingPercent: $totalRemainingPercent, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $ProgramDistributionSummaryEntityCopyWith<$Res>  {
  factory $ProgramDistributionSummaryEntityCopyWith(ProgramDistributionSummaryEntity value, $Res Function(ProgramDistributionSummaryEntity) _then) = _$ProgramDistributionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int? distributed, double? totalDistributedPercent, int? remainingFunds, double? totalRemainingPercent, String? lastUpdated
});




}
/// @nodoc
class _$ProgramDistributionSummaryEntityCopyWithImpl<$Res>
    implements $ProgramDistributionSummaryEntityCopyWith<$Res> {
  _$ProgramDistributionSummaryEntityCopyWithImpl(this._self, this._then);

  final ProgramDistributionSummaryEntity _self;
  final $Res Function(ProgramDistributionSummaryEntity) _then;

/// Create a copy of ProgramDistributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? distributed = freezed,Object? totalDistributedPercent = freezed,Object? remainingFunds = freezed,Object? totalRemainingPercent = freezed,Object? lastUpdated = freezed,}) {
  return _then(_self.copyWith(
distributed: freezed == distributed ? _self.distributed : distributed // ignore: cast_nullable_to_non_nullable
as int?,totalDistributedPercent: freezed == totalDistributedPercent ? _self.totalDistributedPercent : totalDistributedPercent // ignore: cast_nullable_to_non_nullable
as double?,remainingFunds: freezed == remainingFunds ? _self.remainingFunds : remainingFunds // ignore: cast_nullable_to_non_nullable
as int?,totalRemainingPercent: freezed == totalRemainingPercent ? _self.totalRemainingPercent : totalRemainingPercent // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgramDistributionSummaryEntity].
extension ProgramDistributionSummaryEntityPatterns on ProgramDistributionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgramDistributionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgramDistributionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgramDistributionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? distributed,  double? totalDistributedPercent,  int? remainingFunds,  double? totalRemainingPercent,  String? lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity() when $default != null:
return $default(_that.distributed,_that.totalDistributedPercent,_that.remainingFunds,_that.totalRemainingPercent,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? distributed,  double? totalDistributedPercent,  int? remainingFunds,  double? totalRemainingPercent,  String? lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity():
return $default(_that.distributed,_that.totalDistributedPercent,_that.remainingFunds,_that.totalRemainingPercent,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? distributed,  double? totalDistributedPercent,  int? remainingFunds,  double? totalRemainingPercent,  String? lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _ProgramDistributionSummaryEntity() when $default != null:
return $default(_that.distributed,_that.totalDistributedPercent,_that.remainingFunds,_that.totalRemainingPercent,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgramDistributionSummaryEntity implements ProgramDistributionSummaryEntity {
  const _ProgramDistributionSummaryEntity({this.distributed, this.totalDistributedPercent, this.remainingFunds, this.totalRemainingPercent, this.lastUpdated});
  factory _ProgramDistributionSummaryEntity.fromJson(Map<String, dynamic> json) => _$ProgramDistributionSummaryEntityFromJson(json);

@override final  int? distributed;
@override final  double? totalDistributedPercent;
@override final  int? remainingFunds;
@override final  double? totalRemainingPercent;
@override final  String? lastUpdated;

/// Create a copy of ProgramDistributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgramDistributionSummaryEntityCopyWith<_ProgramDistributionSummaryEntity> get copyWith => __$ProgramDistributionSummaryEntityCopyWithImpl<_ProgramDistributionSummaryEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgramDistributionSummaryEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgramDistributionSummaryEntity&&(identical(other.distributed, distributed) || other.distributed == distributed)&&(identical(other.totalDistributedPercent, totalDistributedPercent) || other.totalDistributedPercent == totalDistributedPercent)&&(identical(other.remainingFunds, remainingFunds) || other.remainingFunds == remainingFunds)&&(identical(other.totalRemainingPercent, totalRemainingPercent) || other.totalRemainingPercent == totalRemainingPercent)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,distributed,totalDistributedPercent,remainingFunds,totalRemainingPercent,lastUpdated);

@override
String toString() {
  return 'ProgramDistributionSummaryEntity(distributed: $distributed, totalDistributedPercent: $totalDistributedPercent, remainingFunds: $remainingFunds, totalRemainingPercent: $totalRemainingPercent, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$ProgramDistributionSummaryEntityCopyWith<$Res> implements $ProgramDistributionSummaryEntityCopyWith<$Res> {
  factory _$ProgramDistributionSummaryEntityCopyWith(_ProgramDistributionSummaryEntity value, $Res Function(_ProgramDistributionSummaryEntity) _then) = __$ProgramDistributionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int? distributed, double? totalDistributedPercent, int? remainingFunds, double? totalRemainingPercent, String? lastUpdated
});




}
/// @nodoc
class __$ProgramDistributionSummaryEntityCopyWithImpl<$Res>
    implements _$ProgramDistributionSummaryEntityCopyWith<$Res> {
  __$ProgramDistributionSummaryEntityCopyWithImpl(this._self, this._then);

  final _ProgramDistributionSummaryEntity _self;
  final $Res Function(_ProgramDistributionSummaryEntity) _then;

/// Create a copy of ProgramDistributionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? distributed = freezed,Object? totalDistributedPercent = freezed,Object? remainingFunds = freezed,Object? totalRemainingPercent = freezed,Object? lastUpdated = freezed,}) {
  return _then(_ProgramDistributionSummaryEntity(
distributed: freezed == distributed ? _self.distributed : distributed // ignore: cast_nullable_to_non_nullable
as int?,totalDistributedPercent: freezed == totalDistributedPercent ? _self.totalDistributedPercent : totalDistributedPercent // ignore: cast_nullable_to_non_nullable
as double?,remainingFunds: freezed == remainingFunds ? _self.remainingFunds : remainingFunds // ignore: cast_nullable_to_non_nullable
as int?,totalRemainingPercent: freezed == totalRemainingPercent ? _self.totalRemainingPercent : totalRemainingPercent // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
