import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_notification_list_request.dart';
import 'package:mash/mash/domain/entities/notification/notification_entity.dart';
import 'package:mash/mash/domain/repositories/notification_repository.dart';

@injectable
@lazySingleton
class NotificationUseCase
    implements
        UseCase<List<GetNotificationEntity?>, GetNotificationListRequest> {
  final NotificationRepository notificationRepository;

  NotificationUseCase({required this.notificationRepository});

  @override
  Future<List<GetNotificationEntity?>> call(
      GetNotificationListRequest params) async {
    return await notificationRepository.getNotificationList(params);
  }
}
