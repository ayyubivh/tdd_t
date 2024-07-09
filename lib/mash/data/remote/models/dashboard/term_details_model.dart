import 'package:mash/mash/domain/entities/dashboard/term_details_entity.dart';

class TermDetailsModel extends TermDetailsEntity {
  const TermDetailsModel({
    required super.termId,
    required super.sectionName,
    required super.isTerm,
  });
  factory TermDetailsModel.fromJson(Map<String, dynamic> json) {
    return TermDetailsModel(
      termId: json['TERM_ID'],
      sectionName: json['SECTION_NAME'],
      isTerm: json['IS_TERM'],
    );
  }
}
