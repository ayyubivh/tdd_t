import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/login_request.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';
import '../../entities/auth/auth_response_entity.dart';

/// Use case responsible for logoin user.

@lazySingleton
@injectable
class LoginUseCase extends UseCase<AuthResponseEntity, LoginRequest> {
  final AuthRepository repository;

  /// Constructs a [LoginUseCase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repository.
  LoginUseCase(this.repository);

  @override
  Future<AuthResponseEntity> call(LoginRequest params) {
    return repository.login(params);
  }
}
