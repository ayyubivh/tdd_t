


import 'package:mash/mash/domain/entities/timeTable/daily_time_table_entity.dart';

class DailyTimeTableModel extends DailyTimeTableEntity{
  const DailyTimeTableModel({required super.teacherId, required super.division, required super.dayPeriod, required super.classId, required super.subjectId, required super.subName, required super.staffId, required super.staffUserId, required super.fullName, required super.periodName, required super.period, required super.dayName, required super.periodTime, required super.startTime, required super.endTime, required super.className, required super.mediumId, required super.medium, required super.divisionName, required super.pTopicId, required super.subId, required super.primaryMobile, required super.attnStatus, required super.callFromTime, required super.callToTime, required super.callAvailability});
  factory DailyTimeTableModel.fromJson(Map<String, dynamic> json) {
    return DailyTimeTableModel(
      teacherId: json['TEACHER_ID'],
      division: json['DIVISION'],
      dayPeriod: json['DAY_PERIOD'],
      classId: json['CLASS_ID'],
      subjectId: json['SUBJECT_ID'],
      subName: json['SUB_NAME'],
      staffId: json['STAFF_ID'],
      staffUserId: json['STAFF_USER_ID'],
      fullName: json['FULL_NAME'],
      periodName: json['PERIOD_NAME'],
      period: json['PERIOD'],
      dayName: json['DAY_NAME'],
      periodTime: json['PERIOD_TIME'],
      startTime: json['START_TIME'],
      endTime: json['END_TIME'],
      className: json['CLASS_NAME'],
      mediumId: json['MEDIUM_ID'],
      medium: json['MEDIUM'],
      divisionName: json['DIVISION_NAME'],
      pTopicId: json['P_TOPIC_ID'],
      subId: json['SUB_ID'],
      primaryMobile: json['PRIMARY_MOBILE'],
      attnStatus: json['ATTN_STATUS'],
      callFromTime: json['CALL_FROM_TIME'],
      callToTime: json['CALL_TO_TIME'],
      callAvailability: json['CALLAVAILABILITY'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TEACHER_ID': teacherId,
      'DIVISION': division,
      'DAY_PERIOD': dayPeriod,
      'CLASS_ID': classId,
      'SUBJECT_ID': subjectId,
      'SUB_NAME': subName,
      'STAFF_ID': staffId,
      'STAFF_USER_ID': staffUserId,
      'FULL_NAME': fullName,
      'PERIOD_NAME': periodName,
      'PERIOD': period,
      'DAY_NAME': dayName,
      'PERIOD_TIME': periodTime,
      'START_TIME': startTime,
      'END_TIME': endTime,
      'CLASS_NAME': className,
      'MEDIUM_ID': mediumId,
      'MEDIUM': medium,
      'DIVISION_NAME': divisionName,
      'P_TOPIC_ID': pTopicId,
      'SUB_ID': subId,
      'PRIMARY_MOBILE': primaryMobile,
      'ATTN_STATUS': attnStatus,
      'CALL_FROM_TIME': callFromTime,
      'CALL_TO_TIME': callToTime,
      'CALLAVAILABILITY': callAvailability,
    };
  }


}