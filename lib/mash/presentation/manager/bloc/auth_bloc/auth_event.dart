part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required LoginRequest loginRequest,
    required BuildContext context,
  }) = _Login;
  const factory AuthEvent.getUser() = _GetUser;
  const factory AuthEvent.signOut({required BuildContext context}) = _SignOut;
  const factory AuthEvent.verify({
    required String userId,
  }) = _VerifyUser;
  const factory AuthEvent.sendOtpForgotPassWord({
    required SendOtpRequest sendOtpRequest,
  }) = _SendOtpForgotPassword;
  const factory AuthEvent.validateOtpRequest({required String otp}) =
      _ValidateOtpRequest;
  const factory AuthEvent.updatePassword() = _UpdatePassword;
}
