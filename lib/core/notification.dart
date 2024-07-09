import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationService {
  showNotification(String body) async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      // Request notification permission
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }

    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: 'Download Completed',
        body: body,
      ),
      actionButtons: [
        NotificationActionButton(
          key: 'OPEN_FILE',
          label: 'Open Receipt',
        ),
      ],
    );
  }
}
