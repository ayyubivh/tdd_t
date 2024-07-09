

class GetNotificationListRequest {
  final String compId;
  final String userId;
  final String userType;


  GetNotificationListRequest(
      {required this.compId,
        required this.userId,
        required this.userType,
       });
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_User_type': userType,
      'P_User_Id': userId,
    };
  }
}
