part of 'leave_bloc.dart';

@freezed
class LeaveState with _$LeaveState {
  const factory LeaveState({
    ResponseClassify<List<LeaveDashboardEntity>>? getLeaveDashboardData,
    required ResponseClassify<LeaveStatusEntity> leaveStatusResponse,
    required ResponseClassify<LeaveDetailsEntity> leaveDetailsResponse,
    required LeaveAttachmentModel? leaveAttachmentModel,
  }) = _LeaveState;

  factory LeaveState.initial() => LeaveState(
        leaveStatusResponse: ResponseClassify.initial(),
        leaveDetailsResponse: ResponseClassify.initial(),
        leaveAttachmentModel: null,
      );
}
