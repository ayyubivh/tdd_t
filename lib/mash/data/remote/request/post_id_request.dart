class PostIdRequest {

  String compId;
  String remarks;
  String pReqId;
  String pCreatedBy;
  String pUserId;


  PostIdRequest({
    required this.pUserId,
    required this.pReqId,
    required this.pCreatedBy,
    required this.compId,
    required this.remarks,

  });


  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":compId,
      "P_REMARK":remarks,
      "P_REQ_ID":pReqId,
      "P_CREATED_BY":pCreatedBy,
      "P_USER_ID":pUserId
    };
  }
}

