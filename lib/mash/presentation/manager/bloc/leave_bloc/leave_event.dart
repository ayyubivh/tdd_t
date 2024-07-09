part of 'leave_bloc.dart';

@freezed
class LeaveEvent with _$LeaveEvent {
  const factory LeaveEvent.started() = _Started;
  const factory LeaveEvent.getLeaveDashboardData() = _GetLeaveDashboardData;
  const factory LeaveEvent.getLeaveStatus({
    required String studentId,
    required int studentLeaveStatus,
  }) = _GetLeaveStatus;
  const factory LeaveEvent.getLeaveStatusDetails({
    required String leaveStatus,
    required String leaveStatusId,
    required String studentId,
  }) = _GetLeaveStatusDetails;
  const factory LeaveEvent.cancelLeave({
    required String reason,
    required String leaveDetailsId,
    required String studentId,
    required int leaveStatus,
  }) = _CancelLeave;
  const factory LeaveEvent.applyLeave() = _ApplyLeave;
  const factory LeaveEvent.saveLeaveAttachments(
      LeaveAttachmentModel leaveAttachments) = _SaveLeaveAttachments;
}
