part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required ResponseClassify<List<PaymentDashboardEntity>>
        paymentDashboardResponse,
    required int? selectedItemIndex,
    required Set<String?>? selectedCheckboxItems,
    required String totalAmount,
    required ResponseClassify<List<PaymentDashboardEntity>>
        paymentHistoryResponse,
    required ResponseClassify<OrderStatus> paymentOrderResponse,
    required PaymentFinalAmountEntity? paymentFinalAmountResponse,
    required String paymentError,
    required ResponseClassify<String> feeRecieptResponse,
    required String installmentId,
    required String shareFile,
    required ResponseClassify<String> feeReceiptByDocname,
    required ValueNotifier<double> progressEvent,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState(
        paymentDashboardResponse: ResponseClassify.initial(),
        selectedItemIndex: null,
        selectedCheckboxItems: {},
        totalAmount: '',
        paymentHistoryResponse: ResponseClassify.initial(),
        paymentOrderResponse: ResponseClassify.initial(),
        paymentFinalAmountResponse: null,
        paymentError: '',
        feeRecieptResponse: ResponseClassify.initial(),
        installmentId: '',
        shareFile: '',
        feeReceiptByDocname: ResponseClassify.initial(),
        progressEvent: ValueNotifier<double>(0),
      );
}
