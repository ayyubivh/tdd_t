import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/leave_status_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_status_entity.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

@lazySingleton
@injectable
class GetLeaveStatusUsecase
    extends UseCase<LeaveStatusEntity, LeaveStatusRequest> {
  final LeaveRepository repository;

  GetLeaveStatusUsecase(this.repository);

  @override
  Future<LeaveStatusEntity> call(LeaveStatusRequest params) {
    return repository.getLeaveStatus(params);
  }
}
