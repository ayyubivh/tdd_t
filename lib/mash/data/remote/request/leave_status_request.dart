class LeaveStatusRequest {
  String compId;
  String studentId;
  int studentLeaveStatus;

  LeaveStatusRequest({
    required this.compId,
    required this.studentId,
    required this.studentLeaveStatus,
  });

  // Method to convert the model to JSON
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_STUDENT_ID': studentId,
      'P_STUDENT_LEAVE_STATUS': studentLeaveStatus,
    };
  }
}
