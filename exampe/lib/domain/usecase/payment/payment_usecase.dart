
import '../../entity/request/payment_request_entity.dart';
import '../../entity/response/payment_response_entity.dart';
import '../../repository/payment_repository.dart';

class PaymentUsecase {
  final PaymentRepository _repository;

  PaymentUsecase(this._repository);

  Future<PaymentResponseEntity> call(
    PaymentRequestEntity param, {
    bool asGuest = false,
  }) async {
    final result = await _repository.payment(param, asGuest: asGuest);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (response) => response,
    );
  }
}
