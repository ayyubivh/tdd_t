import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;
  int _countDown = 30;
  bool _showResendButton = false;
  String? otp;
  OtpFieldController? otpController;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countDown > 0) {
          _countDown--;
        } else {
          _showResendButton = true;
          _timer!.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _loginBody(context),
    );
  }

  _loginBody(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              AppAssets.loginStackImage,
              color: Colors.purple.withOpacity(0.5),
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              sizedBox(20.0),
              _mashIcon(),
              sizedBox(80.0),
              _welcomeText(),
              sizedBox(100.0),
              _otpField(),
              sizedBox(60.0),
              _submitOtpButton(context),
              sizedBox(10.0),
              _resendButtonAndTimer(),
              sizedBox(20.0),
              _backToLoginText(context),
              sizedBox(40.0),
              _footer(context)
            ],
          ),
        ),
      ],
    );
  }

  sizedBox(height) {
    return SizedBox(
      height: SizeConfig.height(height),
    );
  }

  Align _backToLoginText(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: TextButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: const Text(
            AppStrings.backToLogin,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

  Widget _footer(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Text('Version:10.6'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.backToLogin,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              spacerWidth10,
              SizedBox(
                height: 20,
                child: Image.asset(AppAssets.manappuramLogo),
              ),
              SizedBox(
                height: SizeUtility(context).height * 0.14,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _mashIcon() {
    return Center(
      child: SvgPicture.asset(
        AppAssets.mashLoginLogo,
      ),
    );
  }

  Widget _welcomeText() {
    return const Align(
      alignment: Alignment.topCenter,
      child: Text(
        AppStrings.enter4DigitOtp,
        style: TextStyle(
            letterSpacing: 2, fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _submitOtpButton(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.updatePassword?.status != Status.COMPLETED &&
          current.updatePassword?.status == Status.COMPLETED,
      listener: (context, state) {
        if (state.updatePassword?.status == Status.COMPLETED) {
          HelperClasses.showSnackBar(msg: 'Password updated successfully');
          context.pushNamed(AppPages.login);
        }
      },
      builder: (context, state) {
        return AnimatedSharedButton(
            onTap: () {
              if (otp != null || otp?.length == 4) {
                BlocProvider.of<AuthBloc>(context)
                    .add(AuthEvent.validateOtpRequest(otp: otp!));
              }
            },
            title: Text(
              AppStrings.submitOtp,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            isLoading: state.updatePassword?.status == Status.LOADING);
      },
    );
  }

  _otpField() {
    return OTPTextField(
      length: 4,
      controller: otpController,
      otpFieldStyle: OtpFieldStyle(focusBorderColor: Colors.purple),
      width: 150,
      fieldWidth: 60,
      style: const TextStyle(fontSize: 14),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        setState(() {
          otp = pin;
        });
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  _resendButtonAndTimer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: !_showResendButton,
            child: Text(
              'Resend OTP in $_countDown seconds',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          spacerWidth20,
          Visibility(
            visible: _showResendButton,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _countDown = 30;
                  _showResendButton = false;
                  startTimer();
                });
              },
              child: const Text(
                AppStrings.resend,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
