class AcademicAndCompIdRequest {
  final String pAcademicId;
  final String pCompID;

  AcademicAndCompIdRequest({
    required this.pAcademicId,
    required this.pCompID,
  });
  Map<String, dynamic> toJson() {
    return {
      "P_ACADEMIC_ID": pAcademicId,
      "P_COMP_ID": pCompID,
    };
  }
}
