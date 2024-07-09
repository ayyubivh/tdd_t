class GetFeeSuccessReceiptRequest {
  final String compId;
  final String studentId;
  final String academicId;
  final String installmentId;

  GetFeeSuccessReceiptRequest(
      {required this.compId,
      required this.studentId,
      required this.academicId,
      required this.installmentId});
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_STUDENT_ID': studentId,
      'P_ACADEMIC_ID': academicId,
      'P_INSTALLMENT_ID': installmentId,
    };
  }
}
