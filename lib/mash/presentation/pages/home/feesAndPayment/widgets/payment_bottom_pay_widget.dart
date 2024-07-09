import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../manager/bloc/payment/payment_bloc.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../widgets/buttons/animted_button.dart';
import '../../../../widgets/buttons/icon_button.dart';

class PaymentBottomWidget extends StatelessWidget {
  final Function onTap;
  const PaymentBottomWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10)
          .copyWith(top: 5, bottom: Platform.isIOS ? 25 : 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.greyClr200),
      ),
      child: Column(
        children: [
          const TotalAmountRow(),
          spacer10,
          AnimatedSharedButton(
            isLoading: false,
            onTap: onTap,
            title: Text(
              'Pay Now',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TotalAmountRow extends StatelessWidget {
  const TotalAmountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.greyText,
          ),
        ),
        const Text(':'),
        BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return Text(
              '₹ ${state.totalAmount}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ],
    );
  }
}

class PaymentDialog extends StatefulWidget {
  const PaymentDialog({super.key});

  @override
  State<PaymentDialog> createState() => _PaymentDialogState();
}

class _PaymentDialogState extends State<PaymentDialog> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String totalAmount = '';
  @override
  void initState() {
    totalAmount = context.read<PaymentBloc>().state.totalAmount;
    _controller.text = totalAmount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: InkResponse(
              onTap: () {
                context.pop();
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.redColor,
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Partial Payment',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacer7,
              const Divider(),
              spacer7,
              Text(
                'Enter Amount to Pay (Partial Payment)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey200,
                ),
              ),
              spacer10,
              Padding(
                padding: const EdgeInsets.all(8),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: const Icon(Icons.currency_rupee_sharp),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                        border: const OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.cancelRed))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an amount';
                      } else {
                        final parsedValue = int.tryParse(value) ?? 0;
                        if (parsedValue <= 0) {
                          return 'Amount should not be 0 or negative';
                        }

                        final int totalAmountInt =
                            int.tryParse(totalAmount) ?? 0;
                        if (parsedValue > totalAmountInt) {
                          return 'Amount should not be higher than $totalAmountInt';
                        }

                        return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomIconButton(
                  icon: '',
                  color: AppColors.primaryColor.withOpacity(0.2),
                  elevation: 0,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      context.pop();
                      GoRouter.of(context).pushNamed(
                          AppPages.feesAndPaymentsConfirmation,
                          extra: _controller.text);
                    }
                  },
                  name: 'Submit',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
