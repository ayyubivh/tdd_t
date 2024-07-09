import 'package:injectable/injectable.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/login_request.dart';
import 'package:mash/mash/data/remote/request/send_otp_request.dart';
import 'package:mash/mash/data/remote/request/update_password_request.dart';
import 'package:mash/mash/data/remote/request/validate_otp_request.dart';
import 'package:mash/mash/domain/entities/auth/verify_user_entity.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

import '../../domain/entities/auth/auth_response_entity.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final ConnectionChecker connectionChecker;

  AuthRepositoryImpl(
    this.connectionChecker, {
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<AuthResponseEntity> login(LoginRequest request) async {
    // try {
    if (await connectionChecker.isConnected) {
      final res = await authRemoteDataSource.login(request);

      await authLocalDataSource.saveUserToken(res.token);

      return res;
    } else {
      throw NetWorkException();
    }
    // } catch (e) {
    //   throw Exception(e);
    // }
  }

  @override
  Future<void> saveUserInfo(LoginLocalModel userInfo) {
    return authLocalDataSource.saveUserInfo(userInfo);
  }

  @override
  Future<LoginResTableEntity?> getUserInfo() {
    return authLocalDataSource.getUserInfo();
  }

  @override
  Future<void> signOut() async {
    authLocalDataSource.signOut();
    authRemoteDataSource.signOut();
  }

  @override
  Future<VerifyUserEntity> verifyUser(String userId) {
    return authRemoteDataSource.verifyUser(userId);
  }

  @override
  Future<int> sendForgotPassWordOtp(SendOtpRequest params) {
    return authRemoteDataSource.sendForgotPassWordOtp(params);
  }

  @override
  Future<String> validateOtp(ValidatOtpRequest params) {
    return authRemoteDataSource.validateOtp(params);
  }

  @override
  Future<String> updatePassword(UpdatePasswordRequest params) {
    return authRemoteDataSource.updatePassword(params);
  }
}
