import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/request/login_request.dart';
import 'package:mash/mash/data/remote/request/send_otp_request.dart';
import 'package:mash/mash/data/remote/request/update_password_request.dart';
import 'package:mash/mash/data/remote/request/validate_otp_request.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/save_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/send_otp_forgot_password_usecase.dart';
import 'package:mash/mash/domain/use_cases/auth/sign_out_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/update_password_repository.dart';
import 'package:mash/mash/domain/use_cases/auth/validate_otp_usecase.dart';
import 'package:mash/mash/domain/use_cases/auth/verify_user_usecase.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../../core/custom_exception.dart';
import '../../../../../core/response_classify.dart';
import '../../../../domain/entities/auth/auth_response_entity.dart';
import '../../../../domain/entities/auth/verify_user_entity.dart';
import '../../../router/app_pages.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

/// BLoC responsible for managing the authentication state.
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_Login>(_login);
    on<_SignOut>(_signOut);
    on<_VerifyUser>(_verifyUser);
    on<_SendOtpForgotPassword>(_sendOtpForgotPassword);
    on<_ValidateOtpRequest>(_validateOtp);
    on<_UpdatePassword>(_updatePassword);
  }

  /// Handles the [_Login] event by performing the login operation.

  /// Handles the [_SignOut] event by performing the sign out operation.
  void _signOut(_SignOut event, Emitter<AuthState> emit) async {
    emit(state.copyWith(signOutResponse: ResponseClassify.loading()));
    try {
      await signOutUseCase.call(NoParams());

      emit(state.copyWith(
        signOutResponse:
            ResponseClassify.completed(signOutUseCase.call(NoParams())),
      ));
      GoRouter.of(event.context).pop();
      GoRouter.of(event.context).goNamed(AppPages.login);
    } catch (e) {
      emit(state.copyWith(
        signOutResponse: ResponseClassify.error(e.toString()),
      ));
    }
  }

  void _login(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState(
      loginResponse: ResponseClassify.loading(),
      userDetails: null,
    ));

    try {
      final res = await loginUseCase.call(event.loginRequest);
      prettyPrint("response ${res.token}");

      emit(AuthState(
        loginResponse: ResponseClassify.completed(res),
        userDetails: res.resTable.isNotEmpty ? res.resTable.first : null,
      ));

      await saveUserUseCase
          .call(LoginLocalModel.fromEntity(res.resTable.first));
    } on UnauthorisedException catch (e) {
      emit(AuthState(
        loginResponse: ResponseClassify.error("$e Unauthorized"),
        userDetails: null,
      ));
    } catch (e) {
      prettyPrint(e.toString());
      emit(AuthState(
        loginResponse: ResponseClassify.error(e.toString()),
        userDetails: null,
      ));
    }
  }

  FutureOr<void> _verifyUser(_VerifyUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(verifyUserResponse: ResponseClassify.loading()));

    try {
      final data = await verifyUserUsecase.call(event.userId);
      final userData = data.resTable.first;
      emit(state.copyWith(
        verifyUserResponse: ResponseClassify.completed(data),
        compId: userData.compId,
        mobNo: userData.userMob,
        userId: userData.userId,
        userType: userData.userId,
      ));
    } catch (e) {
      HelperClasses.showSnackBar(msg: e.toString());
      emit(state.copyWith(verifyUserResponse: ResponseClassify.error(e)));
    }
  }

  _sendOtpForgotPassword(
      _SendOtpForgotPassword event, Emitter<AuthState> emit) async {
    try {
      final data =
          await sendOtpForgotPasswordUsecase.call(event.sendOtpRequest);
      if (data == 200) {
        emit(state.copyWith(validateUser: true));
      }
    } catch (e) {
      HelperClasses.showSnackBar(msg: e.toString());
    }
  }

  _validateOtp(_ValidateOtpRequest event, Emitter<AuthState> emit) async {
    try {
      final data = await validateOtpUsecase.call(ValidatOtpRequest(
          companyId: state.compId ?? "",
          userId: state.userId ?? "",
          otp: event.otp,
          userType: state.userType ?? ""));
      if (data == '1') {
        add(const _UpdatePassword());
      } else {
        HelperClasses.showSnackBar(msg: 'enter valid otp');
      }
    } catch (e) {
      HelperClasses.showSnackBar(msg: e.toString());
    }
  }

  _updatePassword(_UpdatePassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(updatePassword: ResponseClassify.loading()));
    try {
      final data = await updatePasswordUsecase.call(UpdatePasswordRequest(
          companyId: state.compId ?? '',
          password: state.password ?? "",
          userId: state.userId ?? "",
          userType: state.userType ?? ""));
      if (data == '0') {
        emit(state.copyWith(
            updatePassword:
                ResponseClassify.error('Last 3 password not allowed')));
      } else if (data == '1') {
        emit(state.copyWith(updatePassword: ResponseClassify.completed(true)));
      }
    } catch (e) {
      emit(state.copyWith(updatePassword: ResponseClassify.error('$e')));
    }
  }

  /// Use case for performing the login operation.
  final LoginUseCase loginUseCase = getIt<LoginUseCase>();

  /// Use case for saving user information after successful login.
  final SaveUserInfoUseCase saveUserUseCase = getIt<SaveUserInfoUseCase>();

  /// Use case for fetching user information.
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  /// Use case for performing the sign out operation.
  final SignOutUseCase signOutUseCase = getIt<SignOutUseCase>();

  /// Use case for verify user
  final VerifyUserUsecase verifyUserUsecase = getIt<VerifyUserUsecase>();

  /// Use case for send otp for forgot password
  final SendOtpForgotPasswordUsecase sendOtpForgotPasswordUsecase =
      getIt<SendOtpForgotPasswordUsecase>();

  ///Use case for validate otp
  final ValidateOtpUsecase validateOtpUsecase = getIt<ValidateOtpUsecase>();

  ///Use case update password
  final UpdatePasswordUsecase updatePasswordUsecase =
      getIt<UpdatePasswordUsecase>();

  /// Static method to retrieve the [AuthBloc] instance from the provided context.
  static AuthBloc get(context) => BlocProvider.of(context);
}
