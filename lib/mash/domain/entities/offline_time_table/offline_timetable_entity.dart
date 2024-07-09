import 'package:equatable/equatable.dart';

class OfflineExamTimeTableEntity extends Equatable {
  final String examId;
  final String classId;
  final String subjectName;
  final String examDate;
  final String term;
  final String startTime;
  final String endTime;
  final List<String> portions;

  const OfflineExamTimeTableEntity({
    required this.examId,
    required this.classId,
    required this.subjectName,
    required this.examDate,
    required this.term,
    required this.startTime,
    required this.endTime,
    required this.portions,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        examId,
        classId,
        subjectName,
        examDate,
        term,
        startTime,
        endTime,
        portions
      ];
}
