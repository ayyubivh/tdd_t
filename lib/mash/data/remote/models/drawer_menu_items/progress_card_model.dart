import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';

class ProgressCardModel extends ProgressCardEntity {
  const ProgressCardModel({
    super.userId,
    super.subName,
    super.testPaper,
    super.notebook,
    super.subjectEnrAct,
    super.termMark,
    super.totalSum,
    super.totalMarks,
    super.obtainedMarks,
    super.percentage,
    super.grade,
  });
  factory ProgressCardModel.fromJson(Map<String, dynamic> json) {
    return ProgressCardModel(
        userId: json['USER_ID'],
        subName: json['SUB_NAME'],
        testPaper: json['TEST_PAPER'],
        notebook: json['NOTEBOOK'],
        subjectEnrAct: json['SUBJECT_ENR_ACT'],
        termMark: json['TERM_MARK'],
        totalSum: json['TOTALSUM'],
        totalMarks: json['TOTAL_MARKS'],
        obtainedMarks: json['OBTAINED_MARK'],
        percentage: json['PERCENTAGE'],
        grade: json['Grade']);
  }
}
