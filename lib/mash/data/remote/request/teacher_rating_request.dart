class TeacherRatingRequest {
  final String companyId;
  final String  userType;

  TeacherRatingRequest({
    required this.companyId,
    required this.userType,
  });


  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      'P_USER_TYPE': userType,
    };
  }
}
