

import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';

class OfflineExamTimeTableModel extends OfflineExamTimeTableEntity{


  const OfflineExamTimeTableModel(
       {required super.examId, required super.classId, required super.subjectName, required super.examDate, required super.term, required super.startTime, required super.endTime,
        required super.portions});



  factory OfflineExamTimeTableModel.fromJson(Map<String, dynamic> json) {
    return OfflineExamTimeTableModel(
      examId: json['EXAM_ID'].toString(),
      classId: json['CLASS'] ?? '',
      subjectName: json['SUB_NAME'] ?? '',
      examDate: json['EXAM_DATE'] ?? '',
      term: json['TERM'] ?? '',
      startTime: json['START_TIME'] ?? '',
      endTime: json['END_TIME'] ?? '',
      portions: List<String>.from(json['PORTIONS']) ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'EXAM_ID': examId,
      'CLASS': classId,
      'SUB_NAME': subjectName,
      'EXAM_DATE': examDate,
      'TERM': term,
      'START_TIME': startTime,
      'END_TIME': endTime,
      'PORTIONS': portions,
    };
  }
}