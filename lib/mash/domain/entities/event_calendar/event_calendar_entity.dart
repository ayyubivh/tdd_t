import 'package:equatable/equatable.dart';

class EventCalendarEntity extends Equatable {
  final String? id;
  final String? leaveType;
  final String? type;
  final String? name;
  final String? description;
  final String? description1;
  final String? description2;
  final String? description3;
  final String? description4;
  final String? description5;
  final String? eventPic;
  final String? attnDate;
  final String? everyYear;
  final String? dtAttnDate;

  const EventCalendarEntity(
      {required this.id,
      required this.leaveType,
      required this.type,
      required this.name,
      required this.description,
      required this.description1,
      required this.description2,
      required this.description3,
      required this.description4,
      required this.description5,
      required this.eventPic,
      required this.attnDate,
      required this.everyYear,
      required this.dtAttnDate});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        leaveType,
        type,
        name,
        description,
        description1,
        description2,
        description3,
        description4,
        description5,
        eventPic,
        attnDate,
        everyYear,
        dtAttnDate
      ];
}
