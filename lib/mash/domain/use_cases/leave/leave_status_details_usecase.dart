import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/leave_details_request.dart';
import 'package:mash/mash/domain/repositories/leave_repository.dart';

import '../../entities/leave/leave_details_entity.dart';

@lazySingleton
@injectable
class GetLeaveStatusDetailsUsecase
    extends UseCase<LeaveDetailsEntity, LeaveDetailsRequest> {
  final LeaveRepository repository;

  GetLeaveStatusDetailsUsecase(this.repository);

  @override
  Future<LeaveDetailsEntity> call(LeaveDetailsRequest params) {
    return repository.getLeaveDetails(params);
  }
}
