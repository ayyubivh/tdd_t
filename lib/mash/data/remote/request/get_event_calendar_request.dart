
class GetEventCalendarRequest {
  final String pCompId;
  final String pUserId;
  final String pUserType;
  final String pAcademicId;


  GetEventCalendarRequest({
    required this.pCompId,
    required this.pUserId,
    required this.pUserType,
    required this.pAcademicId
  });

  Map<String, dynamic> toJson() {
    return {
      "P_USER_ID" : pUserId ,
      "P_COMP_ID": pCompId,
      "P_USER_TYPE" : pUserType ,
      "P_ACADEMIC_ID" : pAcademicId
    };
  }
}
