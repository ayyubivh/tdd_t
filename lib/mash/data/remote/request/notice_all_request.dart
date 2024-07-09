class NoticeAllRequest {
  final String? pCompId;
  final String? usertype;
  final String? noticeId;
  final String? offset;
  final String? pLimit;

  NoticeAllRequest({
    required this.pCompId,
    required this.usertype,
    required this.noticeId,
    required this.offset,
    required this.pLimit
  });
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": pCompId,
      "P_USERTYPE": usertype,
      "P_NOTICE_ID": noticeId,
      "P_OFFSET":offset,
      "P_LIMIT":pLimit
    };
  }
}
