import 'package:equatable/equatable.dart';

class StudentDetailEntity extends Equatable {
  final String? userType;
  final String? academicId;
  final String? usrId;
  final String? studentId;
  final String? admissionNo;
  final String? studentName;
  final String? rollNo;
  final String? compId;
  final String? roleId;
  final String? activeStatus;
  final String? profilePhoto;
  final String? email;
  final String? mobile;
  final String? parentId;
  final String? classId;
  final String? className;
  final String? divisionId;
  final String? divisionName;
  final String? medium;
  final String? classTeacherId;
  final String? classTeacher;
  final String? dob;
  final String? motherName;
  final String? fatherName;
  final String? fatherMobile;
  final String? motherMobile;
  final String? fatherEmail;
  final String? motherEmail;
  final String? perAddress1;
  final String? localGuardianName;
  final String? callFromTime;
  final String? callToTime;
  final String? isCall;
  final String? totWorkingDays;
  final String? totalPresent;
  final String? totalAbsent;
  final String? halfDays;
  final String? attPercen;
  final String? totalEvents;
  final String? strength;
  final String? bloodGroup;
  final String? totalHolidays;
  const StudentDetailEntity({
    required this.bloodGroup,
    required this.strength,
    required this.totalHolidays,
    required this.totalEvents,
    required this.userType,
    required this.academicId,
    required this.usrId,
    required this.studentId,
    required this.admissionNo,
    required this.studentName,
    required this.rollNo,
    required this.compId,
    required this.roleId,
    required this.activeStatus,
    required this.profilePhoto,
    required this.email,
    required this.mobile,
    required this.parentId,
    required this.classId,
    required this.className,
    required this.divisionId,
    required this.divisionName,
    required this.medium,
    required this.classTeacherId,
    required this.classTeacher,
    required this.dob,
    required this.motherName,
    required this.fatherName,
    required this.fatherMobile,
    required this.motherMobile,
    required this.fatherEmail,
    required this.motherEmail,
    required this.perAddress1,
    required this.localGuardianName,
    required this.callFromTime,
    required this.callToTime,
    required this.isCall,
    required this.totWorkingDays,
    required this.totalPresent,
    required this.totalAbsent,
    required this.halfDays,
    required this.attPercen,
  });

  @override
  List<Object?> get props => [studentId];
}
