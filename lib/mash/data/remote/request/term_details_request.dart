class TermDetailsRequest {
  final String pCompId;
  final String pAcademicId;
  final String pClassId;

  TermDetailsRequest({
    required this.pCompId,
    required this.pAcademicId,
    required this.pClassId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_ACADEMIC_ID': pAcademicId,
      'P_CLASS_ID': pClassId,
    };
  }
}
