

import 'package:equatable/equatable.dart';

class TeacherRatingQuestionsEntity extends Equatable{

  String qnsId;
  String questions;
  int rating;

TeacherRatingQuestionsEntity({required this.qnsId, required this.questions,this.rating = 0 });

  @override
  List<Object?> get props => [
    qnsId,
    questions
  ];
}