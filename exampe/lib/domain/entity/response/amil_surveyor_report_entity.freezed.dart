// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amil_surveyor_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AmilSurveyorReportEntity {

 AmilInfoEntity? get amilInfo; ReportSurveyorPeriodEntity? get period; ReportSurveyorSurveyEntity? get survey; int? get totalSurveyCompleted; String? get reportDownloadUrl;
/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmilSurveyorReportEntityCopyWith<AmilSurveyorReportEntity> get copyWith => _$AmilSurveyorReportEntityCopyWithImpl<AmilSurveyorReportEntity>(this as AmilSurveyorReportEntity, _$identity);

  /// Serializes this AmilSurveyorReportEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmilSurveyorReportEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.period, period) || other.period == period)&&(identical(other.survey, survey) || other.survey == survey)&&(identical(other.totalSurveyCompleted, totalSurveyCompleted) || other.totalSurveyCompleted == totalSurveyCompleted)&&(identical(other.reportDownloadUrl, reportDownloadUrl) || other.reportDownloadUrl == reportDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,period,survey,totalSurveyCompleted,reportDownloadUrl);

@override
String toString() {
  return 'AmilSurveyorReportEntity(amilInfo: $amilInfo, period: $period, survey: $survey, totalSurveyCompleted: $totalSurveyCompleted, reportDownloadUrl: $reportDownloadUrl)';
}


}

/// @nodoc
abstract mixin class $AmilSurveyorReportEntityCopyWith<$Res>  {
  factory $AmilSurveyorReportEntityCopyWith(AmilSurveyorReportEntity value, $Res Function(AmilSurveyorReportEntity) _then) = _$AmilSurveyorReportEntityCopyWithImpl;
@useResult
$Res call({
 AmilInfoEntity? amilInfo, ReportSurveyorPeriodEntity? period, ReportSurveyorSurveyEntity? survey, int? totalSurveyCompleted, String? reportDownloadUrl
});


$AmilInfoEntityCopyWith<$Res>? get amilInfo;$ReportSurveyorPeriodEntityCopyWith<$Res>? get period;$ReportSurveyorSurveyEntityCopyWith<$Res>? get survey;

}
/// @nodoc
class _$AmilSurveyorReportEntityCopyWithImpl<$Res>
    implements $AmilSurveyorReportEntityCopyWith<$Res> {
  _$AmilSurveyorReportEntityCopyWithImpl(this._self, this._then);

  final AmilSurveyorReportEntity _self;
  final $Res Function(AmilSurveyorReportEntity) _then;

/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amilInfo = freezed,Object? period = freezed,Object? survey = freezed,Object? totalSurveyCompleted = freezed,Object? reportDownloadUrl = freezed,}) {
  return _then(_self.copyWith(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportSurveyorPeriodEntity?,survey: freezed == survey ? _self.survey : survey // ignore: cast_nullable_to_non_nullable
as ReportSurveyorSurveyEntity?,totalSurveyCompleted: freezed == totalSurveyCompleted ? _self.totalSurveyCompleted : totalSurveyCompleted // ignore: cast_nullable_to_non_nullable
as int?,reportDownloadUrl: freezed == reportDownloadUrl ? _self.reportDownloadUrl : reportDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AmilSurveyorReportEntity
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
}/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportSurveyorPeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportSurveyorPeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportSurveyorSurveyEntityCopyWith<$Res>? get survey {
    if (_self.survey == null) {
    return null;
  }

  return $ReportSurveyorSurveyEntityCopyWith<$Res>(_self.survey!, (value) {
    return _then(_self.copyWith(survey: value));
  });
}
}


/// Adds pattern-matching-related methods to [AmilSurveyorReportEntity].
extension AmilSurveyorReportEntityPatterns on AmilSurveyorReportEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmilSurveyorReportEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmilSurveyorReportEntity value)  $default,){
final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmilSurveyorReportEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  ReportSurveyorPeriodEntity? period,  ReportSurveyorSurveyEntity? survey,  int? totalSurveyCompleted,  String? reportDownloadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity() when $default != null:
return $default(_that.amilInfo,_that.period,_that.survey,_that.totalSurveyCompleted,_that.reportDownloadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AmilInfoEntity? amilInfo,  ReportSurveyorPeriodEntity? period,  ReportSurveyorSurveyEntity? survey,  int? totalSurveyCompleted,  String? reportDownloadUrl)  $default,) {final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity():
return $default(_that.amilInfo,_that.period,_that.survey,_that.totalSurveyCompleted,_that.reportDownloadUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AmilInfoEntity? amilInfo,  ReportSurveyorPeriodEntity? period,  ReportSurveyorSurveyEntity? survey,  int? totalSurveyCompleted,  String? reportDownloadUrl)?  $default,) {final _that = this;
switch (_that) {
case _AmilSurveyorReportEntity() when $default != null:
return $default(_that.amilInfo,_that.period,_that.survey,_that.totalSurveyCompleted,_that.reportDownloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmilSurveyorReportEntity implements AmilSurveyorReportEntity {
  const _AmilSurveyorReportEntity({this.amilInfo, this.period, this.survey, this.totalSurveyCompleted, this.reportDownloadUrl});
  factory _AmilSurveyorReportEntity.fromJson(Map<String, dynamic> json) => _$AmilSurveyorReportEntityFromJson(json);

@override final  AmilInfoEntity? amilInfo;
@override final  ReportSurveyorPeriodEntity? period;
@override final  ReportSurveyorSurveyEntity? survey;
@override final  int? totalSurveyCompleted;
@override final  String? reportDownloadUrl;

/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmilSurveyorReportEntityCopyWith<_AmilSurveyorReportEntity> get copyWith => __$AmilSurveyorReportEntityCopyWithImpl<_AmilSurveyorReportEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmilSurveyorReportEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmilSurveyorReportEntity&&(identical(other.amilInfo, amilInfo) || other.amilInfo == amilInfo)&&(identical(other.period, period) || other.period == period)&&(identical(other.survey, survey) || other.survey == survey)&&(identical(other.totalSurveyCompleted, totalSurveyCompleted) || other.totalSurveyCompleted == totalSurveyCompleted)&&(identical(other.reportDownloadUrl, reportDownloadUrl) || other.reportDownloadUrl == reportDownloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amilInfo,period,survey,totalSurveyCompleted,reportDownloadUrl);

@override
String toString() {
  return 'AmilSurveyorReportEntity(amilInfo: $amilInfo, period: $period, survey: $survey, totalSurveyCompleted: $totalSurveyCompleted, reportDownloadUrl: $reportDownloadUrl)';
}


}

/// @nodoc
abstract mixin class _$AmilSurveyorReportEntityCopyWith<$Res> implements $AmilSurveyorReportEntityCopyWith<$Res> {
  factory _$AmilSurveyorReportEntityCopyWith(_AmilSurveyorReportEntity value, $Res Function(_AmilSurveyorReportEntity) _then) = __$AmilSurveyorReportEntityCopyWithImpl;
@override @useResult
$Res call({
 AmilInfoEntity? amilInfo, ReportSurveyorPeriodEntity? period, ReportSurveyorSurveyEntity? survey, int? totalSurveyCompleted, String? reportDownloadUrl
});


@override $AmilInfoEntityCopyWith<$Res>? get amilInfo;@override $ReportSurveyorPeriodEntityCopyWith<$Res>? get period;@override $ReportSurveyorSurveyEntityCopyWith<$Res>? get survey;

}
/// @nodoc
class __$AmilSurveyorReportEntityCopyWithImpl<$Res>
    implements _$AmilSurveyorReportEntityCopyWith<$Res> {
  __$AmilSurveyorReportEntityCopyWithImpl(this._self, this._then);

  final _AmilSurveyorReportEntity _self;
  final $Res Function(_AmilSurveyorReportEntity) _then;

/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amilInfo = freezed,Object? period = freezed,Object? survey = freezed,Object? totalSurveyCompleted = freezed,Object? reportDownloadUrl = freezed,}) {
  return _then(_AmilSurveyorReportEntity(
amilInfo: freezed == amilInfo ? _self.amilInfo : amilInfo // ignore: cast_nullable_to_non_nullable
as AmilInfoEntity?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportSurveyorPeriodEntity?,survey: freezed == survey ? _self.survey : survey // ignore: cast_nullable_to_non_nullable
as ReportSurveyorSurveyEntity?,totalSurveyCompleted: freezed == totalSurveyCompleted ? _self.totalSurveyCompleted : totalSurveyCompleted // ignore: cast_nullable_to_non_nullable
as int?,reportDownloadUrl: freezed == reportDownloadUrl ? _self.reportDownloadUrl : reportDownloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AmilSurveyorReportEntity
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
}/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportSurveyorPeriodEntityCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportSurveyorPeriodEntityCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of AmilSurveyorReportEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportSurveyorSurveyEntityCopyWith<$Res>? get survey {
    if (_self.survey == null) {
    return null;
  }

  return $ReportSurveyorSurveyEntityCopyWith<$Res>(_self.survey!, (value) {
    return _then(_self.copyWith(survey: value));
  });
}
}


/// @nodoc
mixin _$ReportSurveyorPeriodEntity {

 int? get month; int? get year; String? get startDate; String? get endDate;
/// Create a copy of ReportSurveyorPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportSurveyorPeriodEntityCopyWith<ReportSurveyorPeriodEntity> get copyWith => _$ReportSurveyorPeriodEntityCopyWithImpl<ReportSurveyorPeriodEntity>(this as ReportSurveyorPeriodEntity, _$identity);

  /// Serializes this ReportSurveyorPeriodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportSurveyorPeriodEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,startDate,endDate);

@override
String toString() {
  return 'ReportSurveyorPeriodEntity(month: $month, year: $year, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ReportSurveyorPeriodEntityCopyWith<$Res>  {
  factory $ReportSurveyorPeriodEntityCopyWith(ReportSurveyorPeriodEntity value, $Res Function(ReportSurveyorPeriodEntity) _then) = _$ReportSurveyorPeriodEntityCopyWithImpl;
@useResult
$Res call({
 int? month, int? year, String? startDate, String? endDate
});




}
/// @nodoc
class _$ReportSurveyorPeriodEntityCopyWithImpl<$Res>
    implements $ReportSurveyorPeriodEntityCopyWith<$Res> {
  _$ReportSurveyorPeriodEntityCopyWithImpl(this._self, this._then);

  final ReportSurveyorPeriodEntity _self;
  final $Res Function(ReportSurveyorPeriodEntity) _then;

/// Create a copy of ReportSurveyorPeriodEntity
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


/// Adds pattern-matching-related methods to [ReportSurveyorPeriodEntity].
extension ReportSurveyorPeriodEntityPatterns on ReportSurveyorPeriodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportSurveyorPeriodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportSurveyorPeriodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportSurveyorPeriodEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReportSurveyorPeriodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportSurveyorPeriodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReportSurveyorPeriodEntity() when $default != null:
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
case _ReportSurveyorPeriodEntity() when $default != null:
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
case _ReportSurveyorPeriodEntity():
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
case _ReportSurveyorPeriodEntity() when $default != null:
return $default(_that.month,_that.year,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportSurveyorPeriodEntity implements ReportSurveyorPeriodEntity {
  const _ReportSurveyorPeriodEntity({this.month, this.year, this.startDate, this.endDate});
  factory _ReportSurveyorPeriodEntity.fromJson(Map<String, dynamic> json) => _$ReportSurveyorPeriodEntityFromJson(json);

@override final  int? month;
@override final  int? year;
@override final  String? startDate;
@override final  String? endDate;

/// Create a copy of ReportSurveyorPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportSurveyorPeriodEntityCopyWith<_ReportSurveyorPeriodEntity> get copyWith => __$ReportSurveyorPeriodEntityCopyWithImpl<_ReportSurveyorPeriodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportSurveyorPeriodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportSurveyorPeriodEntity&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,startDate,endDate);

@override
String toString() {
  return 'ReportSurveyorPeriodEntity(month: $month, year: $year, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ReportSurveyorPeriodEntityCopyWith<$Res> implements $ReportSurveyorPeriodEntityCopyWith<$Res> {
  factory _$ReportSurveyorPeriodEntityCopyWith(_ReportSurveyorPeriodEntity value, $Res Function(_ReportSurveyorPeriodEntity) _then) = __$ReportSurveyorPeriodEntityCopyWithImpl;
@override @useResult
$Res call({
 int? month, int? year, String? startDate, String? endDate
});




}
/// @nodoc
class __$ReportSurveyorPeriodEntityCopyWithImpl<$Res>
    implements _$ReportSurveyorPeriodEntityCopyWith<$Res> {
  __$ReportSurveyorPeriodEntityCopyWithImpl(this._self, this._then);

  final _ReportSurveyorPeriodEntity _self;
  final $Res Function(_ReportSurveyorPeriodEntity) _then;

/// Create a copy of ReportSurveyorPeriodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = freezed,Object? year = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_ReportSurveyorPeriodEntity(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportSurveyorSurveyEntity {

 int? get totalSurvey; int? get completed; int? get pendingReview; int? get draft;
/// Create a copy of ReportSurveyorSurveyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportSurveyorSurveyEntityCopyWith<ReportSurveyorSurveyEntity> get copyWith => _$ReportSurveyorSurveyEntityCopyWithImpl<ReportSurveyorSurveyEntity>(this as ReportSurveyorSurveyEntity, _$identity);

  /// Serializes this ReportSurveyorSurveyEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportSurveyorSurveyEntity&&(identical(other.totalSurvey, totalSurvey) || other.totalSurvey == totalSurvey)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.pendingReview, pendingReview) || other.pendingReview == pendingReview)&&(identical(other.draft, draft) || other.draft == draft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSurvey,completed,pendingReview,draft);

@override
String toString() {
  return 'ReportSurveyorSurveyEntity(totalSurvey: $totalSurvey, completed: $completed, pendingReview: $pendingReview, draft: $draft)';
}


}

/// @nodoc
abstract mixin class $ReportSurveyorSurveyEntityCopyWith<$Res>  {
  factory $ReportSurveyorSurveyEntityCopyWith(ReportSurveyorSurveyEntity value, $Res Function(ReportSurveyorSurveyEntity) _then) = _$ReportSurveyorSurveyEntityCopyWithImpl;
@useResult
$Res call({
 int? totalSurvey, int? completed, int? pendingReview, int? draft
});




}
/// @nodoc
class _$ReportSurveyorSurveyEntityCopyWithImpl<$Res>
    implements $ReportSurveyorSurveyEntityCopyWith<$Res> {
  _$ReportSurveyorSurveyEntityCopyWithImpl(this._self, this._then);

  final ReportSurveyorSurveyEntity _self;
  final $Res Function(ReportSurveyorSurveyEntity) _then;

/// Create a copy of ReportSurveyorSurveyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSurvey = freezed,Object? completed = freezed,Object? pendingReview = freezed,Object? draft = freezed,}) {
  return _then(_self.copyWith(
totalSurvey: freezed == totalSurvey ? _self.totalSurvey : totalSurvey // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int?,pendingReview: freezed == pendingReview ? _self.pendingReview : pendingReview // ignore: cast_nullable_to_non_nullable
as int?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportSurveyorSurveyEntity].
extension ReportSurveyorSurveyEntityPatterns on ReportSurveyorSurveyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportSurveyorSurveyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportSurveyorSurveyEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportSurveyorSurveyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalSurvey,  int? completed,  int? pendingReview,  int? draft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity() when $default != null:
return $default(_that.totalSurvey,_that.completed,_that.pendingReview,_that.draft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalSurvey,  int? completed,  int? pendingReview,  int? draft)  $default,) {final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity():
return $default(_that.totalSurvey,_that.completed,_that.pendingReview,_that.draft);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalSurvey,  int? completed,  int? pendingReview,  int? draft)?  $default,) {final _that = this;
switch (_that) {
case _ReportSurveyorSurveyEntity() when $default != null:
return $default(_that.totalSurvey,_that.completed,_that.pendingReview,_that.draft);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportSurveyorSurveyEntity implements ReportSurveyorSurveyEntity {
  const _ReportSurveyorSurveyEntity({this.totalSurvey, this.completed, this.pendingReview, this.draft});
  factory _ReportSurveyorSurveyEntity.fromJson(Map<String, dynamic> json) => _$ReportSurveyorSurveyEntityFromJson(json);

@override final  int? totalSurvey;
@override final  int? completed;
@override final  int? pendingReview;
@override final  int? draft;

/// Create a copy of ReportSurveyorSurveyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportSurveyorSurveyEntityCopyWith<_ReportSurveyorSurveyEntity> get copyWith => __$ReportSurveyorSurveyEntityCopyWithImpl<_ReportSurveyorSurveyEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportSurveyorSurveyEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportSurveyorSurveyEntity&&(identical(other.totalSurvey, totalSurvey) || other.totalSurvey == totalSurvey)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.pendingReview, pendingReview) || other.pendingReview == pendingReview)&&(identical(other.draft, draft) || other.draft == draft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSurvey,completed,pendingReview,draft);

@override
String toString() {
  return 'ReportSurveyorSurveyEntity(totalSurvey: $totalSurvey, completed: $completed, pendingReview: $pendingReview, draft: $draft)';
}


}

/// @nodoc
abstract mixin class _$ReportSurveyorSurveyEntityCopyWith<$Res> implements $ReportSurveyorSurveyEntityCopyWith<$Res> {
  factory _$ReportSurveyorSurveyEntityCopyWith(_ReportSurveyorSurveyEntity value, $Res Function(_ReportSurveyorSurveyEntity) _then) = __$ReportSurveyorSurveyEntityCopyWithImpl;
@override @useResult
$Res call({
 int? totalSurvey, int? completed, int? pendingReview, int? draft
});




}
/// @nodoc
class __$ReportSurveyorSurveyEntityCopyWithImpl<$Res>
    implements _$ReportSurveyorSurveyEntityCopyWith<$Res> {
  __$ReportSurveyorSurveyEntityCopyWithImpl(this._self, this._then);

  final _ReportSurveyorSurveyEntity _self;
  final $Res Function(_ReportSurveyorSurveyEntity) _then;

/// Create a copy of ReportSurveyorSurveyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSurvey = freezed,Object? completed = freezed,Object? pendingReview = freezed,Object? draft = freezed,}) {
  return _then(_ReportSurveyorSurveyEntity(
totalSurvey: freezed == totalSurvey ? _self.totalSurvey : totalSurvey // ignore: cast_nullable_to_non_nullable
as int?,completed: freezed == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int?,pendingReview: freezed == pendingReview ? _self.pendingReview : pendingReview // ignore: cast_nullable_to_non_nullable
as int?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
