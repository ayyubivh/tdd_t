class LeaveDetailsRequest {
  final String companyId;
  final String studentId;
  final String studentLeaveStatus;
  final String studentLeaveDetailsId;

  LeaveDetailsRequest({
    required this.companyId,
    required this.studentId,
    required this.studentLeaveStatus,
    required this.studentLeaveDetailsId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_comp_id': companyId,
      'P_stud_id': studentId,
      'P_stud_leave_status': studentLeaveStatus,
      'P_stud_leave_details_id': studentLeaveDetailsId,
    };
  }
}
