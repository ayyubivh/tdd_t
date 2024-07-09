import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

/// Use case responsible for signout.

@singleton
@injectable
class SignOutUseCase extends UseCase<void, NoParams> {
  final AuthRepository repository;

  /// Constructs a [SignOutUseCase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repsotory.

  SignOutUseCase(this.repository);

  @override
  Future<void> call(NoParams params) {
    return repository.signOut();
  }
}
