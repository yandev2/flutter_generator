// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_task_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurveyTaskDetailEntity {

 int? get surveyId; int? get mustahikId; String? get status; MustahikEntity? get mustahikData; SurveyTaskDetailSurveyDataEntity? get surveyData; List<SurveyHousePhotoEntity>? get housePhotos; List<FamilyMemberEntity>? get familyMembers;
/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyTaskDetailEntityCopyWith<SurveyTaskDetailEntity> get copyWith => _$SurveyTaskDetailEntityCopyWithImpl<SurveyTaskDetailEntity>(this as SurveyTaskDetailEntity, _$identity);

  /// Serializes this SurveyTaskDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyTaskDetailEntity&&(identical(other.surveyId, surveyId) || other.surveyId == surveyId)&&(identical(other.mustahikId, mustahikId) || other.mustahikId == mustahikId)&&(identical(other.status, status) || other.status == status)&&(identical(other.mustahikData, mustahikData) || other.mustahikData == mustahikData)&&(identical(other.surveyData, surveyData) || other.surveyData == surveyData)&&const DeepCollectionEquality().equals(other.housePhotos, housePhotos)&&const DeepCollectionEquality().equals(other.familyMembers, familyMembers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surveyId,mustahikId,status,mustahikData,surveyData,const DeepCollectionEquality().hash(housePhotos),const DeepCollectionEquality().hash(familyMembers));

@override
String toString() {
  return 'SurveyTaskDetailEntity(surveyId: $surveyId, mustahikId: $mustahikId, status: $status, mustahikData: $mustahikData, surveyData: $surveyData, housePhotos: $housePhotos, familyMembers: $familyMembers)';
}


}

/// @nodoc
abstract mixin class $SurveyTaskDetailEntityCopyWith<$Res>  {
  factory $SurveyTaskDetailEntityCopyWith(SurveyTaskDetailEntity value, $Res Function(SurveyTaskDetailEntity) _then) = _$SurveyTaskDetailEntityCopyWithImpl;
@useResult
$Res call({
 int? surveyId, int? mustahikId, String? status, MustahikEntity? mustahikData, SurveyTaskDetailSurveyDataEntity? surveyData, List<SurveyHousePhotoEntity>? housePhotos, List<FamilyMemberEntity>? familyMembers
});


$MustahikEntityCopyWith<$Res>? get mustahikData;$SurveyTaskDetailSurveyDataEntityCopyWith<$Res>? get surveyData;

}
/// @nodoc
class _$SurveyTaskDetailEntityCopyWithImpl<$Res>
    implements $SurveyTaskDetailEntityCopyWith<$Res> {
  _$SurveyTaskDetailEntityCopyWithImpl(this._self, this._then);

  final SurveyTaskDetailEntity _self;
  final $Res Function(SurveyTaskDetailEntity) _then;

/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surveyId = freezed,Object? mustahikId = freezed,Object? status = freezed,Object? mustahikData = freezed,Object? surveyData = freezed,Object? housePhotos = freezed,Object? familyMembers = freezed,}) {
  return _then(_self.copyWith(
surveyId: freezed == surveyId ? _self.surveyId : surveyId // ignore: cast_nullable_to_non_nullable
as int?,mustahikId: freezed == mustahikId ? _self.mustahikId : mustahikId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mustahikData: freezed == mustahikData ? _self.mustahikData : mustahikData // ignore: cast_nullable_to_non_nullable
as MustahikEntity?,surveyData: freezed == surveyData ? _self.surveyData : surveyData // ignore: cast_nullable_to_non_nullable
as SurveyTaskDetailSurveyDataEntity?,housePhotos: freezed == housePhotos ? _self.housePhotos : housePhotos // ignore: cast_nullable_to_non_nullable
as List<SurveyHousePhotoEntity>?,familyMembers: freezed == familyMembers ? _self.familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberEntity>?,
  ));
}
/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MustahikEntityCopyWith<$Res>? get mustahikData {
    if (_self.mustahikData == null) {
    return null;
  }

  return $MustahikEntityCopyWith<$Res>(_self.mustahikData!, (value) {
    return _then(_self.copyWith(mustahikData: value));
  });
}/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyTaskDetailSurveyDataEntityCopyWith<$Res>? get surveyData {
    if (_self.surveyData == null) {
    return null;
  }

  return $SurveyTaskDetailSurveyDataEntityCopyWith<$Res>(_self.surveyData!, (value) {
    return _then(_self.copyWith(surveyData: value));
  });
}
}


/// Adds pattern-matching-related methods to [SurveyTaskDetailEntity].
extension SurveyTaskDetailEntityPatterns on SurveyTaskDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyTaskDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyTaskDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyTaskDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyTaskDetailSurveyDataEntity? surveyData,  List<SurveyHousePhotoEntity>? housePhotos,  List<FamilyMemberEntity>? familyMembers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity() when $default != null:
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.housePhotos,_that.familyMembers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyTaskDetailSurveyDataEntity? surveyData,  List<SurveyHousePhotoEntity>? housePhotos,  List<FamilyMemberEntity>? familyMembers)  $default,) {final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity():
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.housePhotos,_that.familyMembers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyTaskDetailSurveyDataEntity? surveyData,  List<SurveyHousePhotoEntity>? housePhotos,  List<FamilyMemberEntity>? familyMembers)?  $default,) {final _that = this;
switch (_that) {
case _SurveyTaskDetailEntity() when $default != null:
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.housePhotos,_that.familyMembers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurveyTaskDetailEntity implements SurveyTaskDetailEntity {
  const _SurveyTaskDetailEntity({this.surveyId, this.mustahikId, this.status, this.mustahikData, this.surveyData, final  List<SurveyHousePhotoEntity>? housePhotos, final  List<FamilyMemberEntity>? familyMembers}): _housePhotos = housePhotos,_familyMembers = familyMembers;
  factory _SurveyTaskDetailEntity.fromJson(Map<String, dynamic> json) => _$SurveyTaskDetailEntityFromJson(json);

@override final  int? surveyId;
@override final  int? mustahikId;
@override final  String? status;
@override final  MustahikEntity? mustahikData;
@override final  SurveyTaskDetailSurveyDataEntity? surveyData;
 final  List<SurveyHousePhotoEntity>? _housePhotos;
@override List<SurveyHousePhotoEntity>? get housePhotos {
  final value = _housePhotos;
  if (value == null) return null;
  if (_housePhotos is EqualUnmodifiableListView) return _housePhotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FamilyMemberEntity>? _familyMembers;
@override List<FamilyMemberEntity>? get familyMembers {
  final value = _familyMembers;
  if (value == null) return null;
  if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyTaskDetailEntityCopyWith<_SurveyTaskDetailEntity> get copyWith => __$SurveyTaskDetailEntityCopyWithImpl<_SurveyTaskDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyTaskDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyTaskDetailEntity&&(identical(other.surveyId, surveyId) || other.surveyId == surveyId)&&(identical(other.mustahikId, mustahikId) || other.mustahikId == mustahikId)&&(identical(other.status, status) || other.status == status)&&(identical(other.mustahikData, mustahikData) || other.mustahikData == mustahikData)&&(identical(other.surveyData, surveyData) || other.surveyData == surveyData)&&const DeepCollectionEquality().equals(other._housePhotos, _housePhotos)&&const DeepCollectionEquality().equals(other._familyMembers, _familyMembers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surveyId,mustahikId,status,mustahikData,surveyData,const DeepCollectionEquality().hash(_housePhotos),const DeepCollectionEquality().hash(_familyMembers));

@override
String toString() {
  return 'SurveyTaskDetailEntity(surveyId: $surveyId, mustahikId: $mustahikId, status: $status, mustahikData: $mustahikData, surveyData: $surveyData, housePhotos: $housePhotos, familyMembers: $familyMembers)';
}


}

/// @nodoc
abstract mixin class _$SurveyTaskDetailEntityCopyWith<$Res> implements $SurveyTaskDetailEntityCopyWith<$Res> {
  factory _$SurveyTaskDetailEntityCopyWith(_SurveyTaskDetailEntity value, $Res Function(_SurveyTaskDetailEntity) _then) = __$SurveyTaskDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int? surveyId, int? mustahikId, String? status, MustahikEntity? mustahikData, SurveyTaskDetailSurveyDataEntity? surveyData, List<SurveyHousePhotoEntity>? housePhotos, List<FamilyMemberEntity>? familyMembers
});


@override $MustahikEntityCopyWith<$Res>? get mustahikData;@override $SurveyTaskDetailSurveyDataEntityCopyWith<$Res>? get surveyData;

}
/// @nodoc
class __$SurveyTaskDetailEntityCopyWithImpl<$Res>
    implements _$SurveyTaskDetailEntityCopyWith<$Res> {
  __$SurveyTaskDetailEntityCopyWithImpl(this._self, this._then);

  final _SurveyTaskDetailEntity _self;
  final $Res Function(_SurveyTaskDetailEntity) _then;

/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surveyId = freezed,Object? mustahikId = freezed,Object? status = freezed,Object? mustahikData = freezed,Object? surveyData = freezed,Object? housePhotos = freezed,Object? familyMembers = freezed,}) {
  return _then(_SurveyTaskDetailEntity(
surveyId: freezed == surveyId ? _self.surveyId : surveyId // ignore: cast_nullable_to_non_nullable
as int?,mustahikId: freezed == mustahikId ? _self.mustahikId : mustahikId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mustahikData: freezed == mustahikData ? _self.mustahikData : mustahikData // ignore: cast_nullable_to_non_nullable
as MustahikEntity?,surveyData: freezed == surveyData ? _self.surveyData : surveyData // ignore: cast_nullable_to_non_nullable
as SurveyTaskDetailSurveyDataEntity?,housePhotos: freezed == housePhotos ? _self._housePhotos : housePhotos // ignore: cast_nullable_to_non_nullable
as List<SurveyHousePhotoEntity>?,familyMembers: freezed == familyMembers ? _self._familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberEntity>?,
  ));
}

/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MustahikEntityCopyWith<$Res>? get mustahikData {
    if (_self.mustahikData == null) {
    return null;
  }

  return $MustahikEntityCopyWith<$Res>(_self.mustahikData!, (value) {
    return _then(_self.copyWith(mustahikData: value));
  });
}/// Create a copy of SurveyTaskDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyTaskDetailSurveyDataEntityCopyWith<$Res>? get surveyData {
    if (_self.surveyData == null) {
    return null;
  }

  return $SurveyTaskDetailSurveyDataEntityCopyWith<$Res>(_self.surveyData!, (value) {
    return _then(_self.copyWith(surveyData: value));
  });
}
}


/// @nodoc
mixin _$SurveyTaskDetailSurveyDataEntity {

 String? get recommendedAsnaf; String? get assistanceGoal; double? get latitude; double? get longitude; String? get surveyDate; String? get surveyorNotes; String? get surveyProofUrl; int? get familySize;
/// Create a copy of SurveyTaskDetailSurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyTaskDetailSurveyDataEntityCopyWith<SurveyTaskDetailSurveyDataEntity> get copyWith => _$SurveyTaskDetailSurveyDataEntityCopyWithImpl<SurveyTaskDetailSurveyDataEntity>(this as SurveyTaskDetailSurveyDataEntity, _$identity);

  /// Serializes this SurveyTaskDetailSurveyDataEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyTaskDetailSurveyDataEntity&&(identical(other.recommendedAsnaf, recommendedAsnaf) || other.recommendedAsnaf == recommendedAsnaf)&&(identical(other.assistanceGoal, assistanceGoal) || other.assistanceGoal == assistanceGoal)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.surveyDate, surveyDate) || other.surveyDate == surveyDate)&&(identical(other.surveyorNotes, surveyorNotes) || other.surveyorNotes == surveyorNotes)&&(identical(other.surveyProofUrl, surveyProofUrl) || other.surveyProofUrl == surveyProofUrl)&&(identical(other.familySize, familySize) || other.familySize == familySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedAsnaf,assistanceGoal,latitude,longitude,surveyDate,surveyorNotes,surveyProofUrl,familySize);

@override
String toString() {
  return 'SurveyTaskDetailSurveyDataEntity(recommendedAsnaf: $recommendedAsnaf, assistanceGoal: $assistanceGoal, latitude: $latitude, longitude: $longitude, surveyDate: $surveyDate, surveyorNotes: $surveyorNotes, surveyProofUrl: $surveyProofUrl, familySize: $familySize)';
}


}

/// @nodoc
abstract mixin class $SurveyTaskDetailSurveyDataEntityCopyWith<$Res>  {
  factory $SurveyTaskDetailSurveyDataEntityCopyWith(SurveyTaskDetailSurveyDataEntity value, $Res Function(SurveyTaskDetailSurveyDataEntity) _then) = _$SurveyTaskDetailSurveyDataEntityCopyWithImpl;
@useResult
$Res call({
 String? recommendedAsnaf, String? assistanceGoal, double? latitude, double? longitude, String? surveyDate, String? surveyorNotes, String? surveyProofUrl, int? familySize
});




}
/// @nodoc
class _$SurveyTaskDetailSurveyDataEntityCopyWithImpl<$Res>
    implements $SurveyTaskDetailSurveyDataEntityCopyWith<$Res> {
  _$SurveyTaskDetailSurveyDataEntityCopyWithImpl(this._self, this._then);

  final SurveyTaskDetailSurveyDataEntity _self;
  final $Res Function(SurveyTaskDetailSurveyDataEntity) _then;

/// Create a copy of SurveyTaskDetailSurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recommendedAsnaf = freezed,Object? assistanceGoal = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? surveyDate = freezed,Object? surveyorNotes = freezed,Object? surveyProofUrl = freezed,Object? familySize = freezed,}) {
  return _then(_self.copyWith(
recommendedAsnaf: freezed == recommendedAsnaf ? _self.recommendedAsnaf : recommendedAsnaf // ignore: cast_nullable_to_non_nullable
as String?,assistanceGoal: freezed == assistanceGoal ? _self.assistanceGoal : assistanceGoal // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,surveyDate: freezed == surveyDate ? _self.surveyDate : surveyDate // ignore: cast_nullable_to_non_nullable
as String?,surveyorNotes: freezed == surveyorNotes ? _self.surveyorNotes : surveyorNotes // ignore: cast_nullable_to_non_nullable
as String?,surveyProofUrl: freezed == surveyProofUrl ? _self.surveyProofUrl : surveyProofUrl // ignore: cast_nullable_to_non_nullable
as String?,familySize: freezed == familySize ? _self.familySize : familySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyTaskDetailSurveyDataEntity].
extension SurveyTaskDetailSurveyDataEntityPatterns on SurveyTaskDetailSurveyDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyTaskDetailSurveyDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyTaskDetailSurveyDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyTaskDetailSurveyDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  String? surveyProofUrl,  int? familySize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity() when $default != null:
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.surveyProofUrl,_that.familySize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  String? surveyProofUrl,  int? familySize)  $default,) {final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity():
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.surveyProofUrl,_that.familySize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  String? surveyProofUrl,  int? familySize)?  $default,) {final _that = this;
switch (_that) {
case _SurveyTaskDetailSurveyDataEntity() when $default != null:
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.surveyProofUrl,_that.familySize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurveyTaskDetailSurveyDataEntity implements SurveyTaskDetailSurveyDataEntity {
  const _SurveyTaskDetailSurveyDataEntity({this.recommendedAsnaf, this.assistanceGoal, this.latitude, this.longitude, this.surveyDate, this.surveyorNotes, this.surveyProofUrl, this.familySize});
  factory _SurveyTaskDetailSurveyDataEntity.fromJson(Map<String, dynamic> json) => _$SurveyTaskDetailSurveyDataEntityFromJson(json);

@override final  String? recommendedAsnaf;
@override final  String? assistanceGoal;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? surveyDate;
@override final  String? surveyorNotes;
@override final  String? surveyProofUrl;
@override final  int? familySize;

/// Create a copy of SurveyTaskDetailSurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyTaskDetailSurveyDataEntityCopyWith<_SurveyTaskDetailSurveyDataEntity> get copyWith => __$SurveyTaskDetailSurveyDataEntityCopyWithImpl<_SurveyTaskDetailSurveyDataEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyTaskDetailSurveyDataEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyTaskDetailSurveyDataEntity&&(identical(other.recommendedAsnaf, recommendedAsnaf) || other.recommendedAsnaf == recommendedAsnaf)&&(identical(other.assistanceGoal, assistanceGoal) || other.assistanceGoal == assistanceGoal)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.surveyDate, surveyDate) || other.surveyDate == surveyDate)&&(identical(other.surveyorNotes, surveyorNotes) || other.surveyorNotes == surveyorNotes)&&(identical(other.surveyProofUrl, surveyProofUrl) || other.surveyProofUrl == surveyProofUrl)&&(identical(other.familySize, familySize) || other.familySize == familySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedAsnaf,assistanceGoal,latitude,longitude,surveyDate,surveyorNotes,surveyProofUrl,familySize);

@override
String toString() {
  return 'SurveyTaskDetailSurveyDataEntity(recommendedAsnaf: $recommendedAsnaf, assistanceGoal: $assistanceGoal, latitude: $latitude, longitude: $longitude, surveyDate: $surveyDate, surveyorNotes: $surveyorNotes, surveyProofUrl: $surveyProofUrl, familySize: $familySize)';
}


}

/// @nodoc
abstract mixin class _$SurveyTaskDetailSurveyDataEntityCopyWith<$Res> implements $SurveyTaskDetailSurveyDataEntityCopyWith<$Res> {
  factory _$SurveyTaskDetailSurveyDataEntityCopyWith(_SurveyTaskDetailSurveyDataEntity value, $Res Function(_SurveyTaskDetailSurveyDataEntity) _then) = __$SurveyTaskDetailSurveyDataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? recommendedAsnaf, String? assistanceGoal, double? latitude, double? longitude, String? surveyDate, String? surveyorNotes, String? surveyProofUrl, int? familySize
});




}
/// @nodoc
class __$SurveyTaskDetailSurveyDataEntityCopyWithImpl<$Res>
    implements _$SurveyTaskDetailSurveyDataEntityCopyWith<$Res> {
  __$SurveyTaskDetailSurveyDataEntityCopyWithImpl(this._self, this._then);

  final _SurveyTaskDetailSurveyDataEntity _self;
  final $Res Function(_SurveyTaskDetailSurveyDataEntity) _then;

/// Create a copy of SurveyTaskDetailSurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recommendedAsnaf = freezed,Object? assistanceGoal = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? surveyDate = freezed,Object? surveyorNotes = freezed,Object? surveyProofUrl = freezed,Object? familySize = freezed,}) {
  return _then(_SurveyTaskDetailSurveyDataEntity(
recommendedAsnaf: freezed == recommendedAsnaf ? _self.recommendedAsnaf : recommendedAsnaf // ignore: cast_nullable_to_non_nullable
as String?,assistanceGoal: freezed == assistanceGoal ? _self.assistanceGoal : assistanceGoal // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,surveyDate: freezed == surveyDate ? _self.surveyDate : surveyDate // ignore: cast_nullable_to_non_nullable
as String?,surveyorNotes: freezed == surveyorNotes ? _self.surveyorNotes : surveyorNotes // ignore: cast_nullable_to_non_nullable
as String?,surveyProofUrl: freezed == surveyProofUrl ? _self.surveyProofUrl : surveyProofUrl // ignore: cast_nullable_to_non_nullable
as String?,familySize: freezed == familySize ? _self.familySize : familySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SurveyHousePhotoEntity {

 String? get photoUrl; String? get description;
/// Create a copy of SurveyHousePhotoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyHousePhotoEntityCopyWith<SurveyHousePhotoEntity> get copyWith => _$SurveyHousePhotoEntityCopyWithImpl<SurveyHousePhotoEntity>(this as SurveyHousePhotoEntity, _$identity);

  /// Serializes this SurveyHousePhotoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyHousePhotoEntity&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,description);

@override
String toString() {
  return 'SurveyHousePhotoEntity(photoUrl: $photoUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $SurveyHousePhotoEntityCopyWith<$Res>  {
  factory $SurveyHousePhotoEntityCopyWith(SurveyHousePhotoEntity value, $Res Function(SurveyHousePhotoEntity) _then) = _$SurveyHousePhotoEntityCopyWithImpl;
@useResult
$Res call({
 String? photoUrl, String? description
});




}
/// @nodoc
class _$SurveyHousePhotoEntityCopyWithImpl<$Res>
    implements $SurveyHousePhotoEntityCopyWith<$Res> {
  _$SurveyHousePhotoEntityCopyWithImpl(this._self, this._then);

  final SurveyHousePhotoEntity _self;
  final $Res Function(SurveyHousePhotoEntity) _then;

/// Create a copy of SurveyHousePhotoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? photoUrl = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyHousePhotoEntity].
extension SurveyHousePhotoEntityPatterns on SurveyHousePhotoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyHousePhotoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyHousePhotoEntity value)  $default,){
final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyHousePhotoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? photoUrl,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity() when $default != null:
return $default(_that.photoUrl,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? photoUrl,  String? description)  $default,) {final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity():
return $default(_that.photoUrl,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? photoUrl,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _SurveyHousePhotoEntity() when $default != null:
return $default(_that.photoUrl,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurveyHousePhotoEntity implements SurveyHousePhotoEntity {
  const _SurveyHousePhotoEntity({this.photoUrl, this.description});
  factory _SurveyHousePhotoEntity.fromJson(Map<String, dynamic> json) => _$SurveyHousePhotoEntityFromJson(json);

@override final  String? photoUrl;
@override final  String? description;

/// Create a copy of SurveyHousePhotoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyHousePhotoEntityCopyWith<_SurveyHousePhotoEntity> get copyWith => __$SurveyHousePhotoEntityCopyWithImpl<_SurveyHousePhotoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyHousePhotoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyHousePhotoEntity&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,photoUrl,description);

@override
String toString() {
  return 'SurveyHousePhotoEntity(photoUrl: $photoUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SurveyHousePhotoEntityCopyWith<$Res> implements $SurveyHousePhotoEntityCopyWith<$Res> {
  factory _$SurveyHousePhotoEntityCopyWith(_SurveyHousePhotoEntity value, $Res Function(_SurveyHousePhotoEntity) _then) = __$SurveyHousePhotoEntityCopyWithImpl;
@override @useResult
$Res call({
 String? photoUrl, String? description
});




}
/// @nodoc
class __$SurveyHousePhotoEntityCopyWithImpl<$Res>
    implements _$SurveyHousePhotoEntityCopyWith<$Res> {
  __$SurveyHousePhotoEntityCopyWithImpl(this._self, this._then);

  final _SurveyHousePhotoEntity _self;
  final $Res Function(_SurveyHousePhotoEntity) _then;

/// Create a copy of SurveyHousePhotoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? photoUrl = freezed,Object? description = freezed,}) {
  return _then(_SurveyHousePhotoEntity(
photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
