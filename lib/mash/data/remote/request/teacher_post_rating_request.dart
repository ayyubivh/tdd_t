
class TeacherPostRatingRequest {
  String userType;
  String subjectId;
  String academicId;
  String classId;
  String divisionId;
  List<RatedQuestion> ratedQuestions;
  String compId;
  String remarks;
  String teacherId;

  TeacherPostRatingRequest({
    required this.userType,
    required this.subjectId,
    required this.academicId,
    required this.classId,
    required this.divisionId,
    required this.ratedQuestions,
    required this.compId,
    required this.remarks,
    required this.teacherId,
  });


  Map<String, dynamic> toJson() {
    return {
      'P_USER_TYPE': userType,
      'P_SUBJECT_ID': subjectId,
      'P_ACADEMIC_ID': academicId,
      'P_CLASS_ID': classId,
      'P_DIVISION_ID': divisionId,
      'RATED_QUESTIONS': ratedQuestions.map((i) => i.toJson()).toList(),
      'P_COMP_ID': compId,
      'P_REMARKS': remarks,
      'P_TEACHER_ID': teacherId,
    };
  }
}

class RatedQuestion {
  String question;
  int rating;

  RatedQuestion({
    required this.question,
    required this.rating,
  });



  Map<String, dynamic> toJson() {
    return {
      'QUS': question,
      'RATING': rating,
    };
  }
}
