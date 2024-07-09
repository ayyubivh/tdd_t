import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/payment/payment_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';
import 'package:rive/rive.dart';
import 'package:share_plus/share_plus.dart';

class PaymentResponseScreen extends StatelessWidget {
  final OrderStatus orderStatus;

  const PaymentResponseScreen({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    final asset = _getLottieAsset(orderStatus);
    final message = _getMessage(orderStatus);

    return Scaffold(
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listenWhen: (previous, current) {
          return previous.feeRecieptResponse.status == Status.LOADING &&
              (current.feeRecieptResponse.status == Status.COMPLETED ||
                  current.feeRecieptResponse.status == Status.ERROR);
        },
        listener: (context, state) {
          if (state.feeRecieptResponse.status == Status.COMPLETED) {
            context.pushReplacementNamed(AppPages.pdfViewScreen,
                extra: state.feeRecieptResponse.data);
            BlocProvider.of<PaymentBloc>(context)
                .add(const PaymentEvent.disposeEvent());
          } else if (state.feeRecieptResponse.status == Status.ERROR) {
            HelperClasses.showSnackBar(msg: state.feeRecieptResponse.error);
          }
        },
        builder: (context, state) => state.feeRecieptResponse.status ==
                Status.LOADING
            ? Container(
                color: Colors.black.withOpacity(0.3), child: const Loader())
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    child: RiveAnimation.asset(
                      asset,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 20,
                  ), // Add some spacing between Lottie and Text
                  Text(
                    message,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: SizeUtility(context).height / 10),
                  orderStatus == OrderStatus.PAID
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                width: SizeUtility(context).width / 2,
                                elevation: 3,
                                icon: AppAssets.downloadIcon,
                                name: 'View Reciept',
                                onTap: () {
                                  BlocProvider.of<PaymentBloc>(context).add(
                                    PaymentEvent.getFeeReceipt(
                                      studentId: context
                                              .read<ProfileBloc>()
                                              .state
                                              .getUserDetail
                                              ?.data
                                              ?.usrId ??
                                          "",
                                      receiptType: ReceiptType.view,
                                    ),
                                  );
                                },
                              ),
                              spacerWidth15,
                              _iconContainerWidget(
                                  assetFromSvg(AppAssets.share)),
                            ],
                          ),
                        )
                      : spacer10,
                  SizedBox(height: SizeUtility(context).height / 10),
                  Flexible(
                    child: CustomIconButton(
                      color: AppColors.primaryColor.withOpacity(0.3),
                      elevation: 0,
                      name: orderStatus == OrderStatus.FAILED
                          ? 'Back to Payment'
                          : "Back to Home",
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context)
                            .add(const PaymentEvent.disposeEvent());
                        // GoRouter.of(context).goNamed(AppPages.feesAndPaymentScreen);
                        context.pop();
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }

  Widget _iconContainerWidget(
    Widget child,
  ) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) async {
        if (state.shareFile != "") {
          var path = File(state.shareFile);

          if (await path.exists()) {
            Share.shareXFiles([XFile(path.path)]);
          } else {
            prettyPrint('noto found');
          }
        }
      },
      builder: (context, state) => GestureDetector(
        onTap: () async {
          BlocProvider.of<PaymentBloc>(context).add(PaymentEvent.getFeeReceipt(
            studentId:
                context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ??
                    "",
            receiptType: ReceiptType.share,
          ));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: child,
        ),
      ),
    );
  }

  String _getLottieAsset(OrderStatus status) {
    switch (status) {
      case OrderStatus.ACTIVE:
        return AppAssets.processing;
      case OrderStatus.FAILED:
        return AppAssets.paymentFailed;
      case OrderStatus.PAID:
        return AppAssets.paymentSuccess;
      default:
        return "";
    }
  }

  String _getMessage(OrderStatus status) {
    switch (status) {
      case OrderStatus.ACTIVE:
        return "Payment is processing...";
      case OrderStatus.FAILED:
        return "Payment failed. Please try again.";
      case OrderStatus.PAID:
        return "Payment successful";
      default:
        return ""; // Return a default value or handle this case appropriately
    }
  }
}
