import 'package:mash/mash/data/remote/request/send_otp_request.dart';
import 'package:mash/mash/data/remote/request/update_password_request.dart';
import 'package:mash/mash/data/remote/request/validate_otp_request.dart';

import '../../data/local/models/login_local_model.dart';
import '../../data/remote/request/login_request.dart';
import '../entities/auth/auth_response_entity.dart';
import '../entities/auth/verify_user_entity.dart';

abstract interface class AuthRepository {
  Future<AuthResponseEntity> login(LoginRequest request);
  /* This method used for saving user response data from successful login response */
  Future<void> saveUserInfo(LoginLocalModel userInfo);

  /* This method used for getting user data saved in hive data base .
  * if the return data type is null the will be no saved records.
  *  */
  Future<LoginResTableEntity?> getUserInfo();

  Future<void> signOut();

  Future<VerifyUserEntity> verifyUser(String userId);

  Future<int> sendForgotPassWordOtp(SendOtpRequest params);

  Future<String> validateOtp(ValidatOtpRequest params);
  Future<String> updatePassword(UpdatePasswordRequest params);
}
