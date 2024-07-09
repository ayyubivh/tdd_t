import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';

class SyllabusTermModel extends SyllabusTermEntity {
  const SyllabusTermModel(
      {required super.termId,
      required super.termName,
      required super.fromDate,
      required super.toDate});

  factory SyllabusTermModel.fromJson(Map<String, dynamic> json) {
    return SyllabusTermModel(
      termId: json['TERM_ID'] ?? '',
      termName: json['TERM_NAME'] ?? '',
      fromDate: json['FROM_DATE'] ?? '',
      toDate: json['TO_DATE'] ?? '',
    );
  }
}
