import 'package:mash/mash/domain/entities/comp_exam/comp_exam_tobe_registered_entity.dart';

class CompExamTobeRegistedModel extends CompExamTobeRegistedEntity {
  const CompExamTobeRegistedModel({
    required super.examId,
    required super.examName,
    required super.regStartDate,
    required super.regEndDate,
    required super.examEndDate,
    required super.examDate,
  });
  factory CompExamTobeRegistedModel.fromJson(Map<String, dynamic> json) {
    return CompExamTobeRegistedModel(
      examId: json['EXAM_ID'],
      examName: json['EXAM_NAME'],
      regStartDate: json['REG_START_DATE'],
      regEndDate: json['REG_END_DATE'],
      examEndDate: json['EXAM_END_DATE'],
      examDate: json['EXAM_DATE'],
    );
  }
}
