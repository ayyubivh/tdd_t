part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.getPaymentDashboard({
    required PaymentStatusType paymentStatusType,
    required String userId,
    String? trackId,
  }) = _GetPaymentDashboard;
  const factory PaymentEvent.selectPaymentsCheckboxEvent(String id) =
      _SelectPaymentsCheckboxEvent;
  const factory PaymentEvent.selectedItemIndex({
    required int? index,
  }) = _SelectedItemIndex;
  const factory PaymentEvent.getPaymentFinalAmount({
    required String totalAmount,
    required String installmentId,
    required String studentId,
  }) = _GetPaymentFinalAmount;
  const factory PaymentEvent.getPaymentOrderId({
    required String email,
    required String student,
    required String mobile,
    required String remark,
    required String installmentId,
    required String studentId,
  }) = _GetPaymentOrderId;
  const factory PaymentEvent.getPaymentTokenAndOpenPayment({
    required String email,
    required String student,
    required String mobile,
    required String remark,
    required String installmentId,
    required String studentId,
    required String orderId,
  }) = _GetPaymentTokenAndOpenPayment;
  const factory PaymentEvent.getPaymentCompleteResponse({
    String? orderId,
    String? userName,
    String? email,
    String? remark,
    String? studenId,
    String? mobile,
    String? installMentId,
  }) = _GetPaymentCompleteResponse;
  const factory PaymentEvent.disposeEvent() = _PaymentDisposeEvent;
  const factory PaymentEvent.getFeeReceipt({
    required String studentId,
    required ReceiptType receiptType,
  }) = _GetFeeReceipt;
  const factory PaymentEvent.getFeeReceiptByDocName(String docName) =
      _GetFeeReceiptByDocName;
}
