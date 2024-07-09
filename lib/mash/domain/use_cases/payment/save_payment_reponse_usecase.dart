import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/payment_save_response.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class SavePaymentResponseUsecase
    extends UseCase<void, PaymentSaveResponseRequest> {
  final PaymentRepository repository;

  SavePaymentResponseUsecase(this.repository);

  @override
  Future<void> call(PaymentSaveResponseRequest params) {
    return repository.savePaymentResponse(params);
  }
}
