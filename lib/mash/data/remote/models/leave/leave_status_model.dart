import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

import '../../../../domain/entities/leave/leave_status_entity.dart';

class LeaveStatusModel extends LeaveStatusEntity {
  const LeaveStatusModel({
    required super.leaveDetails,
    required super.leaveStatusCounts,
  });

  factory LeaveStatusModel.fromJson(Map<String, dynamic> json) {
    var leaveDetailsList = json['resTable1'] as List;
    var leaveStatusCountsList = json['resTable2'] as List;

    List<LeaveStatusDetails> leaveDetailsItems = leaveDetailsList
        .map((item) => LeaveDetailsModel.fromJson(item))
        .toList();
    List<LeaveStatusCount> leaveStatusCountsItems = leaveStatusCountsList
        .map((item) => LeaveStatusCountModel.fromJson(item))
        .toList();

    return LeaveStatusModel(
      leaveDetails: leaveDetailsItems,
      leaveStatusCounts: leaveStatusCountsItems,
    );
  }
}

class LeaveDetailsModel extends LeaveStatusDetails {
  const LeaveDetailsModel(
      {required super.leaveFromDate,
      required super.leaveToDate,
      required super.leaveReason,
      required super.leaveDetailsId,
      required super.studentLeaveStatus,
      required super.studentLeaveStt});

  factory LeaveDetailsModel.fromJson(Map<String, dynamic> json) {
    return LeaveDetailsModel(
      leaveFromDate: json['LEAVE_FROM_DATE'],
      leaveToDate: json['LEAVE_TO_DATE'],
      leaveReason: json['LEAVE_REASON'],
      leaveDetailsId: json['LEAVE_DETAILS_ID'],
      studentLeaveStatus: json['STUDENT_LEAVE_STATUS'],
      studentLeaveStt: json['STUDENT_LEAVE_STT'],
    );
  }
}

class LeaveStatusCountModel extends LeaveStatusCount {
  const LeaveStatusCountModel(
      {required super.leaveStatus, required super.count});
  factory LeaveStatusCountModel.fromJson(Map<String, dynamic> json) {
    return LeaveStatusCountModel(
      leaveStatus: json['LEAVE_STATUS'],
      count: json['CNT'],
    );
  }
}
