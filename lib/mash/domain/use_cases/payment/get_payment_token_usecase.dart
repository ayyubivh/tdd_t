import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_token_entity.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class GetPaymentTokenUsecase
    extends UseCase<PaymentTokenEntity, PaymentTokenRequest> {
  final PaymentRepository repository;

  GetPaymentTokenUsecase(this.repository);

  @override
  Future<PaymentTokenEntity> call(PaymentTokenRequest params) {
    return repository.getPaymentToken(params);
  }
}
