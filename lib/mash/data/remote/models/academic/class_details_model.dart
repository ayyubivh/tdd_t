import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';

class ClassDetailsModel extends ClassDetailsEntity {
  const ClassDetailsModel({
    required super.className,
    required super.classId,
    required super.academicId,
    required super.noSeats,
    required super.order,
    required super.mediumId,
    required super.isActive,
  });
  factory ClassDetailsModel.fromJson(Map<String, dynamic> json) {
    return ClassDetailsModel(
      className: json['CLASS_NAME'],
      classId: json['CLASS_ID'],
      academicId: json['ACADEMIC_ID'],
      noSeats: json['NO_SEATS'],
      order: json['ORDR'],
      mediumId: json['MEDIUM_ID'],
      isActive: json['IS_ACTIVE'],
    );
  }
}
