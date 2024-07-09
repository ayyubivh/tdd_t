part of 'tc_bloc.dart';

@freezed
class TcState with _$TcState {
  const factory TcState({
    required ResponseClassify<List<TcReasonEntity>> tcReasonResponse,
    required ResponseClassify<List<TcStatusEntity>> tcStatusResponse,
  }) = _TcState;
  factory TcState.initial() => TcState(
        tcReasonResponse: ResponseClassify.initial(),
        tcStatusResponse: ResponseClassify.initial(),
      );
}
