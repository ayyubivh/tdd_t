

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/get_notification_list_request.dart';
import 'package:mash/mash/domain/entities/notification/notification_entity.dart';
import 'package:mash/mash/domain/repositories/notification_repository.dart';

import '../remote/data_sources/notification_remote_data_source.dart';

@LazySingleton(as: NotificationRepository)
@injectable
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSourceImpl notificationRemoteDataSourceImpl;

  NotificationRepositoryImpl({required this.notificationRemoteDataSourceImpl});

  @override
  Future<List<GetNotificationEntity>> getNotificationList(GetNotificationListRequest params) async {
    return await notificationRemoteDataSourceImpl.getNotification(params);
  }
}

