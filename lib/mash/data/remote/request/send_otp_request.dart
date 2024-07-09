class SendOtpRequest {
  final String? companyId;
  final String? userId;
  final String? mobileNumber;
  final String? userType;

  SendOtpRequest({
    required this.companyId,
    required this.userId,
    required this.mobileNumber,
    required this.userType,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      'P_USER_ID': userId,
      'P_MOB_NO': mobileNumber,
      'P_USER_TYPE': userType,
    };
  }
}
