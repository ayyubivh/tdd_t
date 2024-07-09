part of 'academic_bloc.dart';

@freezed
class AcademicEvent with _$AcademicEvent {
  const factory AcademicEvent.getClassDetails() = _GetClassDetails;
  const factory AcademicEvent.getAcademicSubjects() = _GetAcademicSubjects;

  const factory AcademicEvent.getDivisionDetails() = _GetDevisionDetails;
  const factory AcademicEvent.getSyllabus(String termId) = _GetSyllabus;
  const factory AcademicEvent.getSyllabusTerms() = _GetSyllabusTerms;
  const factory AcademicEvent.changeSyllabusTermIndex(int index) =
      _ChangeSyllabusTermIndex;
  const factory AcademicEvent.selectSubjectEvent(
    String subject,
    String subjectId,
  ) = _SelectSubjectEvent;
  const factory AcademicEvent.selectDateRangeEvent(
      {required DateTime date, required String dateType}) = _SelectDateRange;
  const factory AcademicEvent.disposeEvent() = _DisposeEvent;
}
