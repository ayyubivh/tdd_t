import 'package:mash/mash/domain/entities/drawer_menu_items/progress_terms_entity.dart';

class ProgressTermsModel extends ProgressTermsEntity {
  const ProgressTermsModel(
      {required super.classId,
      required super.termId,
      required super.sectionName});
  factory ProgressTermsModel.fromJson(Map<String, dynamic> json) {
    return ProgressTermsModel(
      classId: json['CLASS_ID'] as String,
      termId: json['TERM_ID'] as String,
      sectionName: json['SECTION_NAME'] as String,
    );
  }
}
