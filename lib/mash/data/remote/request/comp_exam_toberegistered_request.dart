class CompExamToberegisteredRequest {
  String flag;
  String companyId;
  String academicYear;
  String userId;

  CompExamToberegisteredRequest({
    required this.flag,
    required this.companyId,
    required this.academicYear,
    required this.userId,
  });
  Map<String, dynamic> toJson() {
    return {
      'p_flag': flag,
      'p_companyId': companyId,
      'p_academicYear': academicYear,
      'p_user_id': userId,
    };
  }
}
