import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/update_profile_request.dart';
import 'package:mash/mash/domain/repositories/profile_repository.dart';

@singleton
@injectable
class UpdateProfileUseCase extends UseCase<int, UpdateProfileRequest> {
  final ProfileRepository repository;

  UpdateProfileUseCase(this.repository);

  @override
  Future<int> call(UpdateProfileRequest params) {
    return repository.updateProfile(params);
  }
}
