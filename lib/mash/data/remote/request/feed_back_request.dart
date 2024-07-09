class FeedbackRequest {
  final String userId;
  final String mobOrWeb;
  final String rating;
  final String userType;
  final String modulId;
  final String compId;
  final String fbDescription;

  FeedbackRequest(
      {required this.userId,
      required this.mobOrWeb,
      required this.rating,
      required this.userType,
      required this.modulId,
      required this.compId,
      required this.fbDescription});

  Map<String, dynamic> toJson() {
    return {
      'P_USER_ID': userId,
      'P_MOB_OR_WEB': mobOrWeb,
      'P_FB_DESC': fbDescription,
      'P_RATING_CNT': rating,
      'P_USERTYPE': userType,
      'P_MODULE_ID': modulId,
      'P_COMP_ID': compId,
    };
  }
}
