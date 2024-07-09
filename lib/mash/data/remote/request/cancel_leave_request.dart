class LeaveCancelRequest {
  final String companyId;
  final String studentId;
  final String studentLeaveDetailsId;
  final String cancelReason;

  LeaveCancelRequest({
    required this.companyId,
    required this.studentId,
    required this.studentLeaveDetailsId,
    required this.cancelReason,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_comp_id': companyId,
      'P_stud_id': studentId,
      'P_stud_leave_details_id': studentLeaveDetailsId,
      'P_cancel_reason': cancelReason,
    };
  }
}
