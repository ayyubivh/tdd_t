


import 'package:equatable/equatable.dart';

class DailyTimeTableEntity extends Equatable{
  final String teacherId;
  final String division;
  final String dayPeriod;
  final String classId;
  final String subjectId;
  final String subName;
  final String staffId;
  final String staffUserId;
  final String fullName;
  final String periodName;
  final String period;
  final String dayName;
  final String periodTime;
  final String startTime;
  final String endTime;
  final String className;
  final String mediumId;
  final String medium;
  final String divisionName;
  final String pTopicId;
  final String subId;
  final String primaryMobile;
  final String attnStatus;
  final String callFromTime;
  final String callToTime;
  final String callAvailability;

  const DailyTimeTableEntity({
    required this.teacherId,
    required this.division,
    required this.dayPeriod,
    required this.classId,
    required this.subjectId,
    required this.subName,
    required this.staffId,
    required this.staffUserId,
    required this.fullName,
    required this.periodName,
    required this.period,
    required this.dayName,
    required this.periodTime,
    required this.startTime,
    required this.endTime,
    required this.className,
    required this.mediumId,
    required this.medium,
    required this.divisionName,
    required this.pTopicId,
    required this.subId,
    required this.primaryMobile,
    required this.attnStatus,
    required this.callFromTime,
    required this.callToTime,
    required this.callAvailability});

  @override
  // TODO: implement props
  List<Object?> get props => [
    teacherId,
    classId,
    className,
    division,
    divisionName,
    dayPeriod,
    dayName,
    subId,
    subName,
    subjectId,
    staffId,
    staffUserId,
    fullName,
    period,
    periodName,
    periodTime,
    startTime,
    endTime,
    mediumId,
    medium,
    pTopicId,
    primaryMobile,
    attnStatus,
    callFromTime,
    callToTime,
    callAvailability
  ];

}