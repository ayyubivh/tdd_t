import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/payment/payment_complete_response_entity.dart';
import '../../../data/remote/request/payment_complete_response_request.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class GetPaymentCompleteResponseUsecase
    extends UseCase<PaymentCompleteResponseEntity, PaymentCompleteResponseRequest> {
  final PaymentRepository repository;

  GetPaymentCompleteResponseUsecase(this.repository);

  @override
  Future<PaymentCompleteResponseEntity> call(PaymentCompleteResponseRequest params) {
    return repository.getPaymentCompleteResponse(params);
  }
}
