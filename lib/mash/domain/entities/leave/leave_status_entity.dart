import 'package:equatable/equatable.dart';

class LeaveStatusEntity extends Equatable {
  final List<LeaveStatusDetails> leaveDetails;
  final List<LeaveStatusCount> leaveStatusCounts;

  const LeaveStatusEntity({
    required this.leaveDetails,
    required this.leaveStatusCounts,
  });

  @override
  List<Object?> get props => [leaveDetails, leaveStatusCounts];
}

class LeaveStatusDetails extends Equatable {
  final String? leaveFromDate;
  final String? leaveToDate;
  final String? leaveReason;
  final String? leaveDetailsId;
  final String? studentLeaveStatus;
  final String? studentLeaveStt;

  const LeaveStatusDetails({
    required this.leaveFromDate,
    required this.leaveToDate,
    required this.leaveReason,
    required this.leaveDetailsId,
    required this.studentLeaveStatus,
    required this.studentLeaveStt,
  });

  @override
  List<Object?> get props => [leaveDetailsId];
}

class LeaveStatusCount extends Equatable {
  final String? leaveStatus;
  final String? count;

  const LeaveStatusCount({
    required this.leaveStatus,
    required this.count,
  });

  @override
  List<Object?> get props => [leaveStatus, count];
}
