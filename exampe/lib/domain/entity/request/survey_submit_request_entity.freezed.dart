// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_submit_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SurveySubmitRequestEntity {

 int? get surveyId; int? get mustahikId; String? get status; MustahikEntity? get mustahikData; SurveyDataEntity? get surveyData; List<FamilyMemberEntity>? get familyMembers; List<HousePhotoMetaEntity>? get housePhotosMeta; String? get surveyProofPath; List<String>? get housePhotoPaths;
/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveySubmitRequestEntityCopyWith<SurveySubmitRequestEntity> get copyWith => _$SurveySubmitRequestEntityCopyWithImpl<SurveySubmitRequestEntity>(this as SurveySubmitRequestEntity, _$identity);

  /// Serializes this SurveySubmitRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveySubmitRequestEntity&&(identical(other.surveyId, surveyId) || other.surveyId == surveyId)&&(identical(other.mustahikId, mustahikId) || other.mustahikId == mustahikId)&&(identical(other.status, status) || other.status == status)&&(identical(other.mustahikData, mustahikData) || other.mustahikData == mustahikData)&&(identical(other.surveyData, surveyData) || other.surveyData == surveyData)&&const DeepCollectionEquality().equals(other.familyMembers, familyMembers)&&const DeepCollectionEquality().equals(other.housePhotosMeta, housePhotosMeta)&&(identical(other.surveyProofPath, surveyProofPath) || other.surveyProofPath == surveyProofPath)&&const DeepCollectionEquality().equals(other.housePhotoPaths, housePhotoPaths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surveyId,mustahikId,status,mustahikData,surveyData,const DeepCollectionEquality().hash(familyMembers),const DeepCollectionEquality().hash(housePhotosMeta),surveyProofPath,const DeepCollectionEquality().hash(housePhotoPaths));

@override
String toString() {
  return 'SurveySubmitRequestEntity(surveyId: $surveyId, mustahikId: $mustahikId, status: $status, mustahikData: $mustahikData, surveyData: $surveyData, familyMembers: $familyMembers, housePhotosMeta: $housePhotosMeta, surveyProofPath: $surveyProofPath, housePhotoPaths: $housePhotoPaths)';
}


}

/// @nodoc
abstract mixin class $SurveySubmitRequestEntityCopyWith<$Res>  {
  factory $SurveySubmitRequestEntityCopyWith(SurveySubmitRequestEntity value, $Res Function(SurveySubmitRequestEntity) _then) = _$SurveySubmitRequestEntityCopyWithImpl;
@useResult
$Res call({
 int? surveyId, int? mustahikId, String? status, MustahikEntity? mustahikData, SurveyDataEntity? surveyData, List<FamilyMemberEntity>? familyMembers, List<HousePhotoMetaEntity>? housePhotosMeta, String? surveyProofPath, List<String>? housePhotoPaths
});


$MustahikEntityCopyWith<$Res>? get mustahikData;$SurveyDataEntityCopyWith<$Res>? get surveyData;

}
/// @nodoc
class _$SurveySubmitRequestEntityCopyWithImpl<$Res>
    implements $SurveySubmitRequestEntityCopyWith<$Res> {
  _$SurveySubmitRequestEntityCopyWithImpl(this._self, this._then);

  final SurveySubmitRequestEntity _self;
  final $Res Function(SurveySubmitRequestEntity) _then;

/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? surveyId = freezed,Object? mustahikId = freezed,Object? status = freezed,Object? mustahikData = freezed,Object? surveyData = freezed,Object? familyMembers = freezed,Object? housePhotosMeta = freezed,Object? surveyProofPath = freezed,Object? housePhotoPaths = freezed,}) {
  return _then(_self.copyWith(
surveyId: freezed == surveyId ? _self.surveyId : surveyId // ignore: cast_nullable_to_non_nullable
as int?,mustahikId: freezed == mustahikId ? _self.mustahikId : mustahikId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mustahikData: freezed == mustahikData ? _self.mustahikData : mustahikData // ignore: cast_nullable_to_non_nullable
as MustahikEntity?,surveyData: freezed == surveyData ? _self.surveyData : surveyData // ignore: cast_nullable_to_non_nullable
as SurveyDataEntity?,familyMembers: freezed == familyMembers ? _self.familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberEntity>?,housePhotosMeta: freezed == housePhotosMeta ? _self.housePhotosMeta : housePhotosMeta // ignore: cast_nullable_to_non_nullable
as List<HousePhotoMetaEntity>?,surveyProofPath: freezed == surveyProofPath ? _self.surveyProofPath : surveyProofPath // ignore: cast_nullable_to_non_nullable
as String?,housePhotoPaths: freezed == housePhotoPaths ? _self.housePhotoPaths : housePhotoPaths // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of SurveySubmitRequestEntity
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
}/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyDataEntityCopyWith<$Res>? get surveyData {
    if (_self.surveyData == null) {
    return null;
  }

  return $SurveyDataEntityCopyWith<$Res>(_self.surveyData!, (value) {
    return _then(_self.copyWith(surveyData: value));
  });
}
}


/// Adds pattern-matching-related methods to [SurveySubmitRequestEntity].
extension SurveySubmitRequestEntityPatterns on SurveySubmitRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveySubmitRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveySubmitRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveySubmitRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyDataEntity? surveyData,  List<FamilyMemberEntity>? familyMembers,  List<HousePhotoMetaEntity>? housePhotosMeta,  String? surveyProofPath,  List<String>? housePhotoPaths)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity() when $default != null:
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.familyMembers,_that.housePhotosMeta,_that.surveyProofPath,_that.housePhotoPaths);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyDataEntity? surveyData,  List<FamilyMemberEntity>? familyMembers,  List<HousePhotoMetaEntity>? housePhotosMeta,  String? surveyProofPath,  List<String>? housePhotoPaths)  $default,) {final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity():
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.familyMembers,_that.housePhotosMeta,_that.surveyProofPath,_that.housePhotoPaths);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? surveyId,  int? mustahikId,  String? status,  MustahikEntity? mustahikData,  SurveyDataEntity? surveyData,  List<FamilyMemberEntity>? familyMembers,  List<HousePhotoMetaEntity>? housePhotosMeta,  String? surveyProofPath,  List<String>? housePhotoPaths)?  $default,) {final _that = this;
switch (_that) {
case _SurveySubmitRequestEntity() when $default != null:
return $default(_that.surveyId,_that.mustahikId,_that.status,_that.mustahikData,_that.surveyData,_that.familyMembers,_that.housePhotosMeta,_that.surveyProofPath,_that.housePhotoPaths);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurveySubmitRequestEntity implements SurveySubmitRequestEntity {
  const _SurveySubmitRequestEntity({this.surveyId, this.mustahikId, this.status, this.mustahikData, this.surveyData, final  List<FamilyMemberEntity>? familyMembers, final  List<HousePhotoMetaEntity>? housePhotosMeta, this.surveyProofPath, final  List<String>? housePhotoPaths}): _familyMembers = familyMembers,_housePhotosMeta = housePhotosMeta,_housePhotoPaths = housePhotoPaths;
  factory _SurveySubmitRequestEntity.fromJson(Map<String, dynamic> json) => _$SurveySubmitRequestEntityFromJson(json);

@override final  int? surveyId;
@override final  int? mustahikId;
@override final  String? status;
@override final  MustahikEntity? mustahikData;
@override final  SurveyDataEntity? surveyData;
 final  List<FamilyMemberEntity>? _familyMembers;
@override List<FamilyMemberEntity>? get familyMembers {
  final value = _familyMembers;
  if (value == null) return null;
  if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<HousePhotoMetaEntity>? _housePhotosMeta;
@override List<HousePhotoMetaEntity>? get housePhotosMeta {
  final value = _housePhotosMeta;
  if (value == null) return null;
  if (_housePhotosMeta is EqualUnmodifiableListView) return _housePhotosMeta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? surveyProofPath;
 final  List<String>? _housePhotoPaths;
@override List<String>? get housePhotoPaths {
  final value = _housePhotoPaths;
  if (value == null) return null;
  if (_housePhotoPaths is EqualUnmodifiableListView) return _housePhotoPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveySubmitRequestEntityCopyWith<_SurveySubmitRequestEntity> get copyWith => __$SurveySubmitRequestEntityCopyWithImpl<_SurveySubmitRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveySubmitRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveySubmitRequestEntity&&(identical(other.surveyId, surveyId) || other.surveyId == surveyId)&&(identical(other.mustahikId, mustahikId) || other.mustahikId == mustahikId)&&(identical(other.status, status) || other.status == status)&&(identical(other.mustahikData, mustahikData) || other.mustahikData == mustahikData)&&(identical(other.surveyData, surveyData) || other.surveyData == surveyData)&&const DeepCollectionEquality().equals(other._familyMembers, _familyMembers)&&const DeepCollectionEquality().equals(other._housePhotosMeta, _housePhotosMeta)&&(identical(other.surveyProofPath, surveyProofPath) || other.surveyProofPath == surveyProofPath)&&const DeepCollectionEquality().equals(other._housePhotoPaths, _housePhotoPaths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,surveyId,mustahikId,status,mustahikData,surveyData,const DeepCollectionEquality().hash(_familyMembers),const DeepCollectionEquality().hash(_housePhotosMeta),surveyProofPath,const DeepCollectionEquality().hash(_housePhotoPaths));

@override
String toString() {
  return 'SurveySubmitRequestEntity(surveyId: $surveyId, mustahikId: $mustahikId, status: $status, mustahikData: $mustahikData, surveyData: $surveyData, familyMembers: $familyMembers, housePhotosMeta: $housePhotosMeta, surveyProofPath: $surveyProofPath, housePhotoPaths: $housePhotoPaths)';
}


}

/// @nodoc
abstract mixin class _$SurveySubmitRequestEntityCopyWith<$Res> implements $SurveySubmitRequestEntityCopyWith<$Res> {
  factory _$SurveySubmitRequestEntityCopyWith(_SurveySubmitRequestEntity value, $Res Function(_SurveySubmitRequestEntity) _then) = __$SurveySubmitRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int? surveyId, int? mustahikId, String? status, MustahikEntity? mustahikData, SurveyDataEntity? surveyData, List<FamilyMemberEntity>? familyMembers, List<HousePhotoMetaEntity>? housePhotosMeta, String? surveyProofPath, List<String>? housePhotoPaths
});


@override $MustahikEntityCopyWith<$Res>? get mustahikData;@override $SurveyDataEntityCopyWith<$Res>? get surveyData;

}
/// @nodoc
class __$SurveySubmitRequestEntityCopyWithImpl<$Res>
    implements _$SurveySubmitRequestEntityCopyWith<$Res> {
  __$SurveySubmitRequestEntityCopyWithImpl(this._self, this._then);

  final _SurveySubmitRequestEntity _self;
  final $Res Function(_SurveySubmitRequestEntity) _then;

/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? surveyId = freezed,Object? mustahikId = freezed,Object? status = freezed,Object? mustahikData = freezed,Object? surveyData = freezed,Object? familyMembers = freezed,Object? housePhotosMeta = freezed,Object? surveyProofPath = freezed,Object? housePhotoPaths = freezed,}) {
  return _then(_SurveySubmitRequestEntity(
surveyId: freezed == surveyId ? _self.surveyId : surveyId // ignore: cast_nullable_to_non_nullable
as int?,mustahikId: freezed == mustahikId ? _self.mustahikId : mustahikId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mustahikData: freezed == mustahikData ? _self.mustahikData : mustahikData // ignore: cast_nullable_to_non_nullable
as MustahikEntity?,surveyData: freezed == surveyData ? _self.surveyData : surveyData // ignore: cast_nullable_to_non_nullable
as SurveyDataEntity?,familyMembers: freezed == familyMembers ? _self._familyMembers : familyMembers // ignore: cast_nullable_to_non_nullable
as List<FamilyMemberEntity>?,housePhotosMeta: freezed == housePhotosMeta ? _self._housePhotosMeta : housePhotosMeta // ignore: cast_nullable_to_non_nullable
as List<HousePhotoMetaEntity>?,surveyProofPath: freezed == surveyProofPath ? _self.surveyProofPath : surveyProofPath // ignore: cast_nullable_to_non_nullable
as String?,housePhotoPaths: freezed == housePhotoPaths ? _self._housePhotoPaths : housePhotoPaths // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of SurveySubmitRequestEntity
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
}/// Create a copy of SurveySubmitRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SurveyDataEntityCopyWith<$Res>? get surveyData {
    if (_self.surveyData == null) {
    return null;
  }

  return $SurveyDataEntityCopyWith<$Res>(_self.surveyData!, (value) {
    return _then(_self.copyWith(surveyData: value));
  });
}
}


/// @nodoc
mixin _$SurveyDataEntity {

 String? get recommendedAsnaf; String? get assistanceGoal; double? get latitude; double? get longitude; String? get surveyDate; String? get surveyorNotes; int? get familySize;
/// Create a copy of SurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurveyDataEntityCopyWith<SurveyDataEntity> get copyWith => _$SurveyDataEntityCopyWithImpl<SurveyDataEntity>(this as SurveyDataEntity, _$identity);

  /// Serializes this SurveyDataEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurveyDataEntity&&(identical(other.recommendedAsnaf, recommendedAsnaf) || other.recommendedAsnaf == recommendedAsnaf)&&(identical(other.assistanceGoal, assistanceGoal) || other.assistanceGoal == assistanceGoal)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.surveyDate, surveyDate) || other.surveyDate == surveyDate)&&(identical(other.surveyorNotes, surveyorNotes) || other.surveyorNotes == surveyorNotes)&&(identical(other.familySize, familySize) || other.familySize == familySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedAsnaf,assistanceGoal,latitude,longitude,surveyDate,surveyorNotes,familySize);

@override
String toString() {
  return 'SurveyDataEntity(recommendedAsnaf: $recommendedAsnaf, assistanceGoal: $assistanceGoal, latitude: $latitude, longitude: $longitude, surveyDate: $surveyDate, surveyorNotes: $surveyorNotes, familySize: $familySize)';
}


}

/// @nodoc
abstract mixin class $SurveyDataEntityCopyWith<$Res>  {
  factory $SurveyDataEntityCopyWith(SurveyDataEntity value, $Res Function(SurveyDataEntity) _then) = _$SurveyDataEntityCopyWithImpl;
@useResult
$Res call({
 String? recommendedAsnaf, String? assistanceGoal, double? latitude, double? longitude, String? surveyDate, String? surveyorNotes, int? familySize
});




}
/// @nodoc
class _$SurveyDataEntityCopyWithImpl<$Res>
    implements $SurveyDataEntityCopyWith<$Res> {
  _$SurveyDataEntityCopyWithImpl(this._self, this._then);

  final SurveyDataEntity _self;
  final $Res Function(SurveyDataEntity) _then;

/// Create a copy of SurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recommendedAsnaf = freezed,Object? assistanceGoal = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? surveyDate = freezed,Object? surveyorNotes = freezed,Object? familySize = freezed,}) {
  return _then(_self.copyWith(
recommendedAsnaf: freezed == recommendedAsnaf ? _self.recommendedAsnaf : recommendedAsnaf // ignore: cast_nullable_to_non_nullable
as String?,assistanceGoal: freezed == assistanceGoal ? _self.assistanceGoal : assistanceGoal // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,surveyDate: freezed == surveyDate ? _self.surveyDate : surveyDate // ignore: cast_nullable_to_non_nullable
as String?,surveyorNotes: freezed == surveyorNotes ? _self.surveyorNotes : surveyorNotes // ignore: cast_nullable_to_non_nullable
as String?,familySize: freezed == familySize ? _self.familySize : familySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SurveyDataEntity].
extension SurveyDataEntityPatterns on SurveyDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SurveyDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SurveyDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SurveyDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _SurveyDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SurveyDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SurveyDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  int? familySize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SurveyDataEntity() when $default != null:
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.familySize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  int? familySize)  $default,) {final _that = this;
switch (_that) {
case _SurveyDataEntity():
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.familySize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? recommendedAsnaf,  String? assistanceGoal,  double? latitude,  double? longitude,  String? surveyDate,  String? surveyorNotes,  int? familySize)?  $default,) {final _that = this;
switch (_that) {
case _SurveyDataEntity() when $default != null:
return $default(_that.recommendedAsnaf,_that.assistanceGoal,_that.latitude,_that.longitude,_that.surveyDate,_that.surveyorNotes,_that.familySize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SurveyDataEntity implements SurveyDataEntity {
  const _SurveyDataEntity({this.recommendedAsnaf, this.assistanceGoal, this.latitude, this.longitude, this.surveyDate, this.surveyorNotes, this.familySize});
  factory _SurveyDataEntity.fromJson(Map<String, dynamic> json) => _$SurveyDataEntityFromJson(json);

@override final  String? recommendedAsnaf;
@override final  String? assistanceGoal;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? surveyDate;
@override final  String? surveyorNotes;
@override final  int? familySize;

/// Create a copy of SurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurveyDataEntityCopyWith<_SurveyDataEntity> get copyWith => __$SurveyDataEntityCopyWithImpl<_SurveyDataEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SurveyDataEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurveyDataEntity&&(identical(other.recommendedAsnaf, recommendedAsnaf) || other.recommendedAsnaf == recommendedAsnaf)&&(identical(other.assistanceGoal, assistanceGoal) || other.assistanceGoal == assistanceGoal)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.surveyDate, surveyDate) || other.surveyDate == surveyDate)&&(identical(other.surveyorNotes, surveyorNotes) || other.surveyorNotes == surveyorNotes)&&(identical(other.familySize, familySize) || other.familySize == familySize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recommendedAsnaf,assistanceGoal,latitude,longitude,surveyDate,surveyorNotes,familySize);

@override
String toString() {
  return 'SurveyDataEntity(recommendedAsnaf: $recommendedAsnaf, assistanceGoal: $assistanceGoal, latitude: $latitude, longitude: $longitude, surveyDate: $surveyDate, surveyorNotes: $surveyorNotes, familySize: $familySize)';
}


}

/// @nodoc
abstract mixin class _$SurveyDataEntityCopyWith<$Res> implements $SurveyDataEntityCopyWith<$Res> {
  factory _$SurveyDataEntityCopyWith(_SurveyDataEntity value, $Res Function(_SurveyDataEntity) _then) = __$SurveyDataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? recommendedAsnaf, String? assistanceGoal, double? latitude, double? longitude, String? surveyDate, String? surveyorNotes, int? familySize
});




}
/// @nodoc
class __$SurveyDataEntityCopyWithImpl<$Res>
    implements _$SurveyDataEntityCopyWith<$Res> {
  __$SurveyDataEntityCopyWithImpl(this._self, this._then);

  final _SurveyDataEntity _self;
  final $Res Function(_SurveyDataEntity) _then;

/// Create a copy of SurveyDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recommendedAsnaf = freezed,Object? assistanceGoal = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? surveyDate = freezed,Object? surveyorNotes = freezed,Object? familySize = freezed,}) {
  return _then(_SurveyDataEntity(
recommendedAsnaf: freezed == recommendedAsnaf ? _self.recommendedAsnaf : recommendedAsnaf // ignore: cast_nullable_to_non_nullable
as String?,assistanceGoal: freezed == assistanceGoal ? _self.assistanceGoal : assistanceGoal // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,surveyDate: freezed == surveyDate ? _self.surveyDate : surveyDate // ignore: cast_nullable_to_non_nullable
as String?,surveyorNotes: freezed == surveyorNotes ? _self.surveyorNotes : surveyorNotes // ignore: cast_nullable_to_non_nullable
as String?,familySize: freezed == familySize ? _self.familySize : familySize // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$HousePhotoMetaEntity {

 String? get description;
/// Create a copy of HousePhotoMetaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HousePhotoMetaEntityCopyWith<HousePhotoMetaEntity> get copyWith => _$HousePhotoMetaEntityCopyWithImpl<HousePhotoMetaEntity>(this as HousePhotoMetaEntity, _$identity);

  /// Serializes this HousePhotoMetaEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HousePhotoMetaEntity&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'HousePhotoMetaEntity(description: $description)';
}


}

/// @nodoc
abstract mixin class $HousePhotoMetaEntityCopyWith<$Res>  {
  factory $HousePhotoMetaEntityCopyWith(HousePhotoMetaEntity value, $Res Function(HousePhotoMetaEntity) _then) = _$HousePhotoMetaEntityCopyWithImpl;
@useResult
$Res call({
 String? description
});




}
/// @nodoc
class _$HousePhotoMetaEntityCopyWithImpl<$Res>
    implements $HousePhotoMetaEntityCopyWith<$Res> {
  _$HousePhotoMetaEntityCopyWithImpl(this._self, this._then);

  final HousePhotoMetaEntity _self;
  final $Res Function(HousePhotoMetaEntity) _then;

/// Create a copy of HousePhotoMetaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,}) {
  return _then(_self.copyWith(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HousePhotoMetaEntity].
extension HousePhotoMetaEntityPatterns on HousePhotoMetaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HousePhotoMetaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HousePhotoMetaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HousePhotoMetaEntity value)  $default,){
final _that = this;
switch (_that) {
case _HousePhotoMetaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HousePhotoMetaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HousePhotoMetaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HousePhotoMetaEntity() when $default != null:
return $default(_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description)  $default,) {final _that = this;
switch (_that) {
case _HousePhotoMetaEntity():
return $default(_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description)?  $default,) {final _that = this;
switch (_that) {
case _HousePhotoMetaEntity() when $default != null:
return $default(_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HousePhotoMetaEntity implements HousePhotoMetaEntity {
  const _HousePhotoMetaEntity({this.description});
  factory _HousePhotoMetaEntity.fromJson(Map<String, dynamic> json) => _$HousePhotoMetaEntityFromJson(json);

@override final  String? description;

/// Create a copy of HousePhotoMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HousePhotoMetaEntityCopyWith<_HousePhotoMetaEntity> get copyWith => __$HousePhotoMetaEntityCopyWithImpl<_HousePhotoMetaEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HousePhotoMetaEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HousePhotoMetaEntity&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'HousePhotoMetaEntity(description: $description)';
}


}

/// @nodoc
abstract mixin class _$HousePhotoMetaEntityCopyWith<$Res> implements $HousePhotoMetaEntityCopyWith<$Res> {
  factory _$HousePhotoMetaEntityCopyWith(_HousePhotoMetaEntity value, $Res Function(_HousePhotoMetaEntity) _then) = __$HousePhotoMetaEntityCopyWithImpl;
@override @useResult
$Res call({
 String? description
});




}
/// @nodoc
class __$HousePhotoMetaEntityCopyWithImpl<$Res>
    implements _$HousePhotoMetaEntityCopyWith<$Res> {
  __$HousePhotoMetaEntityCopyWithImpl(this._self, this._then);

  final _HousePhotoMetaEntity _self;
  final $Res Function(_HousePhotoMetaEntity) _then;

/// Create a copy of HousePhotoMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,}) {
  return _then(_HousePhotoMetaEntity(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FamilyMemberEntity {

 String? get name; String? get relationship; int? get age; String? get occupation; String? get education;
/// Create a copy of FamilyMemberEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMemberEntityCopyWith<FamilyMemberEntity> get copyWith => _$FamilyMemberEntityCopyWithImpl<FamilyMemberEntity>(this as FamilyMemberEntity, _$identity);

  /// Serializes this FamilyMemberEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMemberEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.age, age) || other.age == age)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.education, education) || other.education == education));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,relationship,age,occupation,education);

@override
String toString() {
  return 'FamilyMemberEntity(name: $name, relationship: $relationship, age: $age, occupation: $occupation, education: $education)';
}


}

/// @nodoc
abstract mixin class $FamilyMemberEntityCopyWith<$Res>  {
  factory $FamilyMemberEntityCopyWith(FamilyMemberEntity value, $Res Function(FamilyMemberEntity) _then) = _$FamilyMemberEntityCopyWithImpl;
@useResult
$Res call({
 String? name, String? relationship, int? age, String? occupation, String? education
});




}
/// @nodoc
class _$FamilyMemberEntityCopyWithImpl<$Res>
    implements $FamilyMemberEntityCopyWith<$Res> {
  _$FamilyMemberEntityCopyWithImpl(this._self, this._then);

  final FamilyMemberEntity _self;
  final $Res Function(FamilyMemberEntity) _then;

/// Create a copy of FamilyMemberEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? relationship = freezed,Object? age = freezed,Object? occupation = freezed,Object? education = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,relationship: freezed == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyMemberEntity].
extension FamilyMemberEntityPatterns on FamilyMemberEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyMemberEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyMemberEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyMemberEntity value)  $default,){
final _that = this;
switch (_that) {
case _FamilyMemberEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyMemberEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyMemberEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? relationship,  int? age,  String? occupation,  String? education)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyMemberEntity() when $default != null:
return $default(_that.name,_that.relationship,_that.age,_that.occupation,_that.education);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? relationship,  int? age,  String? occupation,  String? education)  $default,) {final _that = this;
switch (_that) {
case _FamilyMemberEntity():
return $default(_that.name,_that.relationship,_that.age,_that.occupation,_that.education);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? relationship,  int? age,  String? occupation,  String? education)?  $default,) {final _that = this;
switch (_that) {
case _FamilyMemberEntity() when $default != null:
return $default(_that.name,_that.relationship,_that.age,_that.occupation,_that.education);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyMemberEntity implements FamilyMemberEntity {
  const _FamilyMemberEntity({this.name, this.relationship, this.age, this.occupation, this.education});
  factory _FamilyMemberEntity.fromJson(Map<String, dynamic> json) => _$FamilyMemberEntityFromJson(json);

@override final  String? name;
@override final  String? relationship;
@override final  int? age;
@override final  String? occupation;
@override final  String? education;

/// Create a copy of FamilyMemberEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyMemberEntityCopyWith<_FamilyMemberEntity> get copyWith => __$FamilyMemberEntityCopyWithImpl<_FamilyMemberEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMemberEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyMemberEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.relationship, relationship) || other.relationship == relationship)&&(identical(other.age, age) || other.age == age)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.education, education) || other.education == education));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,relationship,age,occupation,education);

@override
String toString() {
  return 'FamilyMemberEntity(name: $name, relationship: $relationship, age: $age, occupation: $occupation, education: $education)';
}


}

/// @nodoc
abstract mixin class _$FamilyMemberEntityCopyWith<$Res> implements $FamilyMemberEntityCopyWith<$Res> {
  factory _$FamilyMemberEntityCopyWith(_FamilyMemberEntity value, $Res Function(_FamilyMemberEntity) _then) = __$FamilyMemberEntityCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? relationship, int? age, String? occupation, String? education
});




}
/// @nodoc
class __$FamilyMemberEntityCopyWithImpl<$Res>
    implements _$FamilyMemberEntityCopyWith<$Res> {
  __$FamilyMemberEntityCopyWithImpl(this._self, this._then);

  final _FamilyMemberEntity _self;
  final $Res Function(_FamilyMemberEntity) _then;

/// Create a copy of FamilyMemberEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? relationship = freezed,Object? age = freezed,Object? occupation = freezed,Object? education = freezed,}) {
  return _then(_FamilyMemberEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,relationship: freezed == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
