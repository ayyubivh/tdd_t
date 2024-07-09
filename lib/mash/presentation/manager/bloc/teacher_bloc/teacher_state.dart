part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState({
    ResponseClassify<List<TeacherRatingEntity>>? getTeacherRating,ResponseClassify<List<TeacherRatingQuestionsEntity>>? getTeacherRatingQuestions, ResponseClassify<void>? postTeacherRating,@Default([]) List<RatedQuestion> selectedTeacherRating
}) = _TeacherState;

  factory TeacherState.initial() => const TeacherState();
}