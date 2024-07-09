import 'package:mash/mash/domain/entities/tc/tc_status_entity.dart';

class TcStatusModel extends TcStatusEntity {
  const TcStatusModel(
      {required super.tcId,
      required super.userId,
      required super.studentName,
      required super.className,
      required super.admissionNo,
      required super.appliedDate,
      required super.reason,
      required super.approvalStatus,
      required super.dueAmount,
      required super.remarks,
      required super.expectedRelieveDate,
      required super.cancelStatus,
      required super.photoPath});
  factory TcStatusModel.fromJson(Map<String, dynamic> json) {
    return TcStatusModel(
      tcId: json['TC_ID'],
      userId: json['USER_ID'],
      studentName: json['STUDENT_NM'],
      className: json['CLASS_NM'],
      admissionNo: json['ADMIS_NO'],
      appliedDate: json['APPLIED_DATE'],
      reason: json['REASON'],
      approvalStatus: json['APPROVAL_STATUS'],
      dueAmount: json['DUE_AMOUNT'] ?? '',
      remarks: json['REMARKS'] ?? '',
      expectedRelieveDate: json['EXP_DT_RELIEVE'],
      cancelStatus: json['CANCEL_STS'],
      photoPath: json['PHOTO_PATH'] ?? '',
    );
  }
}
