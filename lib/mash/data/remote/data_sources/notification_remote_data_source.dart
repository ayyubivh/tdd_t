



import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/notification/notification_model.dart';
import 'package:mash/mash/data/remote/request/get_notification_list_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../domain/entities/notification/notification_entity.dart';


abstract interface class NotificationRemoteDataSource {
  Future<List<GetNotificationEntity>> getNotification(GetNotificationListRequest params);
}

@injectable
@LazySingleton(as: NotificationRemoteDataSource)
class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final ApiProvider apiProvider;

  NotificationRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<List<GetNotificationEntity>> getNotification(GetNotificationListRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getNotificationList,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => NotificationsModel.fromJson(e)).toList();
  }
}
