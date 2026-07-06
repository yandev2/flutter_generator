// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programs_item_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProgramsItemListEntity {

 int? get id; String? get name; String? get description; int? get targetAmount; bool? get isZakatFitrah; String? get bannerUrl; bool? get isActive; String? get endDate; double? get percentTarget; List<String>? get donatur;
/// Create a copy of ProgramsItemListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgramsItemListEntityCopyWith<ProgramsItemListEntity> get copyWith => _$ProgramsItemListEntityCopyWithImpl<ProgramsItemListEntity>(this as ProgramsItemListEntity, _$identity);

  /// Serializes this ProgramsItemListEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProgramsItemListEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.isZakatFitrah, isZakatFitrah) || other.isZakatFitrah == isZakatFitrah)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.percentTarget, percentTarget) || other.percentTarget == percentTarget)&&const DeepCollectionEquality().equals(other.donatur, donatur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,targetAmount,isZakatFitrah,bannerUrl,isActive,endDate,percentTarget,const DeepCollectionEquality().hash(donatur));

@override
String toString() {
  return 'ProgramsItemListEntity(id: $id, name: $name, description: $description, targetAmount: $targetAmount, isZakatFitrah: $isZakatFitrah, bannerUrl: $bannerUrl, isActive: $isActive, endDate: $endDate, percentTarget: $percentTarget, donatur: $donatur)';
}


}

/// @nodoc
abstract mixin class $ProgramsItemListEntityCopyWith<$Res>  {
  factory $ProgramsItemListEntityCopyWith(ProgramsItemListEntity value, $Res Function(ProgramsItemListEntity) _then) = _$ProgramsItemListEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? description, int? targetAmount, bool? isZakatFitrah, String? bannerUrl, bool? isActive, String? endDate, double? percentTarget, List<String>? donatur
});




}
/// @nodoc
class _$ProgramsItemListEntityCopyWithImpl<$Res>
    implements $ProgramsItemListEntityCopyWith<$Res> {
  _$ProgramsItemListEntityCopyWithImpl(this._self, this._then);

  final ProgramsItemListEntity _self;
  final $Res Function(ProgramsItemListEntity) _then;

/// Create a copy of ProgramsItemListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? targetAmount = freezed,Object? isZakatFitrah = freezed,Object? bannerUrl = freezed,Object? isActive = freezed,Object? endDate = freezed,Object? percentTarget = freezed,Object? donatur = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: freezed == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as int?,isZakatFitrah: freezed == isZakatFitrah ? _self.isZakatFitrah : isZakatFitrah // ignore: cast_nullable_to_non_nullable
as bool?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,percentTarget: freezed == percentTarget ? _self.percentTarget : percentTarget // ignore: cast_nullable_to_non_nullable
as double?,donatur: freezed == donatur ? _self.donatur : donatur // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProgramsItemListEntity].
extension ProgramsItemListEntityPatterns on ProgramsItemListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProgramsItemListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProgramsItemListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProgramsItemListEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProgramsItemListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProgramsItemListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProgramsItemListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description,  int? targetAmount,  bool? isZakatFitrah,  String? bannerUrl,  bool? isActive,  String? endDate,  double? percentTarget,  List<String>? donatur)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProgramsItemListEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.isZakatFitrah,_that.bannerUrl,_that.isActive,_that.endDate,_that.percentTarget,_that.donatur);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? description,  int? targetAmount,  bool? isZakatFitrah,  String? bannerUrl,  bool? isActive,  String? endDate,  double? percentTarget,  List<String>? donatur)  $default,) {final _that = this;
switch (_that) {
case _ProgramsItemListEntity():
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.isZakatFitrah,_that.bannerUrl,_that.isActive,_that.endDate,_that.percentTarget,_that.donatur);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? description,  int? targetAmount,  bool? isZakatFitrah,  String? bannerUrl,  bool? isActive,  String? endDate,  double? percentTarget,  List<String>? donatur)?  $default,) {final _that = this;
switch (_that) {
case _ProgramsItemListEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.targetAmount,_that.isZakatFitrah,_that.bannerUrl,_that.isActive,_that.endDate,_that.percentTarget,_that.donatur);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProgramsItemListEntity implements ProgramsItemListEntity {
  const _ProgramsItemListEntity({this.id, this.name, this.description, this.targetAmount, this.isZakatFitrah, this.bannerUrl, this.isActive, this.endDate, this.percentTarget, final  List<String>? donatur}): _donatur = donatur;
  factory _ProgramsItemListEntity.fromJson(Map<String, dynamic> json) => _$ProgramsItemListEntityFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? description;
@override final  int? targetAmount;
@override final  bool? isZakatFitrah;
@override final  String? bannerUrl;
@override final  bool? isActive;
@override final  String? endDate;
@override final  double? percentTarget;
 final  List<String>? _donatur;
@override List<String>? get donatur {
  final value = _donatur;
  if (value == null) return null;
  if (_donatur is EqualUnmodifiableListView) return _donatur;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProgramsItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgramsItemListEntityCopyWith<_ProgramsItemListEntity> get copyWith => __$ProgramsItemListEntityCopyWithImpl<_ProgramsItemListEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProgramsItemListEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProgramsItemListEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.isZakatFitrah, isZakatFitrah) || other.isZakatFitrah == isZakatFitrah)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.percentTarget, percentTarget) || other.percentTarget == percentTarget)&&const DeepCollectionEquality().equals(other._donatur, _donatur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,targetAmount,isZakatFitrah,bannerUrl,isActive,endDate,percentTarget,const DeepCollectionEquality().hash(_donatur));

@override
String toString() {
  return 'ProgramsItemListEntity(id: $id, name: $name, description: $description, targetAmount: $targetAmount, isZakatFitrah: $isZakatFitrah, bannerUrl: $bannerUrl, isActive: $isActive, endDate: $endDate, percentTarget: $percentTarget, donatur: $donatur)';
}


}

/// @nodoc
abstract mixin class _$ProgramsItemListEntityCopyWith<$Res> implements $ProgramsItemListEntityCopyWith<$Res> {
  factory _$ProgramsItemListEntityCopyWith(_ProgramsItemListEntity value, $Res Function(_ProgramsItemListEntity) _then) = __$ProgramsItemListEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? description, int? targetAmount, bool? isZakatFitrah, String? bannerUrl, bool? isActive, String? endDate, double? percentTarget, List<String>? donatur
});




}
/// @nodoc
class __$ProgramsItemListEntityCopyWithImpl<$Res>
    implements _$ProgramsItemListEntityCopyWith<$Res> {
  __$ProgramsItemListEntityCopyWithImpl(this._self, this._then);

  final _ProgramsItemListEntity _self;
  final $Res Function(_ProgramsItemListEntity) _then;

/// Create a copy of ProgramsItemListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? targetAmount = freezed,Object? isZakatFitrah = freezed,Object? bannerUrl = freezed,Object? isActive = freezed,Object? endDate = freezed,Object? percentTarget = freezed,Object? donatur = freezed,}) {
  return _then(_ProgramsItemListEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: freezed == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as int?,isZakatFitrah: freezed == isZakatFitrah ? _self.isZakatFitrah : isZakatFitrah // ignore: cast_nullable_to_non_nullable
as bool?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,percentTarget: freezed == percentTarget ? _self.percentTarget : percentTarget // ignore: cast_nullable_to_non_nullable
as double?,donatur: freezed == donatur ? _self._donatur : donatur // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
