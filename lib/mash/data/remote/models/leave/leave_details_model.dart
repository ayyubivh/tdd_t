import 'package:mash/mash/domain/entities/leave/leave_details_entity.dart';

class LeaveStatusDetailsModel extends LeaveDetailsEntity {
  const LeaveStatusDetailsModel(
      {required super.leaveDetailsId,
      required super.leaveFromDate,
      required super.leaveToDate,
      required super.leaveDaysCount,
      required super.createdOn,
      required super.leaveReason,
      required super.studentLeaveStatus,
      required super.studentId,
      required super.studCancelDate,
      required super.studCancelReason,
      required super.studRequestDate,
      required super.parentRemarks,
      required super.parentStatus,
      required super.parentRejectedDate,
      required super.parentRecommendedDate,
      required super.approverRemarks,
      required super.approverSanctionedDate,
      required super.approverRejectedDate,
      required super.studentName,
      required super.status,
      required super.classId,
      required super.divisionId,
      required super.fatherName,
      required super.className,
      required super.divisionName,
      required super.subClassName,
      required super.documentName,
      required super.extension});
  factory LeaveStatusDetailsModel.fromJson(Map<String, dynamic> json) {
    return LeaveStatusDetailsModel(
      leaveDetailsId: json['LEAVE_DETAILS_ID'],
      leaveFromDate: json['LEAVE_FROM_DATE'],
      leaveToDate: json['LEAVE_TO_DATE'],
      leaveDaysCount: json['LEAVE_DAYS_COUNT'],
      createdOn: json['CREATED_ON'],
      leaveReason: json['LEAVE_REASON'],
      studentLeaveStatus: json['STUDENT_LEAVE_STATUS'],
      studentId: json['STUDENT_ID'],
      studCancelDate: json['STUD_CANCEL_DATE'],
      studCancelReason: json['STUD_CANCEL_REASON'],
      studRequestDate: json['STUD_REQUEST_DATE'],
      parentRemarks: json['PARENT_REMARKS'],
      parentStatus: json['PARENT_STATUS'],
      parentRejectedDate: json['PARENT_REJECTED_DATE'],
      parentRecommendedDate: json['PARENT_RECOMENTED_DATE'],
      approverRemarks: json['APPROVER_REMARKS'],
      approverSanctionedDate: json['APPROVER_SANCTIONED_DATE'],
      approverRejectedDate: json['APPROVER_REJECTED_DATE'],
      studentName: json['STUDENT_NM'],
      status: json['STATUS'],
      classId: json['CLASS_ID'],
      divisionId: json['DIVISION_ID'],
      fatherName: json['FATHER_NM'],
      className: json['CLASS_NAME'],
      divisionName: json['DIVISION_NAME'],
      subClassName: json['SUB_CLASS_NAME'],
      documentName: json['DOCUMENT_NAME'],
      extension: json['EXTENTION'],
    );
  }
}
