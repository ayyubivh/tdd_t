import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/notice_all_request.dart';
import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';
import 'package:mash/mash/domain/repositories/notice_repository.dart';

@lazySingleton
@injectable
class GetAllNoticeUseCase
    implements UseCase<List<NoticeAllEntity?>, NoticeAllRequest> {
  final NoticeRepository noticeRepository;

  GetAllNoticeUseCase({required this.noticeRepository});

  @override
  Future<List<NoticeAllEntity?>> call(NoticeAllRequest params) async {
    return await noticeRepository.getAllNotice(params);
  }
}
