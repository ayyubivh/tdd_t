import 'package:mash/mash/domain/entities/auth/verify_user_entity.dart';

class VerifyUserModel extends VerifyUserEntity {
  VerifyUserModel(
      {required super.statusCode,
      required super.statusMessage,
      required super.resTable});
  factory VerifyUserModel.fromJson(Map<String, dynamic> json) {
    return VerifyUserModel(
      statusCode: json['statusCode'] as int,
      statusMessage: json['statusMessage'] as String,
      resTable: (json['resTable'] as List<dynamic>)
          .map((e) => UserVerifyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class UserVerifyModel extends UserVerifyEntity {
  UserVerifyModel(
      {required super.userId,
      required super.compId,
      required super.userType,
      required super.password,
      required super.academicYear,
      required super.userMob});

  // A factory constructor to create a UserVerifyEntity from JSON
  factory UserVerifyModel.fromJson(Map<String, dynamic> json) {
    return UserVerifyModel(
      userId: json['user_id'] as String,
      compId: json['comp_id'] as String,
      userType: json['user_type'] as String,
      password: json['password'] as String,
      academicYear: json['academic_year'] as String,
      userMob: json['user_mob'] as String,
    );
  }
}
