import 'package:hive/hive.dart';

import '../../../domain/entities/auth/auth_response_entity.dart';

part 'login_local_model.g.dart';

@HiveType(typeId: 4)
class LoginLocalModel extends LoginResTableEntity {
  @override
  @HiveField(0)
  final String studentId;

  @override
  @HiveField(1)
  final String admissionNo;

  @override
  @HiveField(2)
  final String studentName;

  @override
  @HiveField(3)
  final String compId;

  @override
  @HiveField(4)
  final String roleId;

  @override
  @HiveField(5)
  final String activeStatus;

  @override
  @HiveField(6)
  final String? pwdChangeStatus;

  @override
  @HiveField(7)
  final String profilePhoto;

  @override
  @HiveField(8)
  final String eMail;

  @override
  @HiveField(9)
  final String mobile;

  @override
  @HiveField(10)
  final String parentId;

  @override
  @HiveField(11)
  final String academicId;

  @override
  @HiveField(12)
  final String? academicYear;

  @override
  @HiveField(13)
  final String usrId;

  @override
  @HiveField(14)
  final String divisionId;

  @override
  @HiveField(15)
  final String classId;

  @override
  @HiveField(16)
  final String medium;

  @override
  @HiveField(17)
  final String userType;

  const LoginLocalModel({
    required this.studentId,
    required this.admissionNo,
    required this.studentName,
    required this.compId,
    required this.roleId,
    required this.activeStatus,
    required this.pwdChangeStatus,
    required this.profilePhoto,
    required this.eMail,
    required this.mobile,
    required this.parentId,
    required this.academicId,
    required this.academicYear,
    required this.usrId,
    required this.divisionId,
    required this.classId,
    required this.medium,
    required this.userType,
  }) : super(
          studentId: studentId,
          admissionNo: admissionNo,
          studentName: studentName,
          compId: compId,
          roleId: roleId,
          activeStatus: activeStatus,
          pwdChangeStatus: pwdChangeStatus,
          profilePhoto: profilePhoto,
          eMail: eMail,
          mobile: mobile,
          parentId: parentId,
          academicId: academicId,
          academicYear: academicYear,
          usrId: usrId,
          divisionId: divisionId,
          classId: classId,
          medium: medium,
          userType: userType,
        );

  factory LoginLocalModel.fromEntity(LoginResTableEntity entity) {
    return LoginLocalModel(
      studentId: entity.studentId ?? '',
      admissionNo: entity.admissionNo ?? '',
      studentName: entity.studentName ?? '',
      compId: entity.compId,
      roleId: entity.roleId ?? '',
      activeStatus: entity.activeStatus ?? '',
      pwdChangeStatus: entity.pwdChangeStatus ?? '',
      profilePhoto: entity.profilePhoto ?? '',
      eMail: entity.eMail ?? '',
      mobile: entity.mobile ?? '',
      parentId: entity.parentId ?? '',
      academicId: entity.academicId ?? '',
      academicYear: entity.academicYear ?? "",
      usrId: entity.usrId ?? '',
      divisionId: entity.divisionId ?? '',
      classId: entity.classId ?? '',
      medium: entity.medium ?? '',
      userType: entity.userType,
    );
  }
}
