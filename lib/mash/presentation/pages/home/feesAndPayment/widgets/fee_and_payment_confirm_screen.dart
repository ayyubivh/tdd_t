import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/payment/payment_bloc.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/payment_bottom_pay_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';

class PaymentConfirmationScreen extends StatefulWidget {
  final String totalAmount;

  const PaymentConfirmationScreen({super.key, required this.totalAmount});

  @override
  State<PaymentConfirmationScreen> createState() =>
      _PaymentConfirmationScreenState();
}

class _PaymentConfirmationScreenState extends State<PaymentConfirmationScreen> {
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? instalMentIdSplitted;

  @override
  void initState() {
    super.initState();

    final installMentId =
        context.read<PaymentBloc>().state.selectedCheckboxItems;

    instalMentIdSplitted = installMentId!.toList().join(',');

    BlocProvider.of<PaymentBloc>(context).add(
        PaymentEvent.getPaymentFinalAmount(
            installmentId: "$instalMentIdSplitted ,",
            totalAmount: widget.totalAmount,
            studentId:
                context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ??
                    ""));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _descriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Fees & Payments'),
      bottomSheet: Container(
        color: const Color.fromRGBO(0, 0, 0, 0),
        height: Platform.isIOS ? 120 : 100,
        child: PaymentBottomWidget(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              BlocProvider.of<PaymentBloc>(context).add(
                  PaymentEvent.getPaymentOrderId(
                      email: _emailController.text,
                      student: _nameController.text,
                      mobile: _mobileController.text,
                      remark: _descriptionController.text,
                      installmentId: "$instalMentIdSplitted ,",
                      studentId: context
                              .read<ProfileBloc>()
                              .state
                              .getUserDetail
                              ?.data
                              ?.usrId ??
                          ""));
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
          bottom: MediaQuery.of(context).viewInsets.bottom / 3,
        ),
        child: ListView(
          children: [
            Text(
              'Payment For',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.greyText),
            ),
            spacer10,
            Divider(color: AppColors.primaryColor),
            spacer10,
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                final data = state.getUserDetail?.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data?.studentName ?? "",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    spacer20,
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Admission no - ',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: AppColors.greyText),
                        ),
                        TextSpan(
                          text: '${data?.admissionNo}',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ]),
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: SizeUtility(context).height / 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextField(
                    validator: (value) =>
                        _validateField(value, 'Enter Your Name'),
                    title: 'Enter Your Name',
                    controller: _nameController,
                    prefix: const Icon(Icons.person),
                  ),
                  spacer20,
                  CommonTextField(
                    validator: (value) =>
                        _validateField(value, 'Mobile Number'),
                    title: 'Mobile Number',
                    prefix: const Icon(Icons.call),
                    controller: _mobileController,
                    textInputType: TextInputType.phone,
                  ),
                  spacer20,
                  CommonTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      }
                      // Regular expression for validating an email
                      final RegExp emailRegExp =
                          RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
                      if (!emailRegExp.hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    title: 'Email',
                    controller: _emailController,
                    prefix: const Icon(Icons.email),
                  ),
                  spacer30,
                  Text(
                    'Payment Remarks',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.greyText),
                  ),
                  spacer10,
                  CommonTextField(
                    validator: (value) => _validateField(value, 'Remarks'),
                    controller: _descriptionController,
                    isOutlined: true,
                    title: '',
                    lines: 5,
                  ),
                  spacer15,
                  BlocConsumer<PaymentBloc, PaymentState>(
                    listener: (context, state) {
                      if (state.paymentOrderResponse.data == OrderStatus.PAID) {
                        context.pushReplacementNamed(AppPages.paymentResponse,
                            extra: OrderStatus.PAID);
                      } else if (state.paymentOrderResponse.data ==
                          OrderStatus.ACTIVE) {
                        context.pushReplacementNamed(AppPages.paymentResponse,
                            extra: OrderStatus.ACTIVE);
                      } else if (state.paymentOrderResponse.data ==
                          OrderStatus.FAILED) {
                        context.pushReplacementNamed(AppPages.paymentResponse,
                            extra: OrderStatus.FAILED);
                      }
                    },
                    builder: (context, state) {
                      final amounts = state.paymentFinalAmountResponse;
                      return (double.tryParse(amounts?.discountAmount ?? '') ??
                                  0) >
                              0
                          ? Row(
                              children: [
                                Icon(Icons.sell_outlined,
                                    color: AppColors.primaryColor),
                                spacerWidth4,
                                Flexible(
                                  child: Text(
                                    'Congragulations you are eligible for ${amounts?.discountPercentage}% dicount as you used MASH for payment',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null; // Return null if the input is valid
  }
}
