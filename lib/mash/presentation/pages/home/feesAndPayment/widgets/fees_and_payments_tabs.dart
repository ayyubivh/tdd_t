import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/paid_payment_tabbar_widget.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/pending_payment_tabbar_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import 'package:mash/mash/presentation/widgets/buttons/icon_button.dart';

import '../../../../manager/bloc/payment/payment_bloc.dart';
import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';
import '../../../../utils/app_strings.dart';
import '../../../../utils/enums.dart';
import '../../../../widgets/drawer_widget.dart';

class FeesAndPaymentsTabs extends StatefulWidget {
  const FeesAndPaymentsTabs({super.key});

  @override
  State<FeesAndPaymentsTabs> createState() => _FeesAndPaymentsTabsState();
}

class _FeesAndPaymentsTabsState extends State<FeesAndPaymentsTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabController.addListener(_handleTabIndexChange);

    fetchPaymentDashboard(PaymentStatusType.pending);
  }

  void _handleTabIndexChange() {
    final paymentStatusType = _tabController.index == 0
        ? PaymentStatusType.pending
        : PaymentStatusType.paid;
    fetchPaymentDashboard(paymentStatusType);
  }

  void fetchPaymentDashboard(PaymentStatusType paymentStatusType) {
    BlocProvider.of<PaymentBloc>(context).add(
      PaymentEvent.getPaymentDashboard(
        paymentStatusType: paymentStatusType,
        userId:
            context.read<ProfileBloc>().state.getUserDetail?.data?.usrId ?? "",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.feesAndPaymentScreen),
          bottom: TabBar(
            isScrollable: false,
            indicatorWeight: 3,
            controller: _tabController,
            tabs: const [
              Tab(text: AppStrings.pending),
              Tab(text: AppStrings.paid),
            ],
          ),
        ),
        endDrawer: const DrawerWidget(),
        body: BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              previous.getUserDetail != current.getUserDetail,
          listener: (context, state) {
            _handleTabIndexChange();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                spacer10,
                HelperClasses.getSelectedStudent(context, true),
                spacer10,
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: const [
                      PendingPaymentTabbarWidget(),
                      PaidPaymentTabbarWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaidWidget extends StatelessWidget {
  final PaymentDashboardEntity entity;

  final String date;
  final String amount;
  final bool isPending;
  final bool isSelected;
  final bool? isChecked;
  final VoidCallback onTap;
  final Function(bool?)? onChanged;

  const PaidWidget({
    super.key,
    required this.entity,
    required this.date,
    required this.amount,
    required this.isPending,
    required this.isSelected,
    required this.onTap,
    this.isChecked,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.4),
              offset: const Offset(2, 2),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ]),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  getMonthName(entity.dueDate.toString()),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                isPending
                    ? Checkbox(
                        value: isChecked,
                        onChanged: onChanged,
                      )
                    : spacer40
              ],
            ),
            Text(
              '${entity.instalmentName}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            Text(
              entity.feeHeadName ?? "",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 2,
                color: AppColors.greyText,
              ),
            ),
            Row(
              children: [
                Text(
                  '$date - ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.greyText,
                    height: 1.8,
                  ),
                ),
                Text(
                  '${date == 'Due date' ? entity.dueDate : entity.paidDate}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    height: 1.8,
                  ),
                ),
              ],
            ),
            spacer4,
            Row(
              children: [
                Text(
                  '\u20B9${date == 'Due date' ? entity.feeAmountBalance : entity.feeAmountPaid}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: date == 'Due date'
                        ? AppColors.redColor
                        : AppColors.green2,
                  ),
                ),
                const Spacer(),
                Text(
                  AppStrings.details,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
                spacerWidth10,
                isSelected
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: AppColors.primaryColor,
                      )
                    : Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
              ],
            ),
            isSelected
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      spacer20,
                      Container(
                        height: 2,
                        width: SizeUtility(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: AppColors.primaryLinearGradient,
                        ),
                      ),
                      spacer15,
                      entity.feeAmountPaid != "0"
                          ? Align(
                              alignment: Alignment.center,
                              child: CustomIconButton(
                                elevation: 0,
                                color: AppColors.primaryColor.withOpacity(0.2),
                                name: 'Transaction History',
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                      AppPages.transactionHistory,
                                      extra: entity.feeTrackId);
                                },
                                icon: AppAssets.transactionHistory,
                              ),
                            )
                          : const SizedBox.shrink(),
                      isPending
                          ? Container(
                              margin: const EdgeInsets.only(top: 15, bottom: 5),
                              decoration: BoxDecoration(
                                color: AppColors.greyClr100,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.grey200.withOpacity(0.4),
                                    offset: const Offset(0, 0),
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  ),
                                ],
                                border: Border.all(
                                  color: AppColors.white,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              child: Column(
                                children: [
                                  _transactionsWidget(
                                      title: 'Fee Amount',
                                      amount: entity.feeAmount ?? ""),
                                  _transactionsWidget(
                                      title: 'Fee Amount Paid',
                                      amount: entity.feeAmountPaid ?? ""),
                                  _transactionsWidget(
                                      title: 'Fee Amount Balance',
                                      amount: entity.feeAmountBalance ?? ""),
                                  _transactionsWidget(
                                      title: 'Payable Amount',
                                      amount: entity.payableAmount ?? ""),
                                  _transactionsWidget(
                                      title: 'Annual concession',
                                      amount: entity.annualConcession ?? ""),
                                  _transactionsWidget(
                                      title: 'Due Amount',
                                      amount: entity.due ?? ""),
                                ],
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _transactionsWidget({required String title, required String amount}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.greyText,
            ),
          ),
          Text(
            ' ₹ $amount',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  String getMonthName(String dateStr) {
    DateTime date = DateFormat('dd-MM-yyyy').parse(dateStr);
    return DateFormat.MMMM().format(date);
  }
}
