// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muzakki_dashboard_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuzakkiDashboardResponseEntity {

 UserDataEntity? get user; MuzakkiContributionSummaryEntity? get contributionSummary; List<ProgramsItemListEntity>? get featuredPrograms;
/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuzakkiDashboardResponseEntityCopyWith<MuzakkiDashboardResponseEntity> get copyWith => _$MuzakkiDashboardResponseEntityCopyWithImpl<MuzakkiDashboardResponseEntity>(this as MuzakkiDashboardResponseEntity, _$identity);

  /// Serializes this MuzakkiDashboardResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuzakkiDashboardResponseEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.contributionSummary, contributionSummary) || other.contributionSummary == contributionSummary)&&const DeepCollectionEquality().equals(other.featuredPrograms, featuredPrograms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,contributionSummary,const DeepCollectionEquality().hash(featuredPrograms));

@override
String toString() {
  return 'MuzakkiDashboardResponseEntity(user: $user, contributionSummary: $contributionSummary, featuredPrograms: $featuredPrograms)';
}


}

/// @nodoc
abstract mixin class $MuzakkiDashboardResponseEntityCopyWith<$Res>  {
  factory $MuzakkiDashboardResponseEntityCopyWith(MuzakkiDashboardResponseEntity value, $Res Function(MuzakkiDashboardResponseEntity) _then) = _$MuzakkiDashboardResponseEntityCopyWithImpl;
@useResult
$Res call({
 UserDataEntity? user, MuzakkiContributionSummaryEntity? contributionSummary, List<ProgramsItemListEntity>? featuredPrograms
});


$UserDataEntityCopyWith<$Res>? get user;$MuzakkiContributionSummaryEntityCopyWith<$Res>? get contributionSummary;

}
/// @nodoc
class _$MuzakkiDashboardResponseEntityCopyWithImpl<$Res>
    implements $MuzakkiDashboardResponseEntityCopyWith<$Res> {
  _$MuzakkiDashboardResponseEntityCopyWithImpl(this._self, this._then);

  final MuzakkiDashboardResponseEntity _self;
  final $Res Function(MuzakkiDashboardResponseEntity) _then;

/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? contributionSummary = freezed,Object? featuredPrograms = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDataEntity?,contributionSummary: freezed == contributionSummary ? _self.contributionSummary : contributionSummary // ignore: cast_nullable_to_non_nullable
as MuzakkiContributionSummaryEntity?,featuredPrograms: freezed == featuredPrograms ? _self.featuredPrograms : featuredPrograms // ignore: cast_nullable_to_non_nullable
as List<ProgramsItemListEntity>?,
  ));
}
/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuzakkiContributionSummaryEntityCopyWith<$Res>? get contributionSummary {
    if (_self.contributionSummary == null) {
    return null;
  }

  return $MuzakkiContributionSummaryEntityCopyWith<$Res>(_self.contributionSummary!, (value) {
    return _then(_self.copyWith(contributionSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [MuzakkiDashboardResponseEntity].
extension MuzakkiDashboardResponseEntityPatterns on MuzakkiDashboardResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuzakkiDashboardResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuzakkiDashboardResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuzakkiDashboardResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDataEntity? user,  MuzakkiContributionSummaryEntity? contributionSummary,  List<ProgramsItemListEntity>? featuredPrograms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity() when $default != null:
return $default(_that.user,_that.contributionSummary,_that.featuredPrograms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDataEntity? user,  MuzakkiContributionSummaryEntity? contributionSummary,  List<ProgramsItemListEntity>? featuredPrograms)  $default,) {final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity():
return $default(_that.user,_that.contributionSummary,_that.featuredPrograms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDataEntity? user,  MuzakkiContributionSummaryEntity? contributionSummary,  List<ProgramsItemListEntity>? featuredPrograms)?  $default,) {final _that = this;
switch (_that) {
case _MuzakkiDashboardResponseEntity() when $default != null:
return $default(_that.user,_that.contributionSummary,_that.featuredPrograms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MuzakkiDashboardResponseEntity implements MuzakkiDashboardResponseEntity {
  const _MuzakkiDashboardResponseEntity({this.user, this.contributionSummary, final  List<ProgramsItemListEntity>? featuredPrograms}): _featuredPrograms = featuredPrograms;
  factory _MuzakkiDashboardResponseEntity.fromJson(Map<String, dynamic> json) => _$MuzakkiDashboardResponseEntityFromJson(json);

@override final  UserDataEntity? user;
@override final  MuzakkiContributionSummaryEntity? contributionSummary;
 final  List<ProgramsItemListEntity>? _featuredPrograms;
@override List<ProgramsItemListEntity>? get featuredPrograms {
  final value = _featuredPrograms;
  if (value == null) return null;
  if (_featuredPrograms is EqualUnmodifiableListView) return _featuredPrograms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuzakkiDashboardResponseEntityCopyWith<_MuzakkiDashboardResponseEntity> get copyWith => __$MuzakkiDashboardResponseEntityCopyWithImpl<_MuzakkiDashboardResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MuzakkiDashboardResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuzakkiDashboardResponseEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.contributionSummary, contributionSummary) || other.contributionSummary == contributionSummary)&&const DeepCollectionEquality().equals(other._featuredPrograms, _featuredPrograms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,contributionSummary,const DeepCollectionEquality().hash(_featuredPrograms));

@override
String toString() {
  return 'MuzakkiDashboardResponseEntity(user: $user, contributionSummary: $contributionSummary, featuredPrograms: $featuredPrograms)';
}


}

/// @nodoc
abstract mixin class _$MuzakkiDashboardResponseEntityCopyWith<$Res> implements $MuzakkiDashboardResponseEntityCopyWith<$Res> {
  factory _$MuzakkiDashboardResponseEntityCopyWith(_MuzakkiDashboardResponseEntity value, $Res Function(_MuzakkiDashboardResponseEntity) _then) = __$MuzakkiDashboardResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 UserDataEntity? user, MuzakkiContributionSummaryEntity? contributionSummary, List<ProgramsItemListEntity>? featuredPrograms
});


@override $UserDataEntityCopyWith<$Res>? get user;@override $MuzakkiContributionSummaryEntityCopyWith<$Res>? get contributionSummary;

}
/// @nodoc
class __$MuzakkiDashboardResponseEntityCopyWithImpl<$Res>
    implements _$MuzakkiDashboardResponseEntityCopyWith<$Res> {
  __$MuzakkiDashboardResponseEntityCopyWithImpl(this._self, this._then);

  final _MuzakkiDashboardResponseEntity _self;
  final $Res Function(_MuzakkiDashboardResponseEntity) _then;

/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? contributionSummary = freezed,Object? featuredPrograms = freezed,}) {
  return _then(_MuzakkiDashboardResponseEntity(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDataEntity?,contributionSummary: freezed == contributionSummary ? _self.contributionSummary : contributionSummary // ignore: cast_nullable_to_non_nullable
as MuzakkiContributionSummaryEntity?,featuredPrograms: freezed == featuredPrograms ? _self._featuredPrograms : featuredPrograms // ignore: cast_nullable_to_non_nullable
as List<ProgramsItemListEntity>?,
  ));
}

/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of MuzakkiDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuzakkiContributionSummaryEntityCopyWith<$Res>? get contributionSummary {
    if (_self.contributionSummary == null) {
    return null;
  }

  return $MuzakkiContributionSummaryEntityCopyWith<$Res>(_self.contributionSummary!, (value) {
    return _then(_self.copyWith(contributionSummary: value));
  });
}
}

// dart format on
