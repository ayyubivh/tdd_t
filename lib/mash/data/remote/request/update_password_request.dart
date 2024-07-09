class UpdatePasswordRequest {
  final String companyId;
  final String password;
  final String userId;
  final String userType;

  UpdatePasswordRequest({
    required this.companyId,
    required this.password,
    required this.userId,
    required this.userType,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      'P_PASSWORD': password,
      'P_USER_ID': userId,
      'P_USER_TYPE': userType,
    };
  }
}
