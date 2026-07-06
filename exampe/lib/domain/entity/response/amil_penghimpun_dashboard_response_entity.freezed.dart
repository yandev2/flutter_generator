// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amil_penghimpun_dashboard_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AmilPenghimpunDashboardResponseEntity {

 AmilInfoEntity? get amilInfo; AmilKpiEntity? get kpi; List<AmilActivityFeedEntity>? get activityFeed;
/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilPenghimpunDashboardResponseEntityCopyWith<AmilPenghimpunDashboardResponseEntity> get copyWith => _$AmilPenghimpunDashboardResponseEntityCopyWithImpl<AmilPenghimpunDashboardResponseEntity>(this as AmilPenghimpunDashboardResponseEntity, _$identity);

  /// Serializes this AmilPenghimpunDashboardResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilPenghimpunDashboardResponseEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.kpi, kpi) || other.kpi == kpi)&&const DeepCollectionEquality().equals(other.activityFeed, activityFeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,kpi,const DeepCollectionEquality().hash(activityFeed));

@override
String toString() {
  return 'AmilPenghimpunDashboardResponseEntity(amilInfo: $amilInfo, kpi: $kpi, activityFeed: $activityFeed)';
}


}

/// @nodoc
abstract mixin class $AmilPenghimpunDashboardResponseEntityCopyWith<$Res>  {
  factory $AmilPenghimpunDashboardResponseEntityCopyWith(AmilPenghimpunDashboardResponseEntity value, $Res Function(AmilPenghimpunDashboardResponseEntity) _then) = _$AmilPenghimpunDashboardResponseEntityCopyWithImpl;
@useResult
$Res call({
 AmilInfoEntity? amilInfo, AmilKpiEntity? kpi, List<AmilActivityFeedEntity>? activityFeed
});


$AmilInfoEntityCopyWith<$Res>? get amilInfo;$AmilKpiEntityCopyWith<$Res>? get kpi;

}
/// @nodoc
class _$AmilPenghimpunDashboardResponseEntityCopyWithImpl<$Res>
    implements $AmilPenghimpunDashboardResponseEntityCopyWith<$Res> {
  _$AmilPenghimpunDashboardResponseEntityCopyWithImpl(this._self, this._then);

  final AmilPenghimpunDashboardResponseEntity _self;
  final $Res Function(AmilPenghimpunDashboardResponseEntity) _then;

/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amilInfo = freezed,Object? kpi = freezed,Object? activityFeed = freezed,}) {
  return _then(_self.copyWith(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,kpi: freezed == kpi ? _self.kpi : kpi // ignore: cast_nullable_to_non_nullable
as AmilKpiEntity?,activityFeed: freezed == activityFeed ? _self.activityFeed : activityFeed // ignore: cast_nullable_to_non_nullable
as List<AmilActivityFeedEntity>?,
  ));
}
/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilInfoEntityCopyWith<$Res>? get amilInfo {
    if (_self.amilInfo == null) {
    return null;
  }

  return $AmilInfoEntityCopyWith<$Res>(_self.amilInfo!, (value) {
    return _then(_self.copyWith(amilInfo: value));
  });
}/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilKpiEntityCopyWith<$Res>? get kpi {
    if (_self.kpi == null) {
    return null;
  }

  return $AmilKpiEntityCopyWith<$Res>(_self.kpi!, (value) {
    return _then(_self.copyWith(kpi: value));
  });
}
}


/// Adds pattern-matching-related methods to [AmilPenghimpunDashboardResponseEntity].
extension AmilPenghimpunDashboardResponseEntityPatterns on AmilPenghimpunDashboardResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilPenghimpunDashboardResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilPenghimpunDashboardResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilPenghimpunDashboardResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  AmilKpiEntity? kpi,  List<AmilActivityFeedEntity>? activityFeed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity() when $default != null:
return $default(_that.amilInfo,_that.kpi,_that.activityFeed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  AmilKpiEntity? kpi,  List<AmilActivityFeedEntity>? activityFeed)  $default,) {final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity():
return $default(_that.amilInfo,_that.kpi,_that.activityFeed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AmilInfoEntity? amilInfo,  AmilKpiEntity? kpi,  List<AmilActivityFeedEntity>? activityFeed)?  $default,) {final _that = this;
switch (_that) {
case _AmilPenghimpunDashboardResponseEntity() when $default != null:
return $default(_that.amilInfo,_that.kpi,_that.activityFeed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilPenghimpunDashboardResponseEntity implements AmilPenghimpunDashboardResponseEntity {
  const _AmilPenghimpunDashboardResponseEntity({this.amilInfo, this.kpi, final  List<AmilActivityFeedEntity>? activityFeed}): _activityFeed = activityFeed;
  factory _AmilPenghimpunDashboardResponseEntity.fromJson(Map<String, dynamic> json) => _$AmilPenghimpunDashboardResponseEntityFromJson(json);

@override final  AmilInfoEntity? amilInfo;
@override final  AmilKpiEntity? kpi;
 final  List<AmilActivityFeedEntity>? _activityFeed;
@override List<AmilActivityFeedEntity>? get activityFeed {
  final value = _activityFeed;
  if (value == null) return null;
  if (_activityFeed is EqualUnmodifiableListView) return _activityFeed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilPenghimpunDashboardResponseEntityCopyWith<_AmilPenghimpunDashboardResponseEntity> get copyWith => __$AmilPenghimpunDashboardResponseEntityCopyWithImpl<_AmilPenghimpunDashboardResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilPenghimpunDashboardResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilPenghimpunDashboardResponseEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.kpi, kpi) || other.kpi == kpi)&&const DeepCollectionEquality().equals(other._activityFeed, _activityFeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,kpi,const DeepCollectionEquality().hash(_activityFeed));

@override
String toString() {
  return 'AmilPenghimpunDashboardResponseEntity(amilInfo: $amilInfo, kpi: $kpi, activityFeed: $activityFeed)';
}


}

/// @nodoc
abstract mixin class _$AmilPenghimpunDashboardResponseEntityCopyWith<$Res> implements $AmilPenghimpunDashboardResponseEntityCopyWith<$Res> {
  factory _$AmilPenghimpunDashboardResponseEntityCopyWith(_AmilPenghimpunDashboardResponseEntity value, $Res Function(_AmilPenghimpunDashboardResponseEntity) _then) = __$AmilPenghimpunDashboardResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 AmilInfoEntity? amilInfo, AmilKpiEntity? kpi, List<AmilActivityFeedEntity>? activityFeed
});


@override $AmilInfoEntityCopyWith<$Res>? get amilInfo;@override $AmilKpiEntityCopyWith<$Res>? get kpi;

}
/// @nodoc
class __$AmilPenghimpunDashboardResponseEntityCopyWithImpl<$Res>
    implements _$AmilPenghimpunDashboardResponseEntityCopyWith<$Res> {
  __$AmilPenghimpunDashboardResponseEntityCopyWithImpl(this._self, this._then);

  final _AmilPenghimpunDashboardResponseEntity _self;
  final $Res Function(_AmilPenghimpunDashboardResponseEntity) _then;

/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amilInfo = freezed,Object? kpi = freezed,Object? activityFeed = freezed,}) {
  return _then(_AmilPenghimpunDashboardResponseEntity(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,kpi: freezed == kpi ? _self.kpi : kpi // ignore: cast_nullable_to_non_nullable
as AmilKpiEntity?,activityFeed: freezed == activityFeed ? _self._activityFeed : activityFeed // ignore: cast_nullable_to_non_nullable
as List<AmilActivityFeedEntity>?,
  ));
}

/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilInfoEntityCopyWith<$Res>? get amilInfo {
    if (_self.amilInfo == null) {
    return null;
  }

  return $AmilInfoEntityCopyWith<$Res>(_self.amilInfo!, (value) {
    return _then(_self.copyWith(amilInfo: value));
  });
}/// Create a copy of AmilPenghimpunDashboardResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmilKpiEntityCopyWith<$Res>? get kpi {
    if (_self.kpi == null) {
    return null;
  }

  return $AmilKpiEntityCopyWith<$Res>(_self.kpi!, (value) {
    return _then(_self.copyWith(kpi: value));
  });
}
}


/// @nodoc
mixin _$AmilInfoEntity {

 int? get id; String? get name; String? get amilType; int? get upzId;
/// Create a copy of AmilInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilInfoEntityCopyWith<AmilInfoEntity> get copyWith => _$AmilInfoEntityCopyWithImpl<AmilInfoEntity>(this as AmilInfoEntity, _$identity);

  /// Serializes this AmilInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amilType, amilType) || other.amilType == amilType)&&(identical(other.upzId, upzId) || other.upzId == upzId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amilType,upzId);

@override
String toString() {
  return 'AmilInfoEntity(id: $id, name: $name, amilType: $amilType, upzId: $upzId)';
}


}

/// @nodoc
abstract mixin class $AmilInfoEntityCopyWith<$Res>  {
  factory $AmilInfoEntityCopyWith(AmilInfoEntity value, $Res Function(AmilInfoEntity) _then) = _$AmilInfoEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? amilType, int? upzId
});




}
/// @nodoc
class _$AmilInfoEntityCopyWithImpl<$Res>
    implements $AmilInfoEntityCopyWith<$Res> {
  _$AmilInfoEntityCopyWithImpl(this._self, this._then);

  final AmilInfoEntity _self;
  final $Res Function(AmilInfoEntity) _then;

/// Create a copy of AmilInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? amilType = freezed,Object? upzId = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amilType: freezed == amilType ? _self.amilType : amilType // ignore: cast_nullable_to_non_nullable
as String?,upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AmilInfoEntity].
extension AmilInfoEntityPatterns on AmilInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? amilType,  int? upzId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilInfoEntity() when $default != null:
return $default(_that.id,_that.name,_that.amilType,_that.upzId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? amilType,  int? upzId)  $default,) {final _that = this;
switch (_that) {
case _AmilInfoEntity():
return $default(_that.id,_that.name,_that.amilType,_that.upzId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? amilType,  int? upzId)?  $default,) {final _that = this;
switch (_that) {
case _AmilInfoEntity() when $default != null:
return $default(_that.id,_that.name,_that.amilType,_that.upzId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilInfoEntity implements AmilInfoEntity {
  const _AmilInfoEntity({this.id, this.name, this.amilType, this.upzId});
  factory _AmilInfoEntity.fromJson(Map<String, dynamic> json) => _$AmilInfoEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? amilType;
@override final  int? upzId;

/// Create a copy of AmilInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilInfoEntityCopyWith<_AmilInfoEntity> get copyWith => __$AmilInfoEntityCopyWithImpl<_AmilInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.amilType, amilType) || other.amilType == amilType)&&(identical(other.upzId, upzId) || other.upzId == upzId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,amilType,upzId);

@override
String toString() {
  return 'AmilInfoEntity(id: $id, name: $name, amilType: $amilType, upzId: $upzId)';
}


}

/// @nodoc
abstract mixin class _$AmilInfoEntityCopyWith<$Res> implements $AmilInfoEntityCopyWith<$Res> {
  factory _$AmilInfoEntityCopyWith(_AmilInfoEntity value, $Res Function(_AmilInfoEntity) _then) = __$AmilInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? amilType, int? upzId
});




}
/// @nodoc
class __$AmilInfoEntityCopyWithImpl<$Res>
    implements _$AmilInfoEntityCopyWith<$Res> {
  __$AmilInfoEntityCopyWithImpl(this._self, this._then);

  final _AmilInfoEntity _self;
  final $Res Function(_AmilInfoEntity) _then;

/// Create a copy of AmilInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? amilType = freezed,Object? upzId = freezed,}) {
  return _then(_AmilInfoEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,amilType: freezed == amilType ? _self.amilType : amilType // ignore: cast_nullable_to_non_nullable
as String?,upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AmilKpiEntity {

 int? get todayCollection; int? get monthlyTarget; int? get activeTasksCount;
/// Create a copy of AmilKpiEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilKpiEntityCopyWith<AmilKpiEntity> get copyWith => _$AmilKpiEntityCopyWithImpl<AmilKpiEntity>(this as AmilKpiEntity, _$identity);

  /// Serializes this AmilKpiEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilKpiEntity&&(identical(other.todayCollection, todayCollection) || other.todayCollection == todayCollection)&&(identical(other.monthlyTarget, monthlyTarget) || other.monthlyTarget == monthlyTarget)&&(identical(other.activeTasksCount, activeTasksCount) || other.activeTasksCount == activeTasksCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todayCollection,monthlyTarget,activeTasksCount);

@override
String toString() {
  return 'AmilKpiEntity(todayCollection: $todayCollection, monthlyTarget: $monthlyTarget, activeTasksCount: $activeTasksCount)';
}


}

/// @nodoc
abstract mixin class $AmilKpiEntityCopyWith<$Res>  {
  factory $AmilKpiEntityCopyWith(AmilKpiEntity value, $Res Function(AmilKpiEntity) _then) = _$AmilKpiEntityCopyWithImpl;
@useResult
$Res call({
 int? todayCollection, int? monthlyTarget, int? activeTasksCount
});




}
/// @nodoc
class _$AmilKpiEntityCopyWithImpl<$Res>
    implements $AmilKpiEntityCopyWith<$Res> {
  _$AmilKpiEntityCopyWithImpl(this._self, this._then);

  final AmilKpiEntity _self;
  final $Res Function(AmilKpiEntity) _then;

/// Create a copy of AmilKpiEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todayCollection = freezed,Object? monthlyTarget = freezed,Object? activeTasksCount = freezed,}) {
  return _then(_self.copyWith(
todayCollection: freezed == todayCollection ? _self.todayCollection : todayCollection // ignore: cast_nullable_to_non_nullable
as int?,monthlyTarget: freezed == monthlyTarget ? _self.monthlyTarget : monthlyTarget // ignore: cast_nullable_to_non_nullable
as int?,activeTasksCount: freezed == activeTasksCount ? _self.activeTasksCount : activeTasksCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AmilKpiEntity].
extension AmilKpiEntityPatterns on AmilKpiEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilKpiEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilKpiEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilKpiEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilKpiEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilKpiEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilKpiEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? todayCollection,  int? monthlyTarget,  int? activeTasksCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilKpiEntity() when $default != null:
return $default(_that.todayCollection,_that.monthlyTarget,_that.activeTasksCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? todayCollection,  int? monthlyTarget,  int? activeTasksCount)  $default,) {final _that = this;
switch (_that) {
case _AmilKpiEntity():
return $default(_that.todayCollection,_that.monthlyTarget,_that.activeTasksCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? todayCollection,  int? monthlyTarget,  int? activeTasksCount)?  $default,) {final _that = this;
switch (_that) {
case _AmilKpiEntity() when $default != null:
return $default(_that.todayCollection,_that.monthlyTarget,_that.activeTasksCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilKpiEntity implements AmilKpiEntity {
  const _AmilKpiEntity({this.todayCollection, this.monthlyTarget, this.activeTasksCount});
  factory _AmilKpiEntity.fromJson(Map<String, dynamic> json) => _$AmilKpiEntityFromJson(json);

@override final  int? todayCollection;
@override final  int? monthlyTarget;
@override final  int? activeTasksCount;

/// Create a copy of AmilKpiEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilKpiEntityCopyWith<_AmilKpiEntity> get copyWith => __$AmilKpiEntityCopyWithImpl<_AmilKpiEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilKpiEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilKpiEntity&&(identical(other.todayCollection, todayCollection) || other.todayCollection == todayCollection)&&(identical(other.monthlyTarget, monthlyTarget) || other.monthlyTarget == monthlyTarget)&&(identical(other.activeTasksCount, activeTasksCount) || other.activeTasksCount == activeTasksCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todayCollection,monthlyTarget,activeTasksCount);

@override
String toString() {
  return 'AmilKpiEntity(todayCollection: $todayCollection, monthlyTarget: $monthlyTarget, activeTasksCount: $activeTasksCount)';
}


}

/// @nodoc
abstract mixin class _$AmilKpiEntityCopyWith<$Res> implements $AmilKpiEntityCopyWith<$Res> {
  factory _$AmilKpiEntityCopyWith(_AmilKpiEntity value, $Res Function(_AmilKpiEntity) _then) = __$AmilKpiEntityCopyWithImpl;
@override @useResult
$Res call({
 int? todayCollection, int? monthlyTarget, int? activeTasksCount
});




}
/// @nodoc
class __$AmilKpiEntityCopyWithImpl<$Res>
    implements _$AmilKpiEntityCopyWith<$Res> {
  __$AmilKpiEntityCopyWithImpl(this._self, this._then);

  final _AmilKpiEntity _self;
  final $Res Function(_AmilKpiEntity) _then;

/// Create a copy of AmilKpiEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todayCollection = freezed,Object? monthlyTarget = freezed,Object? activeTasksCount = freezed,}) {
  return _then(_AmilKpiEntity(
todayCollection: freezed == todayCollection ? _self.todayCollection : todayCollection // ignore: cast_nullable_to_non_nullable
as int?,monthlyTarget: freezed == monthlyTarget ? _self.monthlyTarget : monthlyTarget // ignore: cast_nullable_to_non_nullable
as int?,activeTasksCount: freezed == activeTasksCount ? _self.activeTasksCount : activeTasksCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AmilActivityFeedEntity {

 int? get id; String? get type; String? get description; int? get amount; String? get createdAt;
/// Create a copy of AmilActivityFeedEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilActivityFeedEntityCopyWith<AmilActivityFeedEntity> get copyWith => _$AmilActivityFeedEntityCopyWithImpl<AmilActivityFeedEntity>(this as AmilActivityFeedEntity, _$identity);

  /// Serializes this AmilActivityFeedEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilActivityFeedEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,amount,createdAt);

@override
String toString() {
  return 'AmilActivityFeedEntity(id: $id, type: $type, description: $description, amount: $amount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AmilActivityFeedEntityCopyWith<$Res>  {
  factory $AmilActivityFeedEntityCopyWith(AmilActivityFeedEntity value, $Res Function(AmilActivityFeedEntity) _then) = _$AmilActivityFeedEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? description, int? amount, String? createdAt
});




}
/// @nodoc
class _$AmilActivityFeedEntityCopyWithImpl<$Res>
    implements $AmilActivityFeedEntityCopyWith<$Res> {
  _$AmilActivityFeedEntityCopyWithImpl(this._self, this._then);

  final AmilActivityFeedEntity _self;
  final $Res Function(AmilActivityFeedEntity) _then;

/// Create a copy of AmilActivityFeedEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? description = freezed,Object? amount = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AmilActivityFeedEntity].
extension AmilActivityFeedEntityPatterns on AmilActivityFeedEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilActivityFeedEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilActivityFeedEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilActivityFeedEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilActivityFeedEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilActivityFeedEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilActivityFeedEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? description,  int? amount,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilActivityFeedEntity() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.amount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? description,  int? amount,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AmilActivityFeedEntity():
return $default(_that.id,_that.type,_that.description,_that.amount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? description,  int? amount,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AmilActivityFeedEntity() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.amount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilActivityFeedEntity implements AmilActivityFeedEntity {
  const _AmilActivityFeedEntity({this.id, this.type, this.description, this.amount, this.createdAt});
  factory _AmilActivityFeedEntity.fromJson(Map<String, dynamic> json) => _$AmilActivityFeedEntityFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? description;
@override final  int? amount;
@override final  String? createdAt;

/// Create a copy of AmilActivityFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilActivityFeedEntityCopyWith<_AmilActivityFeedEntity> get copyWith => __$AmilActivityFeedEntityCopyWithImpl<_AmilActivityFeedEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilActivityFeedEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilActivityFeedEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,amount,createdAt);

@override
String toString() {
  return 'AmilActivityFeedEntity(id: $id, type: $type, description: $description, amount: $amount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AmilActivityFeedEntityCopyWith<$Res> implements $AmilActivityFeedEntityCopyWith<$Res> {
  factory _$AmilActivityFeedEntityCopyWith(_AmilActivityFeedEntity value, $Res Function(_AmilActivityFeedEntity) _then) = __$AmilActivityFeedEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? description, int? amount, String? createdAt
});




}
/// @nodoc
class __$AmilActivityFeedEntityCopyWithImpl<$Res>
    implements _$AmilActivityFeedEntityCopyWith<$Res> {
  __$AmilActivityFeedEntityCopyWithImpl(this._self, this._then);

  final _AmilActivityFeedEntity _self;
  final $Res Function(_AmilActivityFeedEntity) _then;

/// Create a copy of AmilActivityFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? description = freezed,Object? amount = freezed,Object? createdAt = freezed,}) {
  return _then(_AmilActivityFeedEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
