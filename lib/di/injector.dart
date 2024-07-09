import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/di/injector.config.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import '../mash/data/local/models/login_local_model.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true,
)
void configureDependencies() {
  getIt.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
  // getIt.registerSingleton<FirebaseDatabaseMethods>(FirebaseDatabaseMethods());

  getIt.init();
  Hive.registerAdapter(WordThoughtsHiveModelAdapter());
  Hive.registerAdapter(ThoughtTableHiveModelAdapter());
  Hive.registerAdapter(LoginLocalModelAdapter());
  Hive.registerAdapter(WordTableHiveModelAdapter());
  intializeNotification();
}

intializeNotification() {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: 'basic_channel_group',
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for download completed',
        )
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true);
}
