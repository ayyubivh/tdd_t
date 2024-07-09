class TeacherRatingQuestionsRequest{
  final String  userType;

  TeacherRatingQuestionsRequest({required this.userType});

  Map<String, dynamic> toJson() {
    return {
      'P_USER_TYPE': userType,
    };
  }
}