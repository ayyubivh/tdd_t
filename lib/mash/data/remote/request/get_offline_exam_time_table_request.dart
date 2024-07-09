class ExamTimeTableRequest {
  final String companyId;
  final String pAcademicId;
  final String termId;
  final String pKidId;

  ExamTimeTableRequest({
    required this.companyId,
    required this.pAcademicId,
    required this.pKidId,
    required this.termId
  });


  Map<String, dynamic> toJson() {
    return {
      "P_ACADEMIC_ID":pAcademicId,
      "P_COMP_ID":companyId,
      "P_TERM_ID":termId,
      "P_KID_ID" :pKidId
    };
  }
}
