// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ServerFailure value)?  server,TResult Function( _NetworkFailure value)?  network,TResult Function( _UnauthorizedFailure value)?  unauthorized,TResult Function( _TimeoutFailure value)?  timeout,TResult Function( _CacheFailure value)?  cache,TResult Function( _ValidationFailure value)?  validation,TResult Function( _UnexpectedFailure value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that);case _NetworkFailure() when network != null:
return network(_that);case _UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that);case _TimeoutFailure() when timeout != null:
return timeout(_that);case _CacheFailure() when cache != null:
return cache(_that);case _ValidationFailure() when validation != null:
return validation(_that);case _UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ServerFailure value)  server,required TResult Function( _NetworkFailure value)  network,required TResult Function( _UnauthorizedFailure value)  unauthorized,required TResult Function( _TimeoutFailure value)  timeout,required TResult Function( _CacheFailure value)  cache,required TResult Function( _ValidationFailure value)  validation,required TResult Function( _UnexpectedFailure value)  unexpected,}){
final _that = this;
switch (_that) {
case _ServerFailure():
return server(_that);case _NetworkFailure():
return network(_that);case _UnauthorizedFailure():
return unauthorized(_that);case _TimeoutFailure():
return timeout(_that);case _CacheFailure():
return cache(_that);case _ValidationFailure():
return validation(_that);case _UnexpectedFailure():
return unexpected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ServerFailure value)?  server,TResult? Function( _NetworkFailure value)?  network,TResult? Function( _UnauthorizedFailure value)?  unauthorized,TResult? Function( _TimeoutFailure value)?  timeout,TResult? Function( _CacheFailure value)?  cache,TResult? Function( _ValidationFailure value)?  validation,TResult? Function( _UnexpectedFailure value)?  unexpected,}){
final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that);case _NetworkFailure() when network != null:
return network(_that);case _UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that);case _TimeoutFailure() when timeout != null:
return timeout(_that);case _CacheFailure() when cache != null:
return cache(_that);case _ValidationFailure() when validation != null:
return validation(_that);case _UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  int? statusCode)?  server,TResult Function( String message)?  network,TResult Function( String message)?  unauthorized,TResult Function( String message)?  timeout,TResult Function( String message)?  cache,TResult Function( String message,  Map<String, dynamic>? errors)?  validation,TResult Function( String message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case _NetworkFailure() when network != null:
return network(_that.message);case _UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that.message);case _TimeoutFailure() when timeout != null:
return timeout(_that.message);case _CacheFailure() when cache != null:
return cache(_that.message);case _ValidationFailure() when validation != null:
return validation(_that.message,_that.errors);case _UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  int? statusCode)  server,required TResult Function( String message)  network,required TResult Function( String message)  unauthorized,required TResult Function( String message)  timeout,required TResult Function( String message)  cache,required TResult Function( String message,  Map<String, dynamic>? errors)  validation,required TResult Function( String message)  unexpected,}) {final _that = this;
switch (_that) {
case _ServerFailure():
return server(_that.message,_that.statusCode);case _NetworkFailure():
return network(_that.message);case _UnauthorizedFailure():
return unauthorized(_that.message);case _TimeoutFailure():
return timeout(_that.message);case _CacheFailure():
return cache(_that.message);case _ValidationFailure():
return validation(_that.message,_that.errors);case _UnexpectedFailure():
return unexpected(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  int? statusCode)?  server,TResult? Function( String message)?  network,TResult? Function( String message)?  unauthorized,TResult? Function( String message)?  timeout,TResult? Function( String message)?  cache,TResult? Function( String message,  Map<String, dynamic>? errors)?  validation,TResult? Function( String message)?  unexpected,}) {final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case _NetworkFailure() when network != null:
return network(_that.message);case _UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that.message);case _TimeoutFailure() when timeout != null:
return timeout(_that.message);case _CacheFailure() when cache != null:
return cache(_that.message);case _ValidationFailure() when validation != null:
return validation(_that.message,_that.errors);case _UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ServerFailure implements Failure {
  const _ServerFailure({required this.message, this.statusCode});
  

@override final  String message;
 final  int? statusCode;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'Failure.server(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,}) {
  return _then(_ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _NetworkFailure implements Failure {
  const _NetworkFailure({this.message = 'Tidak ada koneksi internet. Periksa jaringan Anda.'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkFailureCopyWith<_NetworkFailure> get copyWith => __$NetworkFailureCopyWithImpl<_NetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.network(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(_NetworkFailure value, $Res Function(_NetworkFailure) _then) = __$NetworkFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(this._self, this._then);

  final _NetworkFailure _self;
  final $Res Function(_NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NetworkFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UnauthorizedFailure implements Failure {
  const _UnauthorizedFailure({this.message = 'Sesi Anda telah berakhir. Silakan login kembali.'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnauthorizedFailureCopyWith<_UnauthorizedFailure> get copyWith => __$UnauthorizedFailureCopyWithImpl<_UnauthorizedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnauthorizedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unauthorized(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnauthorizedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnauthorizedFailureCopyWith(_UnauthorizedFailure value, $Res Function(_UnauthorizedFailure) _then) = __$UnauthorizedFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UnauthorizedFailureCopyWithImpl<$Res>
    implements _$UnauthorizedFailureCopyWith<$Res> {
  __$UnauthorizedFailureCopyWithImpl(this._self, this._then);

  final _UnauthorizedFailure _self;
  final $Res Function(_UnauthorizedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UnauthorizedFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TimeoutFailure implements Failure {
  const _TimeoutFailure({this.message = 'Koneksi timeout. Silakan coba lagi.'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeoutFailureCopyWith<_TimeoutFailure> get copyWith => __$TimeoutFailureCopyWithImpl<_TimeoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeoutFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.timeout(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TimeoutFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$TimeoutFailureCopyWith(_TimeoutFailure value, $Res Function(_TimeoutFailure) _then) = __$TimeoutFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TimeoutFailureCopyWithImpl<$Res>
    implements _$TimeoutFailureCopyWith<$Res> {
  __$TimeoutFailureCopyWithImpl(this._self, this._then);

  final _TimeoutFailure _self;
  final $Res Function(_TimeoutFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TimeoutFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CacheFailure implements Failure {
  const _CacheFailure({this.message = 'Gagal mengakses data lokal.'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CacheFailureCopyWith<_CacheFailure> get copyWith => __$CacheFailureCopyWithImpl<_CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cache(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$CacheFailureCopyWith(_CacheFailure value, $Res Function(_CacheFailure) _then) = __$CacheFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CacheFailureCopyWithImpl<$Res>
    implements _$CacheFailureCopyWith<$Res> {
  __$CacheFailureCopyWithImpl(this._self, this._then);

  final _CacheFailure _self;
  final $Res Function(_CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CacheFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ValidationFailure implements Failure {
  const _ValidationFailure({required this.message, final  Map<String, dynamic>? errors}): _errors = errors;
  

@override final  String message;
 final  Map<String, dynamic>? _errors;
 Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationFailureCopyWith<_ValidationFailure> get copyWith => __$ValidationFailureCopyWithImpl<_ValidationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'Failure.validation(message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ValidationFailureCopyWith(_ValidationFailure value, $Res Function(_ValidationFailure) _then) = __$ValidationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Map<String, dynamic>? errors
});




}
/// @nodoc
class __$ValidationFailureCopyWithImpl<$Res>
    implements _$ValidationFailureCopyWith<$Res> {
  __$ValidationFailureCopyWithImpl(this._self, this._then);

  final _ValidationFailure _self;
  final $Res Function(_ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errors = freezed,}) {
  return _then(_ValidationFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc


class _UnexpectedFailure implements Failure {
  const _UnexpectedFailure({this.message = 'Terjadi kesalahan yang tidak terduga.'});
  

@override@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnexpectedFailureCopyWith<_UnexpectedFailure> get copyWith => __$UnexpectedFailureCopyWithImpl<_UnexpectedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnexpectedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnexpectedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$UnexpectedFailureCopyWith(_UnexpectedFailure value, $Res Function(_UnexpectedFailure) _then) = __$UnexpectedFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UnexpectedFailureCopyWithImpl<$Res>
    implements _$UnexpectedFailureCopyWith<$Res> {
  __$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final _UnexpectedFailure _self;
  final $Res Function(_UnexpectedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UnexpectedFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
