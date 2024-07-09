part of 'academic_bloc.dart';

@freezed
class AcademicState with _$AcademicState {
  const factory AcademicState({
    required ResponseClassify classDetails,
    required ResponseClassify divisionDetails,
    required ResponseClassify<List<AcademicSubjectEntity?>> academicSubjects,
    required ResponseClassify<List<SyllabusTermEntity?>> syllabusTerms,
    required ResponseClassify<List<SyllabusEntity?>> syllabus,
    required int selectedTermIndex,
    required String selectedSubject,
    required String selectedSubjectId,
    required SelectedRangeModel? selectedRange,
  }) = _AcademicState;
  factory AcademicState.initial() => AcademicState(
        classDetails: ResponseClassify.initial(),
        divisionDetails: ResponseClassify.initial(),
        academicSubjects: ResponseClassify.initial(),
        syllabusTerms: ResponseClassify.initial(),
        syllabus: ResponseClassify.initial(),
        selectedTermIndex: 0,
        selectedSubject: '',
        selectedRange: null,
        selectedSubjectId: '',
      );
}
