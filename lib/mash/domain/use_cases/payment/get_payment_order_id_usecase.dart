import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/repositories/payment_repository.dart';

import '../../../../core/usecase.dart';

@lazySingleton
@injectable
class GetPaymentOrderIdUsecase
    implements UseCase<String, PaymentUniqueIdRequest> {
  final PaymentRepository paymentRepository;

  GetPaymentOrderIdUsecase({required this.paymentRepository});
  @override
  Future<String> call(PaymentUniqueIdRequest params) {
    return paymentRepository.getPaymentOrderId(params);
  }
}
