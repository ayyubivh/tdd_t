import 'package:mash/mash/data/remote/request/notice_all_request.dart';

import '../../data/remote/request/notice_pop_up_request.dart';
import '../entities/notice/notice_all_entity.dart';
import '../entities/notice/notice_pop_up_entity.dart';

abstract interface class NoticeRepository {
  Future<List<NoticePopUpEntity>> getNoticePopUp(NoticePopUpRequest params);
  Future<List<NoticeAllEntity>> getAllNotice(NoticeAllRequest params);
}
