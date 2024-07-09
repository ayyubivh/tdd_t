part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.started() = _Started;
  const factory TeacherEvent.getRatings() = _GetRatings;
  const factory TeacherEvent.getRatingQuestions() = _GetRatingQuestions;
  const factory TeacherEvent.clearTeacherRatingList() = _ClearTeacherRatings;

  const factory TeacherEvent.postTeacherRating({required String teacherId, required String subId, String? remarks,required List<RatedQuestion> ratedQuestions}) = _PostTeacherRating;
}
