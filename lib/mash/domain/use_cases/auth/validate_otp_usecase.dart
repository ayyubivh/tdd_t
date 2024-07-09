import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';

import 'package:mash/mash/domain/repositories/auth_repository.dart';

import '../../../data/remote/request/validate_otp_request.dart';

/// Use case responsible for logoin user.

@lazySingleton
@injectable
class ValidateOtpUsecase extends UseCase<String, ValidatOtpRequest> {
  final AuthRepository repository;

  /// Constructs a [ValidateOtpUsecase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repository.
  ValidateOtpUsecase(this.repository);

  @override
  Future<String> call(ValidatOtpRequest params) {
    return repository.validateOtp(params);
  }
}
