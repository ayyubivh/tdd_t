

class DailyTimeTableRequest{
  final String compId;
  final String userType;
  final String pDate;
  final String pStudentId;

  DailyTimeTableRequest({required this.compId, required this.userType, required this.pDate, required this.pStudentId});

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":compId,
      "P_USER_TYPE":userType,
      "P_DATE":pDate,
      "P_STUDENT_ID":pStudentId
    };
  }
}