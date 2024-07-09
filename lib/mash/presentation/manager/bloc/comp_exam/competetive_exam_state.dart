part of 'competetive_exam_bloc.dart';

@freezed
class CompetetiveExamState with _$CompetetiveExamState {
  const factory CompetetiveExamState({
    required ResponseClassify<List<CompExamTobeRegistedEntity>>
        compExamTobeRegisteredResponse,
    required ResponseClassify<CompExamTobeRegistedEntityDetailsEntity>
        compExamTobeRegisteredDetailsResponse,
  }) = _CompetetiveExamState;
  factory CompetetiveExamState.initial() => CompetetiveExamState(
        compExamTobeRegisteredResponse: ResponseClassify.initial(),
        compExamTobeRegisteredDetailsResponse: ResponseClassify.initial(),
      );
}
