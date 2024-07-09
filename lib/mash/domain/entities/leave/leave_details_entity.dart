import 'package:equatable/equatable.dart';

class LeaveDetailsEntity extends Equatable {
  final String? leaveDetailsId;
  final String? leaveFromDate;
  final String? leaveToDate;
  final String? leaveDaysCount;
  final String? createdOn;
  final String? leaveReason;
  final String? studentLeaveStatus;
  final String? studentId;
  final String? studCancelDate;
  final String? studCancelReason;
  final String? studRequestDate;
  final String? parentRemarks;
  final String? parentStatus;
  final String? parentRejectedDate;
  final String? parentRecommendedDate;
  final String? approverRemarks;
  final String? approverSanctionedDate;
  final String? approverRejectedDate;
  final String? studentName;
  final String? status;
  final String? classId;
  final String? divisionId;
  final String? fatherName;
  final String? className;
  final String? divisionName;
  final String? subClassName;
  final String? documentName;
  final String? extension;

  const LeaveDetailsEntity({
    required this.leaveDetailsId,
    required this.leaveFromDate,
    required this.leaveToDate,
    required this.leaveDaysCount,
    required this.createdOn,
    required this.leaveReason,
    required this.studentLeaveStatus,
    required this.studentId,
    required this.studCancelDate,
    required this.studCancelReason,
    required this.studRequestDate,
    required this.parentRemarks,
    required this.parentStatus,
    required this.parentRejectedDate,
    required this.parentRecommendedDate,
    required this.approverRemarks,
    required this.approverSanctionedDate,
    required this.approverRejectedDate,
    required this.studentName,
    required this.status,
    required this.classId,
    required this.divisionId,
    required this.fatherName,
    required this.className,
    required this.divisionName,
    required this.subClassName,
    required this.documentName,
    required this.extension,
  });

  @override
  List<Object?> get props => [];
}
