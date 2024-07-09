import 'package:equatable/equatable.dart';

class NotesReportEntity extends Equatable {
  final String topicId;
  final String subjectTopic;
  final String notesOnTopic;
  final String teacherNotesDoc;
  final String dateOnNoteAssigned;
  final String viewStatus;
  const NotesReportEntity({
    required this.topicId,
    required this.subjectTopic,
    required this.notesOnTopic,
    required this.teacherNotesDoc,
    required this.dateOnNoteAssigned,
    required this.viewStatus,
  });

  @override
  List<Object?> get props => [
        topicId,
      ];
}
