class PaymentSaveResponseRequest {
  final String? pCompId;
  final String? pStudentId;
  final String? pInstalmentId;
  final String? pTotalAmount;
  final String? pUserName;
  final String? pUserMob;
  final String? pUserEmail;
  final String? pCfOrderId;
  final String? pPaymentType;
  final String? pPaymentDate;
  final String? pRemark;
  final String? pOrderId;
  final String? discountAmount;
  final String? isDiscount;

  PaymentSaveResponseRequest({
    required this.pCompId,
    required this.pStudentId,
    required this.pInstalmentId,
    required this.pTotalAmount,
    required this.pUserName,
    required this.pUserMob,
    required this.pUserEmail,
    required this.pCfOrderId,
    required this.pPaymentType,
    required this.pPaymentDate,
    required this.pRemark,
    required this.pOrderId,
    required this.discountAmount,
    required this.isDiscount,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_STUDENT_ID': pStudentId,
      'P_INSTALMENT_ID': pInstalmentId,
      'P_TOTAL_AMOUNT': pTotalAmount,
      'P_USER_NAME': pUserName,
      'P_USER_MOB': pUserMob,
      'P_USER_EMAIL': pUserEmail,
      'P_CF_OREDRID': pCfOrderId,
      'P_PAYMENT_TYPE': pPaymentType,
      'P_PAYMENT_DATE': pPaymentDate,
      'P_REMARK': pRemark,
      'P_ORDER_ID': pOrderId,
      'P_DISCOUNT_AMT': discountAmount,
      'P_IS_DISCOUNT': isDiscount,
    };
  }
}
