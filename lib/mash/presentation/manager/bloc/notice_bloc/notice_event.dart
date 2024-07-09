part of 'notice_bloc.dart';

@freezed
class NoticeEvent with _$NoticeEvent {
  const factory NoticeEvent.getNoticePopUp() = _GetNoticePopUp;
  const factory NoticeEvent.getNoticeDetail({required String noticeId}) = _GetNoticeDetail;
  const factory NoticeEvent.getNoticeAllData() = _GetNoticeAllData;
  const factory NoticeEvent.readBook(
      {required NoticeAllEntity notice,required BuildContext context}) = _GetDisplayOrDownloadData;
}
