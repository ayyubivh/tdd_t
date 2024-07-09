import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';

class NoticePopUpModel extends NoticePopUpEntity {
  const NoticePopUpModel({
    required super.topicHead,
    required super.topicDesc,
    required super.noticeDate,
    required super.docFile,
    required super.ext,
  });
  factory NoticePopUpModel.fromJson(Map<String, dynamic> json) {
    return NoticePopUpModel(
      topicHead: json['TOPIC_HEAD'] as String,
      topicDesc: json['TOPIC_DESC'] as String,
      noticeDate: json['NOTICE_DATE'] as String,
      docFile: json['DOC_FILE'] as String,
      ext: json['EXT'],
    );
  }
}
