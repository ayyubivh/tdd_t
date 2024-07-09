class ApplyLeaveRequest {
  final String studentId;
  final String compId;
  final String leaveFromDate;
  final String leaveToDate;
  final String leaveReason;
  final String leaveDaysCount;
  final String approverId;
  final String documentName;
  final String docType;
  final String docId;
  final String studPic;

  ApplyLeaveRequest({
    required this.studentId,
    required this.compId,
    required this.leaveFromDate,
    required this.leaveToDate,
    required this.leaveReason,
    required this.leaveDaysCount,
    required this.approverId,
    required this.documentName,
    required this.docType,
    required this.docId,
    required this.studPic,
  });

  Map<String, dynamic> toJson() {
    return {
      'p_STUDENT_ID': studentId,
      'p_COMP_ID': compId,
      'p_LEAVE_FROM_DATE': leaveFromDate,
      'p_LEAVE_TO_DATE': leaveToDate,
      'p_LEAVE_REASON': leaveReason,
      'p_LEAVE_DAYS_COUNT': leaveDaysCount,
      'p_APPROVER_ID': approverId,
      'p_DOCUMENT_NAME': documentName,
      'P_Doc_type': docType,
      'p_doc_id': docId,
      'p_stud_pic': studPic,
    };
  }
}
