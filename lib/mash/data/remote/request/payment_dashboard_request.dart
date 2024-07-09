class PaymentDashboardRequest {
  final String companyId;
  final String studentId;
  final int? trackId;
  final String academicId;
  final String completionStatus;
  final String actionId;

  PaymentDashboardRequest({
    required this.companyId,
    required this.studentId,
    required this.academicId,
    required this.completionStatus,
    required this.trackId,
    required this.actionId,
  });
  Map<String, dynamic> toJson() {
    return {
      'P_ACTION_ID': actionId,
      'P_TRACK_ID': trackId,
      'P_COMP_ID': companyId,
      'P_STUDENT_ID': studentId,
      'P_ACADEMIC_ID': academicId,
      'P_COMPLETION_STS': completionStatus,
    };
  }
}
