part of 'competetive_exam_bloc.dart';

@freezed
class CompetetiveExamEvent with _$CompetetiveExamEvent {
  const factory CompetetiveExamEvent.getTobeRegistered({required String flag}) =
      _GetTobeRegistered;
  const factory CompetetiveExamEvent.getTobeRegisteredDetails(String examId) =
      _GetTobeRegisteredDetails;
  const factory CompetetiveExamEvent.submitCompetetiveExamTobeRegistered({
    required String regStatus,
    required String selfRate,
    required String examId,
  }) = _SubmitCompetetiveTobeRegistered;
}
