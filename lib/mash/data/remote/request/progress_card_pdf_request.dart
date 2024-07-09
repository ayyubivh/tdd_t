class ProgressCardPdfRequest {
  final String? pCompId;
  final String? pAcademicId;
  final String? pClassId;
  final String? pMediumId;
  final String? pDivisionId;
  final String? pTermId;
  final String? pUserId;

  ProgressCardPdfRequest({
    required this.pCompId,
    required this.pAcademicId,
    required this.pClassId,
    required this.pMediumId,
    required this.pDivisionId,
    required this.pTermId,
    required this.pUserId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_ACADEMIC_ID': pAcademicId,
      'P_CLASS_ID': pClassId,
      'P_MEDIUM_ID': pMediumId,
      'P_DIVISION_ID': pDivisionId,
      'P_TERM_ID': pTermId,
      'P_USER_ID': pUserId,
    };
  }
}
