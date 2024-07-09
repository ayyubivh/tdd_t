import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

class AuthResponseModel extends AuthResponseEntity {
  const AuthResponseModel({
    required super.statusCode,
    required super.statusMessage,
    required super.resTable,
    required super.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        statusCode: json["statusCode"],
        statusMessage: json["statusMessage"],
        resTable: List<LoginResTableModel>.from(
            json["resTable"].map((x) => LoginResTableModel.fromJson(x))),
        token: json["AccessToken"],
      );
}

class LoginResTableModel extends LoginResTableEntity {
  const LoginResTableModel({
    required super.studentId,
    required super.admissionNo,
    required super.studentName,
    required super.compId,
    required super.roleId,
    required super.activeStatus,
    required super.pwdChangeStatus,
    required super.profilePhoto,
    required super.eMail,
    required super.mobile,
    required super.parentId,
    required super.academicId,
    required super.academicYear,
    required super.usrId,
    required super.divisionId,
    required super.classId,
    required super.medium,
    required super.userType,
  });

  factory LoginResTableModel.fromEntity(LoginResTableEntity entity) {
    return LoginResTableModel(
      studentId: entity.studentId,
      admissionNo: entity.admissionNo,
      studentName: entity.studentName,
      compId: entity.compId,
      roleId: entity.roleId,
      activeStatus: entity.activeStatus,
      pwdChangeStatus: entity.pwdChangeStatus,
      profilePhoto: entity.profilePhoto,
      eMail: entity.eMail,
      mobile: entity.mobile,
      parentId: entity.parentId,
      academicId: entity.academicId,
      academicYear: entity.academicYear,
      usrId: entity.usrId,
      divisionId: entity.divisionId,
      classId: entity.classId,
      medium: entity.medium,
      userType: entity.userType,
    );
  }
  factory LoginResTableModel.fromJson(Map<String, dynamic> json) =>
      LoginResTableModel(
        studentId: json["STUDENT_ID"],
        admissionNo: json["ADMISSION_NO"],
        studentName: json["STUDENT_NAME"],
        compId: json["COMP_ID"],
        roleId: json["ROLE_ID"],
        activeStatus: json["ACTIVE_STATUS"],
        pwdChangeStatus: json["PWD_CHANGE_STATUS"],
        profilePhoto: json["PROFILE_PHOTO"],
        eMail: json["E_MAIL"],
        mobile: json["MOBILE"],
        parentId: json["PARENT_ID"],
        academicId: json["ACADEMIC_ID"],
        academicYear: json["ACADEMIC_YEAR"],
        usrId: json["USR_ID"],
        divisionId: json["DIVISION_ID"],
        classId: json["CLASS_ID"],
        medium: json["MEDIUM"],
        userType: json["USER_TYPE"],
      );
  Map<String, dynamic> toJson() {
    return {
      "STUDENT_ID": studentId,
      "ADMISSION_NO": admissionNo,
      "STUDENT_NAME": studentName,
      "COMP_ID": compId,
      "ROLE_ID": roleId,
      "ACTIVE_STATUS": activeStatus,
      "PWD_CHANGE_STATUS": pwdChangeStatus,
      "PROFILE_PHOTO": profilePhoto,
      "E_MAIL": eMail,
      "MOBILE": mobile,
      "PARENT_ID": parentId,
      "ACADEMIC_ID": academicId,
      "ACADEMIC_YEAR": academicYear,
      "USR_ID": usrId,
      "DIVISION_ID": divisionId,
      "CLASS_ID": classId,
      "MEDIUM": medium,
      "USER_TYPE": userType,
    };
  }
}
