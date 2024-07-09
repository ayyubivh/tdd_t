import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';
import 'package:mash/mash/domain/repositories/notice_repository.dart';

import '../../../data/remote/request/notice_pop_up_request.dart';

@injectable
class GetNoticeBoardPopUp
    implements UseCase<List<NoticePopUpEntity?>, NoticePopUpRequest> {
  final NoticeRepository noticeRepository;

  GetNoticeBoardPopUp(this.noticeRepository);

  @override
  Future<List<NoticePopUpEntity?>> call(NoticePopUpRequest params) async {
    return await noticeRepository.getNoticePopUp(params);
  }
  //
}
