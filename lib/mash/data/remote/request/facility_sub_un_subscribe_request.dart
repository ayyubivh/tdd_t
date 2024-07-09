

class FacilitySubUnSubscribeRequest {
  final String? companyId;
  final String? pStudentId;
  final String? pFeeHeadId;
  final String? pSubHeadId;
  final String? pickUpId;
  final String? dropId;
  final String? pFlag;
  final String? pUnSubDate;

  FacilitySubUnSubscribeRequest({required this.companyId, required this.pStudentId, required this.pFeeHeadId, required this.pSubHeadId, required this.pickUpId, required this.dropId, required this.pFlag, required this.pUnSubDate});



  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":companyId,
      "P_STUDENT_ID":pStudentId,
      "P_FEEHEAD_ID":pFeeHeadId,
      "P_SUBHEAD_ID":pSubHeadId,
      "P_PICKUP_ID":pickUpId,
      "P_DROP_ID":dropId,
      "P_FLAG":1,
      "P_UNSUB_DATE":""
    };
  }
}

