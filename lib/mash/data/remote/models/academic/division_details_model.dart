import 'package:mash/mash/domain/entities/academic/division_details_entity.dart';

class DivisionDetailsModel extends DivisionEntityDetailsEnitity {
  const DivisionDetailsModel({
    required super.divisionName,
    required super.noOfSeats,
    required super.divisionId,
    required super.order,
  });
  factory DivisionDetailsModel.fromJson(Map<String, dynamic> json) {
    return DivisionDetailsModel(
      divisionName: json['DIVISION_NAME'] ?? '',
      noOfSeats: json['NO_SEATS'] ?? '0',
      divisionId: json['DIVISION_ID'] ?? '',
      order: json['ORDR'] ?? '0',
    );
  }
}
