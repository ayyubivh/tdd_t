import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class GetFeeReceiptByDocnameUsecase extends UseCase<String, String> {
  final PaymentRepository repository;

  GetFeeReceiptByDocnameUsecase(this.repository);

  @override
  Future<String> call(String params) {
    return repository.getFeeReceiptByDocname(params);
  }
}
