class SubmitCompExamTobeRegiteredRequest {
  String examId;
  String compId;
  String userId;
  String regStatus;
  String selfRate1;

  SubmitCompExamTobeRegiteredRequest({
    required this.examId,
    required this.compId,
    required this.userId,
    required this.regStatus,
    required this.selfRate1,
  });

  // Method to convert an ExamRequest object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'P_exam_id': examId,
      'P_comp_id': compId,
      'P_user_id': userId,
      'p_reg_status': regStatus,
      'p_self_rate_1': selfRate1,
    };
  }
}
