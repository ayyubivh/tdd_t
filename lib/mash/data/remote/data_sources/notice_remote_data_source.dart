import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/notice/notice_all_model.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';
import 'package:mash/mash/data/remote/request/notice_all_request.dart';
import 'package:mash/mash/data/remote/request/notice_pop_up_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';


abstract interface class NoticeRemoteDataSource {
  Future<List<NoticePopUpModel>> getNoticePopUp(NoticePopUpRequest params);
  Future<List<NoticeAllEntity>> getAllNotice(NoticeAllRequest params);
}

@LazySingleton(as: NoticeRemoteDataSource)
@injectable
class NoticeRemoteDataSourceImpl implements NoticeRemoteDataSource {
  final ApiProvider apiProvider;

  NoticeRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<NoticePopUpModel>> getNoticePopUp(
      NoticePopUpRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.noticePopUp, params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => NoticePopUpModel.fromJson(e)).toList();
  }

  @override
  Future<List<NoticeAllEntity>> getAllNotice(NoticeAllRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.noticeAll,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => NoticeAllModel.fromJson(e)).toList();
  }
}
