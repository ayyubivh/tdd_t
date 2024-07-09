class CompExamToberegisteredDetailsRequest {
  String compId;
  String examId;
  String userId;

  CompExamToberegisteredDetailsRequest({
    required this.compId,
    required this.examId,
    required this.userId,
  });

  // Factory method to create a CompExamToberegisteredDetailsRequest object from a JSON map
  Map<String, dynamic> toJson() {
    return {
      'p_exam_id': examId,
      'P_comp_id': compId,
      'p_user_id': userId,
    };
  }
}
