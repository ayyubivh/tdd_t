class TcApplyRequest {
  String? action;
  String? studId;
  String? reasonId;
  String? expDate;
  String? academicId;
  String? userType;
  String? compId;
  String? userId;

  TcApplyRequest({
    required this.action,
    required this.studId,
    required this.reasonId,
    required this.expDate,
    required this.academicId,
    required this.userType,
    required this.compId,
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_ACTION': action,
      'P_STUD_ID': studId,
      'P_REASONID': reasonId,
      'P_EXP_DATE': expDate,
      'P_ACADEMIC_ID': academicId,
      'P_USER_TYPE': userType,
      'P_COMP_ID': compId,
      'P_USERID': userId,
    };
  }
}
