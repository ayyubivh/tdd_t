import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/send_otp_request.dart';

import 'package:mash/mash/domain/repositories/auth_repository.dart';

/// Use case responsible for logoin user.

@lazySingleton
@injectable
class SendOtpForgotPasswordUsecase extends UseCase<int, SendOtpRequest> {
  final AuthRepository repository;

  /// Constructs a [SendOtpForgotPasswordUsecase] instance.
  ///
  /// [repository]: Repository for accessing authentication-related data from repository.
  SendOtpForgotPasswordUsecase(this.repository);

  @override
  Future<int> call(SendOtpRequest params) {
    return repository.sendForgotPassWordOtp(params);
  }
}
