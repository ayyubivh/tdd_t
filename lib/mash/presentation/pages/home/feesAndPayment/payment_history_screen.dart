import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/payment/payment_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_icon_button.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class PaymentHistoryScreen extends StatelessWidget {
  final String trackId;
  const PaymentHistoryScreen({super.key, required this.trackId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.transactionHistory),
      body: BlocConsumer<PaymentBloc, PaymentState>(
          listenWhen: (previous, current) =>
              previous.feeReceiptByDocname.status != Status.COMPLETED &&
                  current.feeReceiptByDocname.status == Status.COMPLETED ||
              previous.feeRecieptResponse.status == Status.LOADING &&
                  (current.feeRecieptResponse.status == Status.COMPLETED ||
                      current.feeRecieptResponse.status == Status.ERROR),
          listener: (context, state) async {
            if (state.feeReceiptByDocname.status == Status.COMPLETED) {
              context.pushNamed(AppPages.pdfViewScreen,
                  extra: state.feeReceiptByDocname.data);
            } else if (state.feeRecieptResponse.status == Status.COMPLETED) {
              context.pushReplacementNamed(AppPages.pdfViewScreen,
                  extra: state.feeRecieptResponse.data);
              BlocProvider.of<PaymentBloc>(context)
                  .add(const PaymentEvent.disposeEvent());
            }
          },
          builder: (context, state) => state.feeReceiptByDocname.status ==
                      Status.LOADING ||
                  state.feeRecieptResponse.status == Status.LOADING
              ? Container(
                  color: Colors.black.withOpacity(0.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Loader(),
                      spacer20,
                      ValueListenableBuilder(
                          valueListenable: state.progressEvent,
                          builder: (context, data, _) {
                            return Text(
                              'Downloading ${data.floor()}',
                              style: TextStyle(color: AppColors.primaryColor),
                            );
                          })
                    ],
                  ))
              : TransactHistoryItems(
                  trackId: trackId,
                  state: state,
                )),
    );
  }
}

class TransactHistoryItems extends StatefulWidget {
  final String trackId;
  final PaymentState state;
  const TransactHistoryItems(
      {super.key, required this.trackId, required this.state});

  @override
  State<TransactHistoryItems> createState() => _TransactHistoryItemsState();
}

class _TransactHistoryItemsState extends State<TransactHistoryItems> {
  @override
  void initState() {
    BlocProvider.of<PaymentBloc>(context).add(PaymentEvent.getPaymentDashboard(
        paymentStatusType: PaymentStatusType.transaction,
        trackId: widget.trackId,
        userId: context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ??
            ""));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return spacer7;
          },
          itemCount: widget.state.paymentHistoryResponse.data?.length ?? 0,
          itemBuilder: (context, index) {
            if (widget.state.paymentHistoryResponse.data == null ||
                widget.state.paymentHistoryResponse.status == Status.LOADING ||
                widget.state.feeReceiptByDocname.status == Status.LOADING) {
              return const Loader();
            } else {
              final data = widget.state.paymentHistoryResponse.data?[index];
              final List<String> parts = data!.paidOn!.split(' ');
              String date = parts[0];
              String time = '${parts[1]} ${parts[2]}';

              return primaryShadowContainer(
                marginHorizontal: 15,
                marginVertical: 5,
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    expandedAlignment: Alignment.centerLeft,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fee Details',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        spacer10,
                        Row(
                          children: [
                            const Text(
                              'Paid On - ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            Text(
                              date,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '${AppStrings.paidAt} - ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            Text(
                              time,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonSmallButton(
                                onPress: () {
                                  BlocProvider.of<PaymentBloc>(context).add(
                                      PaymentEvent.getFeeReceiptByDocName(
                                          data.receiptNo ?? ''));
                                },
                                title: AppStrings.viewReceipt,
                                prefixIcon: Icons.remove_red_eye_rounded,
                                color: AppColors.primaryColor),
                            Row(
                              children: [
                                CommonIconButton(
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
                                            receiptType: ReceiptType.download));
                                  },
                                  icon: Icons.file_download_outlined,
                                ),
                                CommonIconButton(
                                  onTap: () {
                                    BlocProvider.of<PaymentBloc>(context)
                                        .add(PaymentEvent.getFeeReceipt(
                                      studentId: context
                                              .read<ProfileBloc>()
                                              .state
                                              .getUserDetail
                                              ?.data
                                              ?.usrId ??
                                          "",
                                      receiptType: ReceiptType.share,
                                    ));
                                  },
                                  icon: Icons.share,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      spacer10,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${AppStrings.paidBy}\n${data.paidBy}\n${data.phoneNo}\n${data.emailId}',
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.4,
                                fontWeight: FontWeight.w500,
                                color: AppColors.greyText,
                              ),
                            )),
                      ),
                      spacer10
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
