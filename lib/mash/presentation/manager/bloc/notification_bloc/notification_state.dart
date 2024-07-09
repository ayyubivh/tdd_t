part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState(
      {required ResponseClassify<List<GetNotificationEntity?>>
          notificationListData}) = _NotificationState;

  factory NotificationState.initial() =>
      NotificationState(notificationListData: ResponseClassify.initial());
}
