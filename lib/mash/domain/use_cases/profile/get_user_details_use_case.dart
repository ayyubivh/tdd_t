import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_user_details_request.dart';
import 'package:mash/mash/domain/entities/profile/student_detail_entity.dart';
import 'package:mash/mash/domain/repositories/profile_repository.dart';

@singleton
@injectable
class GetUserDetailsUseCase
    extends UseCase<StudentDetailEntity, GetUserDetailsRequest> {
  final ProfileRepository repository;

  GetUserDetailsUseCase(this.repository);

  @override
  Future<StudentDetailEntity> call(GetUserDetailsRequest params) {
    return repository.getUserDetails(params);
  }
}
