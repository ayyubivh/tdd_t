class PaymentFinalRequest {
  final String pCompId;
  final String pInstallmentId;
  final String pStudentId;
  final String pTotalAmount;

  PaymentFinalRequest({
    required this.pCompId,
    required this.pInstallmentId,
    required this.pStudentId,
    required this.pTotalAmount,
  });
  Map<String, dynamic> toJson() => {
        'P_COMP_ID': pCompId,
        'P_INSTALLMENT_ID': pInstallmentId,
        'P_STUDENT_ID': pStudentId,
        'P_TOTAL_AMOUNT': pTotalAmount,
      };
}
