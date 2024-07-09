class NewsBoardRequest {
  final String pCompId;
  final String pUserType;
  final String pSearchKey;
  final String pOffset;
  final String pLimit;

  NewsBoardRequest({
    required this.pCompId,
    required this.pUserType,
    required this.pSearchKey,
    required this.pOffset,
    required this.pLimit,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_USER_TYPE': pUserType,
      'P_SEARCH_KEY': pSearchKey,
      'P_OFFEST': pOffset,
      'P_LIMI': pLimit,
    };
  }
}
