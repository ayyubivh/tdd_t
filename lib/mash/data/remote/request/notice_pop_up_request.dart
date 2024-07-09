class NoticePopUpRequest {
  final String pCompId;
  final String noticeId;

  NoticePopUpRequest({
    required this.pCompId,
    required this.noticeId,
  });
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": pCompId,
      "P_NOTICE_ID": noticeId,
    };
  }
}
