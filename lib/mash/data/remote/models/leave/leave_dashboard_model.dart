

import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

class LeaveDashboardModel extends LeaveDashboardEntity{
  LeaveDashboardModel({required super.holiday, required super.events, required super.working, required super.halfLeave, required super.leave, required super.attendancePercent, required super.todayClassStrength});


  factory LeaveDashboardModel.fromJson(Map<String, dynamic> json) {
    return LeaveDashboardModel(
      holiday: json['HOLIDAY'],
      events: json['EVENTS'],
      working: json['WORKING'],
      halfLeave: json['HALFLEAVE'],
      leave: json['LEAVE'],
      attendancePercent: json['P_ATTPERCENT'],
      todayClassStrength: json['TODAYCLSSTRENGTH'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'HOLIDAY': holiday,
      'EVENTS': events,
      'WORKING': working,
      'HALFLEAVE': halfLeave,
      'LEAVE': leave,
      'P_ATTPERCENT': attendancePercent,
      'TODAYCLSSTRENGTH': todayClassStrength,
    };
  }
}