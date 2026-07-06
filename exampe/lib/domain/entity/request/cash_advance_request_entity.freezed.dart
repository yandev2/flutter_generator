// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cash_advance_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CashAdvanceRequestEntity {

 int? get upzId; int? get fundTypeId; int? get forceMajeureId; int? get amount; String? get purpose; String? get requestDate; String? get dueDate;
/// Create a copy of CashAdvanceRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashAdvanceRequestEntityCopyWith<CashAdvanceRequestEntity> get copyWith => _$CashAdvanceRequestEntityCopyWithImpl<CashAdvanceRequestEntity>(this as CashAdvanceRequestEntity, _$identity);

  /// Serializes this CashAdvanceRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashAdvanceRequestEntity&&(identical(other.upzId, upzId) || other.upzId == upzId)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.forceMajeureId, forceMajeureId) || other.forceMajeureId == forceMajeureId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,upzId,fundTypeId,forceMajeureId,amount,purpose,requestDate,dueDate);

@override
String toString() {
  return 'CashAdvanceRequestEntity(upzId: $upzId, fundTypeId: $fundTypeId, forceMajeureId: $forceMajeureId, amount: $amount, purpose: $purpose, requestDate: $requestDate, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class $CashAdvanceRequestEntityCopyWith<$Res>  {
  factory $CashAdvanceRequestEntityCopyWith(CashAdvanceRequestEntity value, $Res Function(CashAdvanceRequestEntity) _then) = _$CashAdvanceRequestEntityCopyWithImpl;
@useResult
$Res call({
 int? upzId, int? fundTypeId, int? forceMajeureId, int? amount, String? purpose, String? requestDate, String? dueDate
});




}
/// @nodoc
class _$CashAdvanceRequestEntityCopyWithImpl<$Res>
    implements $CashAdvanceRequestEntityCopyWith<$Res> {
  _$CashAdvanceRequestEntityCopyWithImpl(this._self, this._then);

  final CashAdvanceRequestEntity _self;
  final $Res Function(CashAdvanceRequestEntity) _then;

/// Create a copy of CashAdvanceRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? upzId = freezed,Object? fundTypeId = freezed,Object? forceMajeureId = freezed,Object? amount = freezed,Object? purpose = freezed,Object? requestDate = freezed,Object? dueDate = freezed,}) {
  return _then(_self.copyWith(
upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,forceMajeureId: freezed == forceMajeureId ? _self.forceMajeureId : forceMajeureId // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,requestDate: freezed == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CashAdvanceRequestEntity].
extension CashAdvanceRequestEntityPatterns on CashAdvanceRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashAdvanceRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashAdvanceRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashAdvanceRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? upzId,  int? fundTypeId,  int? forceMajeureId,  int? amount,  String? purpose,  String? requestDate,  String? dueDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity() when $default != null:
return $default(_that.upzId,_that.fundTypeId,_that.forceMajeureId,_that.amount,_that.purpose,_that.requestDate,_that.dueDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? upzId,  int? fundTypeId,  int? forceMajeureId,  int? amount,  String? purpose,  String? requestDate,  String? dueDate)  $default,) {final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity():
return $default(_that.upzId,_that.fundTypeId,_that.forceMajeureId,_that.amount,_that.purpose,_that.requestDate,_that.dueDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? upzId,  int? fundTypeId,  int? forceMajeureId,  int? amount,  String? purpose,  String? requestDate,  String? dueDate)?  $default,) {final _that = this;
switch (_that) {
case _CashAdvanceRequestEntity() when $default != null:
return $default(_that.upzId,_that.fundTypeId,_that.forceMajeureId,_that.amount,_that.purpose,_that.requestDate,_that.dueDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CashAdvanceRequestEntity implements CashAdvanceRequestEntity {
  const _CashAdvanceRequestEntity({this.upzId, this.fundTypeId, this.forceMajeureId, this.amount, this.purpose, this.requestDate, this.dueDate});
  factory _CashAdvanceRequestEntity.fromJson(Map<String, dynamic> json) => _$CashAdvanceRequestEntityFromJson(json);

@override final  int? upzId;
@override final  int? fundTypeId;
@override final  int? forceMajeureId;
@override final  int? amount;
@override final  String? purpose;
@override final  String? requestDate;
@override final  String? dueDate;

/// Create a copy of CashAdvanceRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashAdvanceRequestEntityCopyWith<_CashAdvanceRequestEntity> get copyWith => __$CashAdvanceRequestEntityCopyWithImpl<_CashAdvanceRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashAdvanceRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashAdvanceRequestEntity&&(identical(other.upzId, upzId) || other.upzId == upzId)&&(identical(other.fundTypeId, fundTypeId) || other.fundTypeId == fundTypeId)&&(identical(other.forceMajeureId, forceMajeureId) || other.forceMajeureId == forceMajeureId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,upzId,fundTypeId,forceMajeureId,amount,purpose,requestDate,dueDate);

@override
String toString() {
  return 'CashAdvanceRequestEntity(upzId: $upzId, fundTypeId: $fundTypeId, forceMajeureId: $forceMajeureId, amount: $amount, purpose: $purpose, requestDate: $requestDate, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class _$CashAdvanceRequestEntityCopyWith<$Res> implements $CashAdvanceRequestEntityCopyWith<$Res> {
  factory _$CashAdvanceRequestEntityCopyWith(_CashAdvanceRequestEntity value, $Res Function(_CashAdvanceRequestEntity) _then) = __$CashAdvanceRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int? upzId, int? fundTypeId, int? forceMajeureId, int? amount, String? purpose, String? requestDate, String? dueDate
});




}
/// @nodoc
class __$CashAdvanceRequestEntityCopyWithImpl<$Res>
    implements _$CashAdvanceRequestEntityCopyWith<$Res> {
  __$CashAdvanceRequestEntityCopyWithImpl(this._self, this._then);

  final _CashAdvanceRequestEntity _self;
  final $Res Function(_CashAdvanceRequestEntity) _then;

/// Create a copy of CashAdvanceRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? upzId = freezed,Object? fundTypeId = freezed,Object? forceMajeureId = freezed,Object? amount = freezed,Object? purpose = freezed,Object? requestDate = freezed,Object? dueDate = freezed,}) {
  return _then(_CashAdvanceRequestEntity(
upzId: freezed == upzId ? _self.upzId : upzId // ignore: cast_nullable_to_non_nullable
as int?,fundTypeId: freezed == fundTypeId ? _self.fundTypeId : fundTypeId // ignore: cast_nullable_to_non_nullable
as int?,forceMajeureId: freezed == forceMajeureId ? _self.forceMajeureId : forceMajeureId // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,requestDate: freezed == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
