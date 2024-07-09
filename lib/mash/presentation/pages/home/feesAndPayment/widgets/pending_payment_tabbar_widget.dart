import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fees_and_payments_tabs.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../../../core/response_classify.dart';
import '../../../../../domain/entities/payment/payment_dashboard_entity.dart';
import '../../../../manager/bloc/payment/payment_bloc.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/loader.dart';
import 'payment_bottom_pay_widget.dart';

class PendingPaymentTabbarWidget extends StatefulWidget {
  const PendingPaymentTabbarWidget({super.key});

  @override
  State<PendingPaymentTabbarWidget> createState() =>
      _PendingPaymentTabbarWidgetState();
}

class _PendingPaymentTabbarWidgetState
    extends State<PendingPaymentTabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: _buildPaymentList(context)),
        PaymentBottomWidget(
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) => const PaymentDialog(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPaymentList(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        if (state.paymentDashboardResponse.status == Status.LOADING) {
          return const Loader();
        } else if (state.paymentDashboardResponse.data?.isEmpty ?? true) {
          return HelperClasses.emptyDataWidget();
        } else {
          final duePayments = state.paymentDashboardResponse.data!
              .where((data) => data.isDue == '1')
              .toList();
          final upcomingPayments = state.paymentDashboardResponse.data!
              .where((data) => data.isDue == '0')
              .toList();

          return PaymentListView(
            duePayments: duePayments,
            upcomingPayments: upcomingPayments,
            state: state,
          );
        }
      },
    );
  }
}

class PaymentListView extends StatelessWidget {
  final List<PaymentDashboardEntity> duePayments;
  final List<PaymentDashboardEntity> upcomingPayments;
  final PaymentState state;

  const PaymentListView({
    super.key,
    required this.duePayments,
    required this.upcomingPayments,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = duePayments.length + upcomingPayments.length + 1;

    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => spacer7,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index < duePayments.length) {
          return PaymentItem(
            data: duePayments[index],
            isSelected: state.selectedItemIndex == index,
            isChecked: state.selectedCheckboxItems!
                    .contains(duePayments[index].feeTrackId) ||
                duePayments[index].isDue == '1',
            index: index,
            state: state,
          );
        } else if (upcomingPayments.isEmpty) {
          return const SizedBox();
        } else if (index == duePayments.length) {
          return const UpcomingPaymentsHeader();
        } else {
          final upcomingIndex = index - duePayments.length - 1;
          return PaymentItem(
            data: upcomingPayments[upcomingIndex],
            isSelected: state.selectedItemIndex == upcomingIndex,
            isChecked: state.selectedCheckboxItems!
                .contains(upcomingPayments[upcomingIndex].feeTrackId),
            index: upcomingIndex,
            state: state,
          );
        }
      },
    );
  }
}

class PaymentItem extends StatelessWidget {
  final PaymentDashboardEntity data;
  final bool isSelected;
  final bool isChecked;
  final int index;
  final PaymentState state;

  const PaymentItem({
    super.key,
    required this.data,
    required this.isSelected,
    required this.isChecked,
    required this.index,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return PaidWidget(
      onTap: () {
        BlocProvider.of<PaymentBloc>(context).add(
          PaymentEvent.selectedItemIndex(
            index: state.selectedItemIndex == index ? null : index,
          ),
        );
      },
      onChanged: (_) {
        data.isDue == '0'
            ? BlocProvider.of<PaymentBloc>(context).add(
                PaymentEvent.selectPaymentsCheckboxEvent(data.feeTrackId!),
              )
            : null;
      },
      isChecked: isChecked,
      isSelected: isSelected,
      isPending: true,
      entity: data,
      date: 'Due date',
      amount: 'Due amount',
    );
  }
}

class UpcomingPaymentsHeader extends StatelessWidget {
  const UpcomingPaymentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        'Upcoming Payments',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
