import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';

class AcademicSubjectModel extends AcademicSubjectEntity {
  AcademicSubjectModel({
    required super.classId,
    required super.subjectId,
    required super.subName,
    required super.className,
  });
  factory AcademicSubjectModel.fromJson(Map<String, dynamic> json) {
    return AcademicSubjectModel(
      classId: json['CLASS_ID'],
      subjectId: json['SUBJECT_ID'],
      subName: json['SUB_NAME'],
      className: json['CLASS_NAME'],
    );
  }
}
