class ScoreBoardDetailsRequest {
  String compId;
  String termId;
  String academicId;
  String studentId;
  ScoreBoardDetailsRequest({
    required this.compId,
    required this.termId,
    required this.academicId,
    required this.studentId,
  });
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_TERM_ID': termId,
      'P_ACADEMIC_ID': academicId,
      'P_STUDENT_ID': studentId,
    };
  }
}
