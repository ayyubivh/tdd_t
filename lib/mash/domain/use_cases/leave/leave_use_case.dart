

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

@lazySingleton
@injectable
class GetDashboardLeaveUseCase extends UseCase<List<LeaveDashboardEntity>,LeaveDashboardRequest>{
  final LeaveRepository repository;

  GetDashboardLeaveUseCase(this.repository);

  @override
  Future<List<LeaveDashboardEntity>> call(LeaveDashboardRequest params) {
    return repository.getLeaveDashboardData(params);
  }


}