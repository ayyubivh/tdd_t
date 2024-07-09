

import 'package:mash/mash/domain/entities/event_calendar/event_calendar_entity.dart';

class EventCalendarModel extends EventCalendarEntity{
  EventCalendarModel({required super.id, required super.leaveType, required super.type, required super.name, required super.description, required super.description1, required super.description2, required super.description3, required super.description4, required super.description5, required super.eventPic, required super.attnDate, required super.everyYear, required super.dtAttnDate});


  factory EventCalendarModel.fromJson(Map<String, dynamic> json) {
    return EventCalendarModel(
      id: json['ID'] ?? '',
      leaveType: json['LEAVE_TYPE'] ?? '',
      type: json['TYPE'] ?? '',
      name: json['NAME'] ?? '',
      description: json['DESCRIPTION'] ?? '',
      description1: json['DESCRIPTION1'] ?? '',
      description2: json['DESCRIPTION2'] ?? '',
      description3: json['DESCRIPTION3'] ?? '',
      description4: json['DESCRIPTION4'] ?? '',
      description5: json['DESCRIPTION5'] ?? '',
      eventPic: json['EVENTPIC'] ?? '',
      attnDate: json['ATTN_DATE'] ?? '',
      everyYear: json['EVERYYEAR'] ?? '',
      dtAttnDate: json['DT_ATTN_DATE'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ID': id,
      'LEAVE_TYPE': leaveType,
      'TYPE': type,
      'NAME': name,
      'DESCRIPTION': description,
      'DESCRIPTION1': description1,
      'DESCRIPTION2': description2,
      'DESCRIPTION3': description3,
      'DESCRIPTION4': description4,
      'DESCRIPTION5': description5,
      'EVENTPIC': eventPic,
      'ATTN_DATE': attnDate,
      'EVERYYEAR': everyYear,
      'DT_ATTN_DATE': dtAttnDate,
    };
  }
}