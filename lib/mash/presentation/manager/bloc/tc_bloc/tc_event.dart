part of 'tc_bloc.dart';

@freezed
class TcEvent with _$TcEvent {
  const factory TcEvent.getTcReason() = _GetTcReason;
  const factory TcEvent.getTcStatus() = _GetTcStatus;
  const factory TcEvent.cancelTc(String tcId, BuildContext context) = _CancelTc;
  const factory TcEvent.applyTc({
    required String studentId,
    required String reaseonId,
    required String expectedDate,
  }) = _ApplyTc;
}
