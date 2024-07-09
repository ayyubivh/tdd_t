import 'package:equatable/equatable.dart';

class ProgressCardEntity extends Equatable {
  final String? userId;
  final String? subName;
  final String? testPaper;
  final String? notebook;
  final String? subjectEnrAct;
  final String? termMark;
  final String? totalSum;
  final String? totalMarks;
  final String? obtainedMarks;
  final String? percentage;
  final String? grade;

  const ProgressCardEntity({
    this.grade,
    this.totalMarks,
    this.obtainedMarks,
    this.percentage,
    this.userId,
    this.subName,
    this.testPaper,
    this.notebook,
    this.subjectEnrAct,
    this.termMark,
    this.totalSum,
  });

  @override
  List<Object?> get props => [userId];
}
