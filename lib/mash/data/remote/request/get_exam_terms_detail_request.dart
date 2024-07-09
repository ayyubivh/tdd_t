class ExamTermDetailRequest {
  final String companyId;
  final String pAcademicId;
  final String classId;

  ExamTermDetailRequest(
      {required this.companyId,
      required this.pAcademicId,
      required this.classId});

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      "P_ACADEMIC_ID": pAcademicId,
      "P_CLASS_ID": classId
    };
  }
}
