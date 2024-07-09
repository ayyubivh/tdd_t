import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

@lazySingleton
@injectable
class SaveUserInfoUseCase extends UseCase<void, LoginLocalModel> {
  final AuthRepository repository;

  SaveUserInfoUseCase(this.repository);

  @override
  Future<void> call(LoginLocalModel params) {
    return repository.saveUserInfo(params);
  }
}
