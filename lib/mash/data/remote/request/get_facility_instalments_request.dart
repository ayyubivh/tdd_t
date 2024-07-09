

class GetFacilityInstalmentsRequest {
  final String companyId;
  final String pStudentId;
  final String pSubHeadId;

  GetFacilityInstalmentsRequest(
      {required this.companyId,
        required this.pStudentId,
        required this.pSubHeadId});

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      "P_STUDENT_ID": pStudentId,
      "P_SUBHEADID": pSubHeadId
    };
  }
}


