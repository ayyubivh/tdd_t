import 'package:mash/mash/domain/entities/notification/notification_entity.dart';

class NotificationsModel extends GetNotificationEntity {
  const NotificationsModel(
      {required super.msgSub,
      required super.msgBody,
      required super.msgTime,
      required super.traDt,
      required super.trSeq,
      required super.dt,
      required super.navigationId});

  factory NotificationsModel.fromJson(Map<String, dynamic> json) {
    return NotificationsModel(
      msgSub: json['MSG_SUB'] ?? '',
      msgBody: json['MSG_BODY'] ?? '',
      msgTime: json['MSG_TIME'] ?? '',
      traDt: json['TRA_DT'] ?? '',
      trSeq: json['TR_SEQ']  ?? '',
      dt: json['DT'] ?? '',
      navigationId: json['NAVIGATION_ID'] ?? '',
    );
  }
}
