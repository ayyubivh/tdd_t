import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';

class OfflineExamTermModel extends OfflineTimeTableTermEntity {
  OfflineExamTermModel({required super.termId, required super.sectionName,
    required super.isTerm, required super.createdOn,});




  factory OfflineExamTermModel.fromJson(Map<String, dynamic> json) {
    return OfflineExamTermModel(
      termId: json['TERM_ID'],
      sectionName: json['SECTION_NAME'],
      isTerm: json['IS_TERM'] == "1",
      createdOn: json['CREATED_ON'],
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      'TERM_ID': termId,
      'SECTION_NAME': sectionName,
      'IS_TERM': isTerm ? "1" : "0",
      'CREATED_ON': createdOn,
    };
  }
}