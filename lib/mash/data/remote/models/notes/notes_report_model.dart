import 'package:mash/mash/domain/entities/notes/notes_report_entity.dart';

class NotesReportModel extends NotesReportEntity {
  const NotesReportModel({
    required super.topicId,
    required super.subjectTopic,
    required super.notesOnTopic,
    required super.teacherNotesDoc,
    required super.dateOnNoteAssigned,
    required super.viewStatus,
  });
  factory NotesReportModel.fromJson(Map<String, dynamic> json) {
    return NotesReportModel(
      topicId: json['TOPIC_ID'],
      subjectTopic: json['SUBJECT_TOPIC'],
      notesOnTopic: json['NOTES_ON_TOPIC'],
      teacherNotesDoc: json['TECAHER_NOTES_DOC'],
      dateOnNoteAssigned: json['DATE_ON_NOTE_ASSIGNED'],
      viewStatus: json['VIEW_STATUS'],
    );
  }
}
