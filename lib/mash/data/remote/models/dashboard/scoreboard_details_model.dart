import 'package:mash/mash/domain/entities/dashboard/score_board_details_entity.dart';

class ScoreBoardDetailsModel extends ScoreBoardDetailsEntity {
  const ScoreBoardDetailsModel(
      {required super.statusCode,
      required super.statusMessage,
      required super.resMessage,
      required super.resTable});
  factory ScoreBoardDetailsModel.fromJson(Map<String, dynamic> json) {
    var resTableList = json['resTable'] as List;
    List<ScoreBoardDetailsTable> tableItems = resTableList
        .map((itemJson) => ScoreBoardDetailsTableModel.fromJson(itemJson))
        .toList();

    return ScoreBoardDetailsModel(
      statusCode: json['statusCode'],
      statusMessage: json['statusMessage'],
      resMessage: json['resMessage'],
      resTable: tableItems,
    );
  }
}

class ScoreBoardDetailsTableModel extends ScoreBoardDetailsTable {
  const ScoreBoardDetailsTableModel(
      {required super.totalMarks,
      required super.obtainedMarks,
      required super.userId,
      required super.studentName,
      required super.className,
      required super.classDivision,
      required super.divisionName,
      required super.subjectCode,
      required super.subjectName,
      required super.examSubCategoryType});
  factory ScoreBoardDetailsTableModel.fromJson(Map<String, dynamic> json) {
    return ScoreBoardDetailsTableModel(
      totalMarks: json['TOTAL_MARKS'],
      obtainedMarks: json['OBTD_MARKS'],
      userId: json['USER_ID'],
      studentName: json['STUDENT_NM'],
      className: json['CLASS_NM'],
      classDivision: json['DIVISION'],
      divisionName: json['DIVISION_NAME'],
      subjectCode: json['SUBJECT'],
      subjectName: json['SUB_NAME'],
      examSubCategoryType: json['EXM_SUB_CAT_TYPE'],
    );
  }
}
