import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  const AuthResponseEntity({
    required this.statusMessage,
    required this.resTable,
    required this.statusCode,
    required this.token,
  });

  final int statusCode;
  final String statusMessage;
  final List<LoginResTableEntity> resTable;
  final String token;

  @override
  List<Object?> get props => [];
}

class LoginResTableEntity extends Equatable {
  const LoginResTableEntity({
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
  });

  final String? studentId;
  final String? admissionNo;
  final String? studentName;
  final String compId;
  final String? roleId;
  final String? activeStatus;
  final String? pwdChangeStatus;
  final String? profilePhoto;
  final String? eMail;
  final String? mobile;
  final String? parentId;
  final String? academicId;
  final String? academicYear;
  final String? usrId;
  final String? divisionId;
  final String? classId;
  final String? medium;
  final String userType;

  @override
  List<Object?> get props => [usrId];
}
