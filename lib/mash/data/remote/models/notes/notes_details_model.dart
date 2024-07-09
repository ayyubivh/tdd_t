import '../../../../domain/entities/notes/notes_details_entity.dart';

class NotesReportDetailsModel extends NotesReportDetailsEntity {
  const NotesReportDetailsModel(
      {required super.restable1, required super.resTable2});

  factory NotesReportDetailsModel.fromJson(Map<String, dynamic> json) {
    return NotesReportDetailsModel(
      restable1: List<NotesDetailsRestable1Model>.from(
          json['resTable1'].map((x) => NotesDetailsRestable1Model.fromJson(x))),
      resTable2: List<NotesDetailsResTable2Model>.from(
          json['resTable2'].map((x) => NotesDetailsResTable2Model.fromJson(x))),
    );
  }
}

class NotesDetailsRestable1Model extends NotesDetailsResTable1Entity {
  const NotesDetailsRestable1Model(
      {required super.topicId,
      required super.asnDate,
      required super.wrkDesc,
      required super.submitDate,
      required super.wrkDoc,
      required super.imgPro,
      required super.subjectId,
      required super.subName,
      required super.fullName,
      required super.classId,
      required super.className,
      required super.subClassName,
      required super.divisionName,
      required super.divisionId,
      required super.mediumId,
      required super.docName,
      required super.ext});
  factory NotesDetailsRestable1Model.fromJson(Map<String, dynamic> json) {
    return NotesDetailsRestable1Model(
      topicId: json['TOPIC_ID'],
      asnDate: json['ASN_DATE'],
      wrkDesc: json['WRK_DESC'],
      submitDate: json['SUBMIT_DATE'],
      wrkDoc: json['WRK_DOC'],
      imgPro: json['IMG_PRO'],
      subjectId: json['SUBJECT_ID'],
      subName: json['SUB_NAME'],
      fullName: json['FULL_NAME'],
      classId: json['CLASS_ID'],
      className: json['CLASS_NAME'],
      subClassName: json['SUB_CLASS_NAME'],
      divisionName: json['DIVISION_NAME'],
      divisionId: json['DIVISION_ID'],
      mediumId: json['MEDIUM_ID'],
      docName: json['DOC_NAME'],
      ext: json['EXT'],
    );
  }
}

class NotesDetailsResTable2Model extends NotesDetailsResTable2Entity {
  const NotesDetailsResTable2Model(
      {required super.wrkDoc,
      required super.docId,
      required super.document,
      required super.ext});
  factory NotesDetailsResTable2Model.fromJson(Map<String, dynamic> json) {
    return NotesDetailsResTable2Model(
      wrkDoc: json['WRK_DOC'],
      docId: json['DOC_ID'],
      document: json['DOCUMENT'],
      ext: json['EXT'],
    );
  }
}
