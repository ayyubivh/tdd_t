import '../../../../domain/entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';

class CompExamTobeRegistedEntityDetailsModel
    extends CompExamTobeRegistedEntityDetailsEntity {
  const CompExamTobeRegistedEntityDetailsModel(
      {required super.examId,
      required super.examName,
      required super.descriptions,
      required super.regEndDate,
      required super.examDate,
      required super.examRegLink,
      required super.resultDate,
      required super.documentName,
      required super.imgPro,
      required super.ext,
      required super.referenceLink,
      required super.referenceType,
      required super.selfAsmnt1});
  factory CompExamTobeRegistedEntityDetailsModel.fromJson(
      Map<String, dynamic> json) {
    return CompExamTobeRegistedEntityDetailsModel(
        examId: json['EXAM_ID'],
        examName: json['EXAM_NAME'],
        descriptions: json['DESCRIPTIONS'],
        regEndDate: json['REG_END_DATE'],
        examDate: json['EXAM_DATE'],
        examRegLink: json['EXAM_REG_LINK'],
        resultDate: json['RESULT_DATE'],
        documentName: json['DOCUMENT_NAME'],
        imgPro: json['IMG_PRO'],
        ext: json['EXT'],
        referenceLink: json['REFERENCE_LINK'],
        referenceType: json['REFERENCE_TYPE'],
        selfAsmnt1: int.tryParse(
          json['SELF_ASMNT1'],
        ));
  }
}
