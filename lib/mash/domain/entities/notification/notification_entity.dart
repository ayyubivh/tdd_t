

import 'package:equatable/equatable.dart';

class GetNotificationEntity extends Equatable{
  final String? msgSub;
  final String? msgBody;
  final String? msgTime;
  final String? traDt;
  final String? trSeq;
  final String? dt;
  final String? navigationId;

  const GetNotificationEntity({required this.msgSub, required this.msgBody, required this.msgTime, required this.traDt, required this.trSeq, required this.dt, required this.navigationId});

  @override
  List<Object?> get props => [msgSub,msgBody,msgTime,traDt,trSeq,dt,navigationId];
}