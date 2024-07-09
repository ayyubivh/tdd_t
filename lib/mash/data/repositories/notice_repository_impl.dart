import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/notice_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/notice_all_request.dart';
import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';
import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';
import 'package:mash/mash/domain/repositories/notice_repository.dart';
import '../remote/request/notice_pop_up_request.dart';

@LazySingleton(as: NoticeRepository)
@injectable
class NoticeRepositoryImpl implements NoticeRepository {
  final NoticeRemoteDataSource noticeRemoteDataSource;

  NoticeRepositoryImpl({required this.noticeRemoteDataSource});
  @override
  Future<List<NoticePopUpEntity>> getNoticePopUp(
      NoticePopUpRequest params) async {
    return await noticeRemoteDataSource.getNoticePopUp(params);
  }

  @override
  Future<List<NoticeAllEntity>> getAllNotice(NoticeAllRequest params) async {
    return await noticeRemoteDataSource.getAllNotice(params);
  }
}
