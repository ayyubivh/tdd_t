

import 'package:mash/mash/data/remote/request/get_notification_list_request.dart';
import 'package:mash/mash/domain/entities/notification/notification_entity.dart';

abstract interface class NotificationRepository {
  Future<List<GetNotificationEntity>> getNotificationList(GetNotificationListRequest params);
}
