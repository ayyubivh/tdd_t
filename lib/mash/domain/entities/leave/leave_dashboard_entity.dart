


import 'package:equatable/equatable.dart';

class LeaveDashboardEntity extends Equatable{
  final String holiday;
  final String events;
  final String working;
  final String halfLeave;
  final String leave;
  final String attendancePercent;
  final String todayClassStrength;

  const LeaveDashboardEntity({required this.holiday, required this.events, required this.working, required this.halfLeave, required this.leave, required this.attendancePercent, required this.todayClassStrength});

  @override
  List<Object?> get props => [holiday,events,working,halfLeave,leave,attendancePercent,todayClassStrength];
}