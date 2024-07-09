part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    ResponseClassify<AuthResponseEntity>? loginResponse,
    LoginResTableEntity? userDetails,
    ResponseClassify<void>? signOutResponse,
    ResponseClassify<VerifyUserEntity>? verifyUserResponse,
    ResponseClassify<bool>? updatePassword,
    bool? validateUser,
    String? userId,
    String? mobNo,
    String? compId,
    String? userType,
    String? password,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
        loginResponse: ResponseClassify.initial(),
        signOutResponse: ResponseClassify.initial(),
        userDetails: null,
        verifyUserResponse: ResponseClassify.initial(),
        validateUser: null,
        updatePassword: ResponseClassify.initial(),
      );
}
