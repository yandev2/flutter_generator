// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentResponseEntity {

 int? get donationId; int? get transactionId; bool? get isGuest; bool? get isNatura; PaymentDetailEntity? get payment; String? get invoiceNumber; String? get status; String? get paymentUrl; BankAccountInfoEntity? get bankAccount; String? get createdAt;
/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseEntityCopyWith<PaymentResponseEntity> get copyWith => _$PaymentResponseEntityCopyWithImpl<PaymentResponseEntity>(this as PaymentResponseEntity, _$identity);

  /// Serializes this PaymentResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseEntity&&(identical(other.donationId, donationId) || other.donationId == donationId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,donationId,transactionId,isGuest,isNatura,payment,invoiceNumber,status,paymentUrl,bankAccount,createdAt);

@override
String toString() {
  return 'PaymentResponseEntity(donationId: $donationId, transactionId: $transactionId, isGuest: $isGuest, isNatura: $isNatura, payment: $payment, invoiceNumber: $invoiceNumber, status: $status, paymentUrl: $paymentUrl, bankAccount: $bankAccount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseEntityCopyWith<$Res>  {
  factory $PaymentResponseEntityCopyWith(PaymentResponseEntity value, $Res Function(PaymentResponseEntity) _then) = _$PaymentResponseEntityCopyWithImpl;
@useResult
$Res call({
 int? donationId, int? transactionId, bool? isGuest, bool? isNatura, PaymentDetailEntity? payment, String? invoiceNumber, String? status, String? paymentUrl, BankAccountInfoEntity? bankAccount, String? createdAt
});


$PaymentDetailEntityCopyWith<$Res>? get payment;$BankAccountInfoEntityCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class _$PaymentResponseEntityCopyWithImpl<$Res>
    implements $PaymentResponseEntityCopyWith<$Res> {
  _$PaymentResponseEntityCopyWithImpl(this._self, this._then);

  final PaymentResponseEntity _self;
  final $Res Function(PaymentResponseEntity) _then;

/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? donationId = freezed,Object? transactionId = freezed,Object? isGuest = freezed,Object? isNatura = freezed,Object? payment = freezed,Object? invoiceNumber = freezed,Object? status = freezed,Object? paymentUrl = freezed,Object? bankAccount = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
donationId: freezed == donationId ? _self.donationId : donationId // ignore: cast_nullable_to_non_nullable
as int?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,isGuest: freezed == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool?,isNatura: freezed == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentDetailEntity?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as BankAccountInfoEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailEntityCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentDetailEntityCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountInfoEntityCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $BankAccountInfoEntityCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentResponseEntity].
extension PaymentResponseEntityPatterns on PaymentResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? donationId,  int? transactionId,  bool? isGuest,  bool? isNatura,  PaymentDetailEntity? payment,  String? invoiceNumber,  String? status,  String? paymentUrl,  BankAccountInfoEntity? bankAccount,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponseEntity() when $default != null:
return $default(_that.donationId,_that.transactionId,_that.isGuest,_that.isNatura,_that.payment,_that.invoiceNumber,_that.status,_that.paymentUrl,_that.bankAccount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? donationId,  int? transactionId,  bool? isGuest,  bool? isNatura,  PaymentDetailEntity? payment,  String? invoiceNumber,  String? status,  String? paymentUrl,  BankAccountInfoEntity? bankAccount,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseEntity():
return $default(_that.donationId,_that.transactionId,_that.isGuest,_that.isNatura,_that.payment,_that.invoiceNumber,_that.status,_that.paymentUrl,_that.bankAccount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? donationId,  int? transactionId,  bool? isGuest,  bool? isNatura,  PaymentDetailEntity? payment,  String? invoiceNumber,  String? status,  String? paymentUrl,  BankAccountInfoEntity? bankAccount,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseEntity() when $default != null:
return $default(_that.donationId,_that.transactionId,_that.isGuest,_that.isNatura,_that.payment,_that.invoiceNumber,_that.status,_that.paymentUrl,_that.bankAccount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponseEntity implements PaymentResponseEntity {
  const _PaymentResponseEntity({this.donationId, this.transactionId, this.isGuest, this.isNatura, this.payment, this.invoiceNumber, this.status, this.paymentUrl, this.bankAccount, this.createdAt});
  factory _PaymentResponseEntity.fromJson(Map<String, dynamic> json) => _$PaymentResponseEntityFromJson(json);

@override final  int? donationId;
@override final  int? transactionId;
@override final  bool? isGuest;
@override final  bool? isNatura;
@override final  PaymentDetailEntity? payment;
@override final  String? invoiceNumber;
@override final  String? status;
@override final  String? paymentUrl;
@override final  BankAccountInfoEntity? bankAccount;
@override final  String? createdAt;

/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseEntityCopyWith<_PaymentResponseEntity> get copyWith => __$PaymentResponseEntityCopyWithImpl<_PaymentResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponseEntity&&(identical(other.donationId, donationId) || other.donationId == donationId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.isNatura, isNatura) || other.isNatura == isNatura)&&(identical(other.payment, payment) || other.payment == payment)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,donationId,transactionId,isGuest,isNatura,payment,invoiceNumber,status,paymentUrl,bankAccount,createdAt);

@override
String toString() {
  return 'PaymentResponseEntity(donationId: $donationId, transactionId: $transactionId, isGuest: $isGuest, isNatura: $isNatura, payment: $payment, invoiceNumber: $invoiceNumber, status: $status, paymentUrl: $paymentUrl, bankAccount: $bankAccount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseEntityCopyWith<$Res> implements $PaymentResponseEntityCopyWith<$Res> {
  factory _$PaymentResponseEntityCopyWith(_PaymentResponseEntity value, $Res Function(_PaymentResponseEntity) _then) = __$PaymentResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 int? donationId, int? transactionId, bool? isGuest, bool? isNatura, PaymentDetailEntity? payment, String? invoiceNumber, String? status, String? paymentUrl, BankAccountInfoEntity? bankAccount, String? createdAt
});


@override $PaymentDetailEntityCopyWith<$Res>? get payment;@override $BankAccountInfoEntityCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class __$PaymentResponseEntityCopyWithImpl<$Res>
    implements _$PaymentResponseEntityCopyWith<$Res> {
  __$PaymentResponseEntityCopyWithImpl(this._self, this._then);

  final _PaymentResponseEntity _self;
  final $Res Function(_PaymentResponseEntity) _then;

/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? donationId = freezed,Object? transactionId = freezed,Object? isGuest = freezed,Object? isNatura = freezed,Object? payment = freezed,Object? invoiceNumber = freezed,Object? status = freezed,Object? paymentUrl = freezed,Object? bankAccount = freezed,Object? createdAt = freezed,}) {
  return _then(_PaymentResponseEntity(
donationId: freezed == donationId ? _self.donationId : donationId // ignore: cast_nullable_to_non_nullable
as int?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,isGuest: freezed == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool?,isNatura: freezed == isNatura ? _self.isNatura : isNatura // ignore: cast_nullable_to_non_nullable
as bool?,payment: freezed == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as PaymentDetailEntity?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as BankAccountInfoEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailEntityCopyWith<$Res>? get payment {
    if (_self.payment == null) {
    return null;
  }

  return $PaymentDetailEntityCopyWith<$Res>(_self.payment!, (value) {
    return _then(_self.copyWith(payment: value));
  });
}/// Create a copy of PaymentResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankAccountInfoEntityCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $BankAccountInfoEntityCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}


/// @nodoc
mixin _$BankAccountInfoEntity {

 String? get bankName; String? get accountNumber; String? get accountName;
/// Create a copy of BankAccountInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountInfoEntityCopyWith<BankAccountInfoEntity> get copyWith => _$BankAccountInfoEntityCopyWithImpl<BankAccountInfoEntity>(this as BankAccountInfoEntity, _$identity);

  /// Serializes this BankAccountInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountInfoEntity&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,accountNumber,accountName);

@override
String toString() {
  return 'BankAccountInfoEntity(bankName: $bankName, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class $BankAccountInfoEntityCopyWith<$Res>  {
  factory $BankAccountInfoEntityCopyWith(BankAccountInfoEntity value, $Res Function(BankAccountInfoEntity) _then) = _$BankAccountInfoEntityCopyWithImpl;
@useResult
$Res call({
 String? bankName, String? accountNumber, String? accountName
});




}
/// @nodoc
class _$BankAccountInfoEntityCopyWithImpl<$Res>
    implements $BankAccountInfoEntityCopyWith<$Res> {
  _$BankAccountInfoEntityCopyWithImpl(this._self, this._then);

  final BankAccountInfoEntity _self;
  final $Res Function(BankAccountInfoEntity) _then;

/// Create a copy of BankAccountInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = freezed,Object? accountNumber = freezed,Object? accountName = freezed,}) {
  return _then(_self.copyWith(
bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountInfoEntity].
extension BankAccountInfoEntityPatterns on BankAccountInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? bankName,  String? accountNumber,  String? accountName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountInfoEntity() when $default != null:
return $default(_that.bankName,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? bankName,  String? accountNumber,  String? accountName)  $default,) {final _that = this;
switch (_that) {
case _BankAccountInfoEntity():
return $default(_that.bankName,_that.accountNumber,_that.accountName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? bankName,  String? accountNumber,  String? accountName)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountInfoEntity() when $default != null:
return $default(_that.bankName,_that.accountNumber,_that.accountName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccountInfoEntity implements BankAccountInfoEntity {
  const _BankAccountInfoEntity({this.bankName, this.accountNumber, this.accountName});
  factory _BankAccountInfoEntity.fromJson(Map<String, dynamic> json) => _$BankAccountInfoEntityFromJson(json);

@override final  String? bankName;
@override final  String? accountNumber;
@override final  String? accountName;

/// Create a copy of BankAccountInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountInfoEntityCopyWith<_BankAccountInfoEntity> get copyWith => __$BankAccountInfoEntityCopyWithImpl<_BankAccountInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountInfoEntity&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankName,accountNumber,accountName);

@override
String toString() {
  return 'BankAccountInfoEntity(bankName: $bankName, accountNumber: $accountNumber, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class _$BankAccountInfoEntityCopyWith<$Res> implements $BankAccountInfoEntityCopyWith<$Res> {
  factory _$BankAccountInfoEntityCopyWith(_BankAccountInfoEntity value, $Res Function(_BankAccountInfoEntity) _then) = __$BankAccountInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String? bankName, String? accountNumber, String? accountName
});




}
/// @nodoc
class __$BankAccountInfoEntityCopyWithImpl<$Res>
    implements _$BankAccountInfoEntityCopyWith<$Res> {
  __$BankAccountInfoEntityCopyWithImpl(this._self, this._then);

  final _BankAccountInfoEntity _self;
  final $Res Function(_BankAccountInfoEntity) _then;

/// Create a copy of BankAccountInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = freezed,Object? accountNumber = freezed,Object? accountName = freezed,}) {
  return _then(_BankAccountInfoEntity(
bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountNumber: freezed == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String?,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentDetailEntity {

 String? get provider; bool? get isDummy; String? get method; String? get status; String? get paymentUrl; String? get virtualAccount; int? get amount; String? get expiresAt; String? get note;
/// Create a copy of PaymentDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailEntityCopyWith<PaymentDetailEntity> get copyWith => _$PaymentDetailEntityCopyWithImpl<PaymentDetailEntity>(this as PaymentDetailEntity, _$identity);

  /// Serializes this PaymentDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetailEntity&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.isDummy, isDummy) || other.isDummy == isDummy)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.virtualAccount, virtualAccount) || other.virtualAccount == virtualAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,isDummy,method,status,paymentUrl,virtualAccount,amount,expiresAt,note);

@override
String toString() {
  return 'PaymentDetailEntity(provider: $provider, isDummy: $isDummy, method: $method, status: $status, paymentUrl: $paymentUrl, virtualAccount: $virtualAccount, amount: $amount, expiresAt: $expiresAt, note: $note)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailEntityCopyWith<$Res>  {
  factory $PaymentDetailEntityCopyWith(PaymentDetailEntity value, $Res Function(PaymentDetailEntity) _then) = _$PaymentDetailEntityCopyWithImpl;
@useResult
$Res call({
 String? provider, bool? isDummy, String? method, String? status, String? paymentUrl, String? virtualAccount, int? amount, String? expiresAt, String? note
});




}
/// @nodoc
class _$PaymentDetailEntityCopyWithImpl<$Res>
    implements $PaymentDetailEntityCopyWith<$Res> {
  _$PaymentDetailEntityCopyWithImpl(this._self, this._then);

  final PaymentDetailEntity _self;
  final $Res Function(PaymentDetailEntity) _then;

/// Create a copy of PaymentDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = freezed,Object? isDummy = freezed,Object? method = freezed,Object? status = freezed,Object? paymentUrl = freezed,Object? virtualAccount = freezed,Object? amount = freezed,Object? expiresAt = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,isDummy: freezed == isDummy ? _self.isDummy : isDummy // ignore: cast_nullable_to_non_nullable
as bool?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,virtualAccount: freezed == virtualAccount ? _self.virtualAccount : virtualAccount // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDetailEntity].
extension PaymentDetailEntityPatterns on PaymentDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? provider,  bool? isDummy,  String? method,  String? status,  String? paymentUrl,  String? virtualAccount,  int? amount,  String? expiresAt,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetailEntity() when $default != null:
return $default(_that.provider,_that.isDummy,_that.method,_that.status,_that.paymentUrl,_that.virtualAccount,_that.amount,_that.expiresAt,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? provider,  bool? isDummy,  String? method,  String? status,  String? paymentUrl,  String? virtualAccount,  int? amount,  String? expiresAt,  String? note)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetailEntity():
return $default(_that.provider,_that.isDummy,_that.method,_that.status,_that.paymentUrl,_that.virtualAccount,_that.amount,_that.expiresAt,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? provider,  bool? isDummy,  String? method,  String? status,  String? paymentUrl,  String? virtualAccount,  int? amount,  String? expiresAt,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetailEntity() when $default != null:
return $default(_that.provider,_that.isDummy,_that.method,_that.status,_that.paymentUrl,_that.virtualAccount,_that.amount,_that.expiresAt,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetailEntity implements PaymentDetailEntity {
  const _PaymentDetailEntity({this.provider, this.isDummy, this.method, this.status, this.paymentUrl, this.virtualAccount, this.amount, this.expiresAt, this.note});
  factory _PaymentDetailEntity.fromJson(Map<String, dynamic> json) => _$PaymentDetailEntityFromJson(json);

@override final  String? provider;
@override final  bool? isDummy;
@override final  String? method;
@override final  String? status;
@override final  String? paymentUrl;
@override final  String? virtualAccount;
@override final  int? amount;
@override final  String? expiresAt;
@override final  String? note;

/// Create a copy of PaymentDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailEntityCopyWith<_PaymentDetailEntity> get copyWith => __$PaymentDetailEntityCopyWithImpl<_PaymentDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetailEntity&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.isDummy, isDummy) || other.isDummy == isDummy)&&(identical(other.method, method) || other.method == method)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.virtualAccount, virtualAccount) || other.virtualAccount == virtualAccount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,isDummy,method,status,paymentUrl,virtualAccount,amount,expiresAt,note);

@override
String toString() {
  return 'PaymentDetailEntity(provider: $provider, isDummy: $isDummy, method: $method, status: $status, paymentUrl: $paymentUrl, virtualAccount: $virtualAccount, amount: $amount, expiresAt: $expiresAt, note: $note)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailEntityCopyWith<$Res> implements $PaymentDetailEntityCopyWith<$Res> {
  factory _$PaymentDetailEntityCopyWith(_PaymentDetailEntity value, $Res Function(_PaymentDetailEntity) _then) = __$PaymentDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String? provider, bool? isDummy, String? method, String? status, String? paymentUrl, String? virtualAccount, int? amount, String? expiresAt, String? note
});




}
/// @nodoc
class __$PaymentDetailEntityCopyWithImpl<$Res>
    implements _$PaymentDetailEntityCopyWith<$Res> {
  __$PaymentDetailEntityCopyWithImpl(this._self, this._then);

  final _PaymentDetailEntity _self;
  final $Res Function(_PaymentDetailEntity) _then;

/// Create a copy of PaymentDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = freezed,Object? isDummy = freezed,Object? method = freezed,Object? status = freezed,Object? paymentUrl = freezed,Object? virtualAccount = freezed,Object? amount = freezed,Object? expiresAt = freezed,Object? note = freezed,}) {
  return _then(_PaymentDetailEntity(
provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,isDummy: freezed == isDummy ? _self.isDummy : isDummy // ignore: cast_nullable_to_non_nullable
as bool?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,virtualAccount: freezed == virtualAccount ? _self.virtualAccount : virtualAccount // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
