class LoginRequest {
  final String userId;
  final String password;
  final String deviceId;
  final String appType;

  LoginRequest({
    required this.userId,
    required this.password,
    required this.deviceId,
    required this.appType,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'password': password,
      'deviceId': deviceId,
      'appType': appType,
    };
  }
}
