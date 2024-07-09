import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fees_and_payments_tabs.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import '../../../../manager/bloc/payment/payment_bloc.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/loader.dart';

class PaidPaymentTabbarWidget extends StatefulWidget {
  const PaidPaymentTabbarWidget({super.key});

  @override
  State<PaidPaymentTabbarWidget> createState() =>
      _PaidPaymentTabbarWidgetState();
}

class _PaidPaymentTabbarWidgetState extends State<PaidPaymentTabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<PaymentBloc, PaymentState>(
        builder: (context, state) {
          switch (state.paymentDashboardResponse.status) {
            case Status.LOADING:
              return const Loader();
            case Status.COMPLETED:
              if (state.paymentDashboardResponse.data?.isEmpty ?? true) {
                return HelperClasses.emptyDataWidget();
              } else {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return spacer7;
                  },
                  itemCount: state.paymentDashboardResponse.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return state.paymentDashboardResponse.data == null
                        ? const Loader()
                        : PaidWidget(
                            onTap: () {
                              BlocProvider.of<PaymentBloc>(context).add(
                                  PaymentEvent.selectedItemIndex(
                                      index: index == state.selectedItemIndex
                                          ? null
                                          : index));
                            },
                            isSelected: state.selectedItemIndex == index,
                            isPending: false,
                            entity: state.paymentDashboardResponse.data![index],
                            amount: 'Paid Amount',
                            date: 'Paid On',
                          );
                  },
                );
              }
            case Status.ERROR:
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
