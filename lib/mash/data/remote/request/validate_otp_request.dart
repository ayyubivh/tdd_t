class ValidatOtpRequest {
  final String companyId;
  final String userId;
  final String otp;
  final String userType;

  ValidatOtpRequest({
    required this.companyId,
    required this.userId,
    required this.otp,
    required this.userType,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
      'P_USER_ID': userId,
      'P_OTP': otp,
      'P_USER_TYPE': userType,
    };
  }
}
