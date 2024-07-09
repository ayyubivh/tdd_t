import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/domain/repositories/payment_repository.dart';

import '../../../../core/usecase.dart';
import '../../entities/payment/payment_final_amount_entiy.dart';

@lazySingleton
@injectable
class GetPaymentFinalAmountUsecase
    implements UseCase<PaymentFinalAmountEntity, PaymentFinalRequest> {
  final PaymentRepository paymentRepository;

  GetPaymentFinalAmountUsecase({required this.paymentRepository});
  @override
  Future<PaymentFinalAmountEntity> call(PaymentFinalRequest params) {
    return paymentRepository.getPaymentFinal(params);
  }
}
