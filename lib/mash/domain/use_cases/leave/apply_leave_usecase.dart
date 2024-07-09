import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/apply_leave_request.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

@lazySingleton
@injectable
class ApplyLeaveUsecase extends UseCase<int, ApplyLeaveRequest> {
  final LeaveRepository repository;

  ApplyLeaveUsecase(this.repository);

  @override
  Future<int> call(ApplyLeaveRequest params) {
    return repository.applyLeave(params);
  }
}
