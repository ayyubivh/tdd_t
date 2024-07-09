import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../manager/bloc/auth_bloc/auth_bloc.dart';
import '../../widgets/buttons/animted_button.dart';

class ForgotPassWordUserIdScreen extends StatefulWidget {
  const ForgotPassWordUserIdScreen({super.key});

  @override
  State<ForgotPassWordUserIdScreen> createState() =>
      _ForgotPassWordUserIdScreenState();
}

class _ForgotPassWordUserIdScreenState
    extends State<ForgotPassWordUserIdScreen> {
  bool showResendButton = false;
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
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
    MediaQuery.sizeOf(context);
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                sizedBox(40.0),
                _mashIcon(),
                const Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: SizeConfig.textSize(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                sizedBox(40.0),
                _userIDTextField(),
                sizedBox(20.0),
                _passwordTextField(),
                sizedBox(20.0),
                _sendOtpButton(context),
                sizedBox(20.0),
                _backToLoginText(context),
                sizedBox(40.0),
                _footer(context)
              ],
            ),
          ),
        ),
      ],
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

  sizedBox(height) {
    return SizedBox(
      height: SizeConfig.height(height),
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
                AppStrings.poweredBy,
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

  Widget _sendOtpButton(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.verifyUserResponse!.status != Status.COMPLETED &&
          current.verifyUserResponse!.status == Status.COMPLETED,
      listener: (context, state) {
        context.pushNamed(AppPages.otpScreen);
      },
      builder: (context, state) {
        return AnimatedSharedButton(
          onTap: () {
            // if (_formKey.currentState!.validate()) {
            //   BlocProvider.of<AuthBloc>(context)
            //       .add(AuthEvent.verify(userId: _userIdController.text));
            // }
            context.pushNamed(AppPages.otpScreen);
          },
          title: Text(
            "Next",
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          isLoading: state.verifyUserResponse?.status == Status.LOADING,
        );
      },
    );
  }

  Widget _userIDTextField() {
    return CommonTextField(
      controller: _userIdController,
      title: "Enter your user ID",
      prefix: const Icon(
        LineIcons.user,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter your user ID";
        }
        return null;
      },
    );
  }

  Widget _passwordTextField() {
    return CommonTextField(
      controller: _passwordController,
      title: "Enter your password",
      prefix: const Icon(
        LineIcons.lock,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter your password";
        }
        // Regular expression for password validation
        String pattern =
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
        RegExp regex = RegExp(pattern);
        if (!regex.hasMatch(value)) {
          return "Password must be at least 8 characters long.\n"
              "Include lowercase letter.\n"
              "Include uppercase letter.\n"
              "Include number.\n"
              "Include special character.";
        }
        return null;
      },
    );
  }
}
