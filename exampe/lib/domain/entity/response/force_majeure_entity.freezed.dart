// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'force_majeure_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForceMajeureEntity {

 int? get id; String? get title; String? get description; int? get budgetCeiling; int? get spentAmount; String? get status; double? get latitude; double? get longitude; String? get startDate; String? get endDate;
/// Create a copy of ForceMajeureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceMajeureEntityCopyWith<ForceMajeureEntity> get copyWith => _$ForceMajeureEntityCopyWithImpl<ForceMajeureEntity>(this as ForceMajeureEntity, _$identity);

  /// Serializes this ForceMajeureEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceMajeureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.budgetCeiling, budgetCeiling) || other.budgetCeiling == budgetCeiling)&&(identical(other.spentAmount, spentAmount) || other.spentAmount == spentAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,budgetCeiling,spentAmount,status,latitude,longitude,startDate,endDate);

@override
String toString() {
  return 'ForceMajeureEntity(id: $id, title: $title, description: $description, budgetCeiling: $budgetCeiling, spentAmount: $spentAmount, status: $status, latitude: $latitude, longitude: $longitude, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ForceMajeureEntityCopyWith<$Res>  {
  factory $ForceMajeureEntityCopyWith(ForceMajeureEntity value, $Res Function(ForceMajeureEntity) _then) = _$ForceMajeureEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? description, int? budgetCeiling, int? spentAmount, String? status, double? latitude, double? longitude, String? startDate, String? endDate
});




}
/// @nodoc
class _$ForceMajeureEntityCopyWithImpl<$Res>
    implements $ForceMajeureEntityCopyWith<$Res> {
  _$ForceMajeureEntityCopyWithImpl(this._self, this._then);

  final ForceMajeureEntity _self;
  final $Res Function(ForceMajeureEntity) _then;

/// Create a copy of ForceMajeureEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? budgetCeiling = freezed,Object? spentAmount = freezed,Object? status = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,budgetCeiling: freezed == budgetCeiling ? _self.budgetCeiling : budgetCeiling // ignore: cast_nullable_to_non_nullable
as int?,spentAmount: freezed == spentAmount ? _self.spentAmount : spentAmount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForceMajeureEntity].
extension ForceMajeureEntityPatterns on ForceMajeureEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForceMajeureEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForceMajeureEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForceMajeureEntity value)  $default,){
final _that = this;
switch (_that) {
case _ForceMajeureEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForceMajeureEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ForceMajeureEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? description,  int? budgetCeiling,  int? spentAmount,  String? status,  double? latitude,  double? longitude,  String? startDate,  String? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForceMajeureEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.budgetCeiling,_that.spentAmount,_that.status,_that.latitude,_that.longitude,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? description,  int? budgetCeiling,  int? spentAmount,  String? status,  double? latitude,  double? longitude,  String? startDate,  String? endDate)  $default,) {final _that = this;
switch (_that) {
case _ForceMajeureEntity():
return $default(_that.id,_that.title,_that.description,_that.budgetCeiling,_that.spentAmount,_that.status,_that.latitude,_that.longitude,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? description,  int? budgetCeiling,  int? spentAmount,  String? status,  double? latitude,  double? longitude,  String? startDate,  String? endDate)?  $default,) {final _that = this;
switch (_that) {
case _ForceMajeureEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.budgetCeiling,_that.spentAmount,_that.status,_that.latitude,_that.longitude,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForceMajeureEntity implements ForceMajeureEntity {
  const _ForceMajeureEntity({this.id, this.title, this.description, this.budgetCeiling, this.spentAmount, this.status, this.latitude, this.longitude, this.startDate, this.endDate});
  factory _ForceMajeureEntity.fromJson(Map<String, dynamic> json) => _$ForceMajeureEntityFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? description;
@override final  int? budgetCeiling;
@override final  int? spentAmount;
@override final  String? status;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? startDate;
@override final  String? endDate;

/// Create a copy of ForceMajeureEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForceMajeureEntityCopyWith<_ForceMajeureEntity> get copyWith => __$ForceMajeureEntityCopyWithImpl<_ForceMajeureEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForceMajeureEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForceMajeureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.budgetCeiling, budgetCeiling) || other.budgetCeiling == budgetCeiling)&&(identical(other.spentAmount, spentAmount) || other.spentAmount == spentAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,budgetCeiling,spentAmount,status,latitude,longitude,startDate,endDate);

@override
String toString() {
  return 'ForceMajeureEntity(id: $id, title: $title, description: $description, budgetCeiling: $budgetCeiling, spentAmount: $spentAmount, status: $status, latitude: $latitude, longitude: $longitude, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ForceMajeureEntityCopyWith<$Res> implements $ForceMajeureEntityCopyWith<$Res> {
  factory _$ForceMajeureEntityCopyWith(_ForceMajeureEntity value, $Res Function(_ForceMajeureEntity) _then) = __$ForceMajeureEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? description, int? budgetCeiling, int? spentAmount, String? status, double? latitude, double? longitude, String? startDate, String? endDate
});




}
/// @nodoc
class __$ForceMajeureEntityCopyWithImpl<$Res>
    implements _$ForceMajeureEntityCopyWith<$Res> {
  __$ForceMajeureEntityCopyWithImpl(this._self, this._then);

  final _ForceMajeureEntity _self;
  final $Res Function(_ForceMajeureEntity) _then;

/// Create a copy of ForceMajeureEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? budgetCeiling = freezed,Object? spentAmount = freezed,Object? status = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_ForceMajeureEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,budgetCeiling: freezed == budgetCeiling ? _self.budgetCeiling : budgetCeiling // ignore: cast_nullable_to_non_nullable
as int?,spentAmount: freezed == spentAmount ? _self.spentAmount : spentAmount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
