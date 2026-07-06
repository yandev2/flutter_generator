// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amil_penghimpun_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AmilPenghimpunReportEntity {

 AmilInfoEntity? get amilInfo; ReportAmilPenghimpunPeriodEntity? get period; ReportAmilPenghimpunCollectionEntity? get collection; String? get reportDownloadUrl;
/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilPenghimpunReportEntityCopyWith<AmilPenghimpunReportEntity> get copyWith => _$AmilPenghimpunReportEntityCopyWithImpl<AmilPenghimpunReportEntity>(this as AmilPenghimpunReportEntity, _$identity);

  /// Serializes this AmilPenghimpunReportEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilPenghimpunReportEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.period, period) || other.period == period)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.reportDownloadUrl, reportDownloadUrl) || other.reportDownloadUrl == reportDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,period,collection,reportDownloadUrl);

@override
String toString() {
  return 'AmilPenghimpunReportEntity(amilInfo: $amilInfo, period: $period, collection: $collection, reportDownloadUrl: $reportDownloadUrl)';
}


}

/// @nodoc
abstract mixin class $AmilPenghimpunReportEntityCopyWith<$Res>  {
  factory $AmilPenghimpunReportEntityCopyWith(AmilPenghimpunReportEntity value, $Res Function(AmilPenghimpunReportEntity) _then) = _$AmilPenghimpunReportEntityCopyWithImpl;
@useResult
$Res call({
 AmilInfoEntity? amilInfo, ReportAmilPenghimpunPeriodEntity? period, ReportAmilPenghimpunCollectionEntity? collection, String? reportDownloadUrl
});


$AmilInfoEntityCopyWith<$Res>? get amilInfo;$ReportAmilPenghimpunPeriodEntityCopyWith<$Res>? get period;$ReportAmilPenghimpunCollectionEntityCopyWith<$Res>? get collection;

}
/// @nodoc
class _$AmilPenghimpunReportEntityCopyWithImpl<$Res>
    implements $AmilPenghimpunReportEntityCopyWith<$Res> {
  _$AmilPenghimpunReportEntityCopyWithImpl(this._self, this._then);

  final AmilPenghimpunReportEntity _self;
  final $Res Function(AmilPenghimpunReportEntity) _then;

/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amilInfo = freezed,Object? period = freezed,Object? collection = freezed,Object? reportDownloadUrl = freezed,}) {
  return _then(_self.copyWith(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportAmilPenghimpunPeriodEntity?,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as ReportAmilPenghimpunCollectionEntity?,reportDownloadUrl: freezed == reportDownloadUrl ? _self.reportDownloadUrl : reportDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AmilPenghimpunReportEntity
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
}/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunPeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportAmilPenghimpunPeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunCollectionEntityCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $ReportAmilPenghimpunCollectionEntityCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}


/// Adds pattern-matching-related methods to [AmilPenghimpunReportEntity].
extension AmilPenghimpunReportEntityPatterns on AmilPenghimpunReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilPenghimpunReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilPenghimpunReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilPenghimpunReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  ReportAmilPenghimpunPeriodEntity? period,  ReportAmilPenghimpunCollectionEntity? collection,  String? reportDownloadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity() when $default != null:
return $default(_that.amilInfo,_that.period,_that.collection,_that.reportDownloadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  ReportAmilPenghimpunPeriodEntity? period,  ReportAmilPenghimpunCollectionEntity? collection,  String? reportDownloadUrl)  $default,) {final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity():
return $default(_that.amilInfo,_that.period,_that.collection,_that.reportDownloadUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AmilInfoEntity? amilInfo,  ReportAmilPenghimpunPeriodEntity? period,  ReportAmilPenghimpunCollectionEntity? collection,  String? reportDownloadUrl)?  $default,) {final _that = this;
switch (_that) {
case _AmilPenghimpunReportEntity() when $default != null:
return $default(_that.amilInfo,_that.period,_that.collection,_that.reportDownloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilPenghimpunReportEntity implements AmilPenghimpunReportEntity {
  const _AmilPenghimpunReportEntity({this.amilInfo, this.period, this.collection, this.reportDownloadUrl});
  factory _AmilPenghimpunReportEntity.fromJson(Map<String, dynamic> json) => _$AmilPenghimpunReportEntityFromJson(json);

@override final  AmilInfoEntity? amilInfo;
@override final  ReportAmilPenghimpunPeriodEntity? period;
@override final  ReportAmilPenghimpunCollectionEntity? collection;
@override final  String? reportDownloadUrl;

/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilPenghimpunReportEntityCopyWith<_AmilPenghimpunReportEntity> get copyWith => __$AmilPenghimpunReportEntityCopyWithImpl<_AmilPenghimpunReportEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilPenghimpunReportEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilPenghimpunReportEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.period, period) || other.period == period)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.reportDownloadUrl, reportDownloadUrl) || other.reportDownloadUrl == reportDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,period,collection,reportDownloadUrl);

@override
String toString() {
  return 'AmilPenghimpunReportEntity(amilInfo: $amilInfo, period: $period, collection: $collection, reportDownloadUrl: $reportDownloadUrl)';
}


}

/// @nodoc
abstract mixin class _$AmilPenghimpunReportEntityCopyWith<$Res> implements $AmilPenghimpunReportEntityCopyWith<$Res> {
  factory _$AmilPenghimpunReportEntityCopyWith(_AmilPenghimpunReportEntity value, $Res Function(_AmilPenghimpunReportEntity) _then) = __$AmilPenghimpunReportEntityCopyWithImpl;
@override @useResult
$Res call({
 AmilInfoEntity? amilInfo, ReportAmilPenghimpunPeriodEntity? period, ReportAmilPenghimpunCollectionEntity? collection, String? reportDownloadUrl
});


@override $AmilInfoEntityCopyWith<$Res>? get amilInfo;@override $ReportAmilPenghimpunPeriodEntityCopyWith<$Res>? get period;@override $ReportAmilPenghimpunCollectionEntityCopyWith<$Res>? get collection;

}
/// @nodoc
class __$AmilPenghimpunReportEntityCopyWithImpl<$Res>
    implements _$AmilPenghimpunReportEntityCopyWith<$Res> {
  __$AmilPenghimpunReportEntityCopyWithImpl(this._self, this._then);

  final _AmilPenghimpunReportEntity _self;
  final $Res Function(_AmilPenghimpunReportEntity) _then;

/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amilInfo = freezed,Object? period = freezed,Object? collection = freezed,Object? reportDownloadUrl = freezed,}) {
  return _then(_AmilPenghimpunReportEntity(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportAmilPenghimpunPeriodEntity?,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as ReportAmilPenghimpunCollectionEntity?,reportDownloadUrl: freezed == reportDownloadUrl ? _self.reportDownloadUrl : reportDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AmilPenghimpunReportEntity
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
}/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunPeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportAmilPenghimpunPeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of AmilPenghimpunReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunCollectionEntityCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $ReportAmilPenghimpunCollectionEntityCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}


/// @nodoc
mixin _$ReportAmilPenghimpunPeriodEntity {

 int? get month; int? get year; String? get startDate; String? get endDate;
/// Create a copy of ReportAmilPenghimpunPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunPeriodEntityCopyWith<ReportAmilPenghimpunPeriodEntity> get copyWith => _$ReportAmilPenghimpunPeriodEntityCopyWithImpl<ReportAmilPenghimpunPeriodEntity>(this as ReportAmilPenghimpunPeriodEntity, _$identity);

  /// Serializes this ReportAmilPenghimpunPeriodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportAmilPenghimpunPeriodEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,startDate,endDate);

@override
String toString() {
  return 'ReportAmilPenghimpunPeriodEntity(month: $month, year: $year, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ReportAmilPenghimpunPeriodEntityCopyWith<$Res>  {
  factory $ReportAmilPenghimpunPeriodEntityCopyWith(ReportAmilPenghimpunPeriodEntity value, $Res Function(ReportAmilPenghimpunPeriodEntity) _then) = _$ReportAmilPenghimpunPeriodEntityCopyWithImpl;
@useResult
$Res call({
 int? month, int? year, String? startDate, String? endDate
});




}
/// @nodoc
class _$ReportAmilPenghimpunPeriodEntityCopyWithImpl<$Res>
    implements $ReportAmilPenghimpunPeriodEntityCopyWith<$Res> {
  _$ReportAmilPenghimpunPeriodEntityCopyWithImpl(this._self, this._then);

  final ReportAmilPenghimpunPeriodEntity _self;
  final $Res Function(ReportAmilPenghimpunPeriodEntity) _then;

/// Create a copy of ReportAmilPenghimpunPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = freezed,Object? year = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportAmilPenghimpunPeriodEntity].
extension ReportAmilPenghimpunPeriodEntityPatterns on ReportAmilPenghimpunPeriodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportAmilPenghimpunPeriodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportAmilPenghimpunPeriodEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportAmilPenghimpunPeriodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? month,  int? year,  String? startDate,  String? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity() when $default != null:
return $default(_that.month,_that.year,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? month,  int? year,  String? startDate,  String? endDate)  $default,) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity():
return $default(_that.month,_that.year,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? month,  int? year,  String? startDate,  String? endDate)?  $default,) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunPeriodEntity() when $default != null:
return $default(_that.month,_that.year,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportAmilPenghimpunPeriodEntity implements ReportAmilPenghimpunPeriodEntity {
  const _ReportAmilPenghimpunPeriodEntity({this.month, this.year, this.startDate, this.endDate});
  factory _ReportAmilPenghimpunPeriodEntity.fromJson(Map<String, dynamic> json) => _$ReportAmilPenghimpunPeriodEntityFromJson(json);

@override final  int? month;
@override final  int? year;
@override final  String? startDate;
@override final  String? endDate;

/// Create a copy of ReportAmilPenghimpunPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportAmilPenghimpunPeriodEntityCopyWith<_ReportAmilPenghimpunPeriodEntity> get copyWith => __$ReportAmilPenghimpunPeriodEntityCopyWithImpl<_ReportAmilPenghimpunPeriodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportAmilPenghimpunPeriodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportAmilPenghimpunPeriodEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,startDate,endDate);

@override
String toString() {
  return 'ReportAmilPenghimpunPeriodEntity(month: $month, year: $year, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ReportAmilPenghimpunPeriodEntityCopyWith<$Res> implements $ReportAmilPenghimpunPeriodEntityCopyWith<$Res> {
  factory _$ReportAmilPenghimpunPeriodEntityCopyWith(_ReportAmilPenghimpunPeriodEntity value, $Res Function(_ReportAmilPenghimpunPeriodEntity) _then) = __$ReportAmilPenghimpunPeriodEntityCopyWithImpl;
@override @useResult
$Res call({
 int? month, int? year, String? startDate, String? endDate
});




}
/// @nodoc
class __$ReportAmilPenghimpunPeriodEntityCopyWithImpl<$Res>
    implements _$ReportAmilPenghimpunPeriodEntityCopyWith<$Res> {
  __$ReportAmilPenghimpunPeriodEntityCopyWithImpl(this._self, this._then);

  final _ReportAmilPenghimpunPeriodEntity _self;
  final $Res Function(_ReportAmilPenghimpunPeriodEntity) _then;

/// Create a copy of ReportAmilPenghimpunPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = freezed,Object? year = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_ReportAmilPenghimpunPeriodEntity(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportAmilPenghimpunCollectionEntity {

 int? get totalCollectedAmount; int? get totalDonationCount; int? get naturaCount; int? get cashCount; int? get pickupCompleted; int? get pickupFailed; int? get pickupActive;
/// Create a copy of ReportAmilPenghimpunCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportAmilPenghimpunCollectionEntityCopyWith<ReportAmilPenghimpunCollectionEntity> get copyWith => _$ReportAmilPenghimpunCollectionEntityCopyWithImpl<ReportAmilPenghimpunCollectionEntity>(this as ReportAmilPenghimpunCollectionEntity, _$identity);

  /// Serializes this ReportAmilPenghimpunCollectionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportAmilPenghimpunCollectionEntity&&(identical(other.totalCollectedAmount, totalCollectedAmount) || other.totalCollectedAmount == totalCollectedAmount)&&(identical(other.totalDonationCount, totalDonationCount) || other.totalDonationCount == totalDonationCount)&&(identical(other.naturaCount, naturaCount) || other.naturaCount == naturaCount)&&(identical(other.cashCount, cashCount) || other.cashCount == cashCount)&&(identical(other.pickupCompleted, pickupCompleted) || other.pickupCompleted == pickupCompleted)&&(identical(other.pickupFailed, pickupFailed) || other.pickupFailed == pickupFailed)&&(identical(other.pickupActive, pickupActive) || other.pickupActive == pickupActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollectedAmount,totalDonationCount,naturaCount,cashCount,pickupCompleted,pickupFailed,pickupActive);

@override
String toString() {
  return 'ReportAmilPenghimpunCollectionEntity(totalCollectedAmount: $totalCollectedAmount, totalDonationCount: $totalDonationCount, naturaCount: $naturaCount, cashCount: $cashCount, pickupCompleted: $pickupCompleted, pickupFailed: $pickupFailed, pickupActive: $pickupActive)';
}


}

/// @nodoc
abstract mixin class $ReportAmilPenghimpunCollectionEntityCopyWith<$Res>  {
  factory $ReportAmilPenghimpunCollectionEntityCopyWith(ReportAmilPenghimpunCollectionEntity value, $Res Function(ReportAmilPenghimpunCollectionEntity) _then) = _$ReportAmilPenghimpunCollectionEntityCopyWithImpl;
@useResult
$Res call({
 int? totalCollectedAmount, int? totalDonationCount, int? naturaCount, int? cashCount, int? pickupCompleted, int? pickupFailed, int? pickupActive
});




}
/// @nodoc
class _$ReportAmilPenghimpunCollectionEntityCopyWithImpl<$Res>
    implements $ReportAmilPenghimpunCollectionEntityCopyWith<$Res> {
  _$ReportAmilPenghimpunCollectionEntityCopyWithImpl(this._self, this._then);

  final ReportAmilPenghimpunCollectionEntity _self;
  final $Res Function(ReportAmilPenghimpunCollectionEntity) _then;

/// Create a copy of ReportAmilPenghimpunCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCollectedAmount = freezed,Object? totalDonationCount = freezed,Object? naturaCount = freezed,Object? cashCount = freezed,Object? pickupCompleted = freezed,Object? pickupFailed = freezed,Object? pickupActive = freezed,}) {
  return _then(_self.copyWith(
totalCollectedAmount: freezed == totalCollectedAmount ? _self.totalCollectedAmount : totalCollectedAmount // ignore: cast_nullable_to_non_nullable
as int?,totalDonationCount: freezed == totalDonationCount ? _self.totalDonationCount : totalDonationCount // ignore: cast_nullable_to_non_nullable
as int?,naturaCount: freezed == naturaCount ? _self.naturaCount : naturaCount // ignore: cast_nullable_to_non_nullable
as int?,cashCount: freezed == cashCount ? _self.cashCount : cashCount // ignore: cast_nullable_to_non_nullable
as int?,pickupCompleted: freezed == pickupCompleted ? _self.pickupCompleted : pickupCompleted // ignore: cast_nullable_to_non_nullable
as int?,pickupFailed: freezed == pickupFailed ? _self.pickupFailed : pickupFailed // ignore: cast_nullable_to_non_nullable
as int?,pickupActive: freezed == pickupActive ? _self.pickupActive : pickupActive // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportAmilPenghimpunCollectionEntity].
extension ReportAmilPenghimpunCollectionEntityPatterns on ReportAmilPenghimpunCollectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportAmilPenghimpunCollectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportAmilPenghimpunCollectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportAmilPenghimpunCollectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalCollectedAmount,  int? totalDonationCount,  int? naturaCount,  int? cashCount,  int? pickupCompleted,  int? pickupFailed,  int? pickupActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity() when $default != null:
return $default(_that.totalCollectedAmount,_that.totalDonationCount,_that.naturaCount,_that.cashCount,_that.pickupCompleted,_that.pickupFailed,_that.pickupActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalCollectedAmount,  int? totalDonationCount,  int? naturaCount,  int? cashCount,  int? pickupCompleted,  int? pickupFailed,  int? pickupActive)  $default,) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity():
return $default(_that.totalCollectedAmount,_that.totalDonationCount,_that.naturaCount,_that.cashCount,_that.pickupCompleted,_that.pickupFailed,_that.pickupActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalCollectedAmount,  int? totalDonationCount,  int? naturaCount,  int? cashCount,  int? pickupCompleted,  int? pickupFailed,  int? pickupActive)?  $default,) {final _that = this;
switch (_that) {
case _ReportAmilPenghimpunCollectionEntity() when $default != null:
return $default(_that.totalCollectedAmount,_that.totalDonationCount,_that.naturaCount,_that.cashCount,_that.pickupCompleted,_that.pickupFailed,_that.pickupActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportAmilPenghimpunCollectionEntity implements ReportAmilPenghimpunCollectionEntity {
  const _ReportAmilPenghimpunCollectionEntity({this.totalCollectedAmount, this.totalDonationCount, this.naturaCount, this.cashCount, this.pickupCompleted, this.pickupFailed, this.pickupActive});
  factory _ReportAmilPenghimpunCollectionEntity.fromJson(Map<String, dynamic> json) => _$ReportAmilPenghimpunCollectionEntityFromJson(json);

@override final  int? totalCollectedAmount;
@override final  int? totalDonationCount;
@override final  int? naturaCount;
@override final  int? cashCount;
@override final  int? pickupCompleted;
@override final  int? pickupFailed;
@override final  int? pickupActive;

/// Create a copy of ReportAmilPenghimpunCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportAmilPenghimpunCollectionEntityCopyWith<_ReportAmilPenghimpunCollectionEntity> get copyWith => __$ReportAmilPenghimpunCollectionEntityCopyWithImpl<_ReportAmilPenghimpunCollectionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportAmilPenghimpunCollectionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportAmilPenghimpunCollectionEntity&&(identical(other.totalCollectedAmount, totalCollectedAmount) || other.totalCollectedAmount == totalCollectedAmount)&&(identical(other.totalDonationCount, totalDonationCount) || other.totalDonationCount == totalDonationCount)&&(identical(other.naturaCount, naturaCount) || other.naturaCount == naturaCount)&&(identical(other.cashCount, cashCount) || other.cashCount == cashCount)&&(identical(other.pickupCompleted, pickupCompleted) || other.pickupCompleted == pickupCompleted)&&(identical(other.pickupFailed, pickupFailed) || other.pickupFailed == pickupFailed)&&(identical(other.pickupActive, pickupActive) || other.pickupActive == pickupActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCollectedAmount,totalDonationCount,naturaCount,cashCount,pickupCompleted,pickupFailed,pickupActive);

@override
String toString() {
  return 'ReportAmilPenghimpunCollectionEntity(totalCollectedAmount: $totalCollectedAmount, totalDonationCount: $totalDonationCount, naturaCount: $naturaCount, cashCount: $cashCount, pickupCompleted: $pickupCompleted, pickupFailed: $pickupFailed, pickupActive: $pickupActive)';
}


}

/// @nodoc
abstract mixin class _$ReportAmilPenghimpunCollectionEntityCopyWith<$Res> implements $ReportAmilPenghimpunCollectionEntityCopyWith<$Res> {
  factory _$ReportAmilPenghimpunCollectionEntityCopyWith(_ReportAmilPenghimpunCollectionEntity value, $Res Function(_ReportAmilPenghimpunCollectionEntity) _then) = __$ReportAmilPenghimpunCollectionEntityCopyWithImpl;
@override @useResult
$Res call({
 int? totalCollectedAmount, int? totalDonationCount, int? naturaCount, int? cashCount, int? pickupCompleted, int? pickupFailed, int? pickupActive
});




}
/// @nodoc
class __$ReportAmilPenghimpunCollectionEntityCopyWithImpl<$Res>
    implements _$ReportAmilPenghimpunCollectionEntityCopyWith<$Res> {
  __$ReportAmilPenghimpunCollectionEntityCopyWithImpl(this._self, this._then);

  final _ReportAmilPenghimpunCollectionEntity _self;
  final $Res Function(_ReportAmilPenghimpunCollectionEntity) _then;

/// Create a copy of ReportAmilPenghimpunCollectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCollectedAmount = freezed,Object? totalDonationCount = freezed,Object? naturaCount = freezed,Object? cashCount = freezed,Object? pickupCompleted = freezed,Object? pickupFailed = freezed,Object? pickupActive = freezed,}) {
  return _then(_ReportAmilPenghimpunCollectionEntity(
totalCollectedAmount: freezed == totalCollectedAmount ? _self.totalCollectedAmount : totalCollectedAmount // ignore: cast_nullable_to_non_nullable
as int?,totalDonationCount: freezed == totalDonationCount ? _self.totalDonationCount : totalDonationCount // ignore: cast_nullable_to_non_nullable
as int?,naturaCount: freezed == naturaCount ? _self.naturaCount : naturaCount // ignore: cast_nullable_to_non_nullable
as int?,cashCount: freezed == cashCount ? _self.cashCount : cashCount // ignore: cast_nullable_to_non_nullable
as int?,pickupCompleted: freezed == pickupCompleted ? _self.pickupCompleted : pickupCompleted // ignore: cast_nullable_to_non_nullable
as int?,pickupFailed: freezed == pickupFailed ? _self.pickupFailed : pickupFailed // ignore: cast_nullable_to_non_nullable
as int?,pickupActive: freezed == pickupActive ? _self.pickupActive : pickupActive // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
