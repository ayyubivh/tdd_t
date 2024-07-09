import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import '../../../data/remote/request/payment_dashboard_request.dart';
import '../../entities/payment/payment_dashboard_entity.dart';
import '../../repositories/payment_repository.dart';

@injectable
@singleton
class GetPaymentDashboardUsecase
    extends UseCase<List<PaymentDashboardEntity>, PaymentDashboardRequest> {
  final PaymentRepository repository;

  GetPaymentDashboardUsecase(this.repository);

  @override
  Future<List<PaymentDashboardEntity>> call(PaymentDashboardRequest params) {
    return repository.getPaymentDashboard(params);
  }
}
