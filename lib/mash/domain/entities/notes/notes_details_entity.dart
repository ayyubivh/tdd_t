import 'package:equatable/equatable.dart';

class NotesReportDetailsEntity extends Equatable {
  final List<NotesDetailsResTable1Entity?>? restable1;
  final List<NotesDetailsResTable2Entity?>? resTable2;

  const NotesReportDetailsEntity(
      {required this.restable1, required this.resTable2});

  @override
  List<Object?> get props => [restable1, resTable2];
}

class NotesDetailsResTable1Entity extends Equatable {
  final String? topicId;
  final String? asnDate;
  final String? wrkDesc;
  final String? submitDate;
  final String? wrkDoc;
  final String? imgPro;
  final String? subjectId;
  final String? subName;
  final String? fullName;
  final String? classId;
  final String? className;
  final String? subClassName;
  final String? divisionName;
  final String? divisionId;
  final String? mediumId;
  final String? docName;
  final String? ext;

  const NotesDetailsResTable1Entity({
    required this.topicId,
    required this.asnDate,
    required this.wrkDesc,
    required this.submitDate,
    required this.wrkDoc,
    required this.imgPro,
    required this.subjectId,
    required this.subName,
    required this.fullName,
    required this.classId,
    required this.className,
    required this.subClassName,
    required this.divisionName,
    required this.divisionId,
    required this.mediumId,
    required this.docName,
    required this.ext,
  });

  @override
  List<Object?> get props => [topicId];
}

class NotesDetailsResTable2Entity extends Equatable {
  final String? wrkDoc;
  final String? docId;
  final String? document;
  final String? ext;

  const NotesDetailsResTable2Entity({
    required this.wrkDoc,
    required this.docId,
    required this.document,
    required this.ext,
  });

  @override
  List<Object?> get props => [docId];
}
