import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/update_password_request.dart';

import 'package:mash/mash/domain/repositories/auth_repository.dart';

/// Use case responsible for logoin user.

@lazySingleton
@injectable
class UpdatePasswordUsecase extends UseCase<String, UpdatePasswordRequest> {
  final AuthRepository repository;

  /// Constructs a [UpdatePasswordUsecase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repository.
  UpdatePasswordUsecase(this.repository);

  @override
  Future<String> call(UpdatePasswordRequest params) {
    return repository.updatePassword(params);
  }
}
