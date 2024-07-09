
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';

class TeacherRatingQuestionsModel extends TeacherRatingQuestionsEntity{
  TeacherRatingQuestionsModel({required super.qnsId, required super.questions});

  factory TeacherRatingQuestionsModel.fromJson(Map<String, dynamic> json) {
    return TeacherRatingQuestionsModel(
      qnsId: json['QNS_ID'] as String,
      questions: json['QUESTIONS'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'QNS_ID': qnsId,
      'QUESTIONS': questions,
    };
  }

}