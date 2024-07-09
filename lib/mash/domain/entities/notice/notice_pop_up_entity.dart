import 'package:equatable/equatable.dart';

class NoticePopUpEntity extends Equatable {
  final String? topicHead;
  final String? topicDesc;
  final String? noticeDate;
  final String? docFile;
  final String? ext;

  const NoticePopUpEntity({
    required this.topicHead,
    required this.topicDesc,
    required this.noticeDate,
    required this.docFile,
    required this.ext,
  });

  @override
  List<Object?> get props => [topicHead, topicDesc, noticeDate, docFile, ext];
}
