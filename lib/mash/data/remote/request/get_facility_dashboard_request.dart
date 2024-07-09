

class GetFacilityDashBoardRequest {
  final String companyId;
  final String pStudentId;
  final String pTabId;

  GetFacilityDashBoardRequest(
      {required this.companyId,
        required this.pStudentId,
        required this.pTabId});

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      "P_STUDENT_ID": pStudentId,
      "P_TAB_ID": pTabId
    };
  }
}
