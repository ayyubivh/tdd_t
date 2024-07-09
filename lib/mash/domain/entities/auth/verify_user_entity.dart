class VerifyUserEntity {
  final int statusCode;
  final String statusMessage;
  final List<UserVerifyEntity> resTable;

  VerifyUserEntity({
    required this.statusCode,
    required this.statusMessage,
    required this.resTable,
  });
}

class UserVerifyEntity {
  final String? userId;
  final String? compId;
  final String? userType;
  final String? password;
  final String? academicYear;
  final String? userMob;

  UserVerifyEntity({
    required this.userId,
    required this.compId,
    required this.userType,
    required this.password,
    required this.academicYear,
    required this.userMob,
  });
}
