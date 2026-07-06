import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entity/request/payment_request_entity.dart';
import '../entity/response/payment_response_entity.dart';

abstract class PaymentRepository {
  Future<Either<Failure, PaymentResponseEntity>> payment(
    PaymentRequestEntity param, {
    bool asGuest = false,
  });
}
