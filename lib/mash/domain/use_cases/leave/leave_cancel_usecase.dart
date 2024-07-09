import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/cancel_leave_request.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

@lazySingleton
@injectable
class CancelLeaveUsecase extends UseCase<int, LeaveCancelRequest> {
  final LeaveRepository repository;

  CancelLeaveUsecase(this.repository);

  @override
  Future<int> call(LeaveCancelRequest params) {
    return repository.cancelLeave(params);
  }
}
