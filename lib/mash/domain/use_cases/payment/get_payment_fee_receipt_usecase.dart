import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import '../../../data/remote/request/get_fee_success_receipt_request.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class GetPaymentFeeReceiptUsecase
    extends UseCase<String, GetFeeSuccessReceiptRequest> {
  final PaymentRepository repository;

  GetPaymentFeeReceiptUsecase(this.repository);

  @override
  Future<String> call(GetFeeSuccessReceiptRequest params) {
    return repository.getFeeSuccessReceipt(params);
  }
}
