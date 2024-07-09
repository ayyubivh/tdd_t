import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/auth/verify_user_entity.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

/// Use case responsible for logoin user.

@lazySingleton
@injectable
class VerifyUserUsecase extends UseCase<VerifyUserEntity, String> {
  final AuthRepository repository;

  /// Constructs a [VerifyUserUsecase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repository.
  VerifyUserUsecase(this.repository);

  @override
  Future<VerifyUserEntity> call(String params) {
    return repository.verifyUser(params);
  }
}
