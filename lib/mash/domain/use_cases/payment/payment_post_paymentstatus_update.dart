import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class PostPaymentStatusUpdateUsecase
    extends UseCase<String, PaymentStatusUpdateRequest> {
  final PaymentRepository repository;

  PostPaymentStatusUpdateUsecase(this.repository);

  @override
  Future<String> call(PaymentStatusUpdateRequest params) {
    return repository.postPaymentStatusUpdate(params);
  }
}
