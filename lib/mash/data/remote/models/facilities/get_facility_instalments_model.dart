

import '../../../../domain/entities/facilities/get_facility_instalments_entity.dart';

class FacilityInstalmentsModel extends FacilityInstalmentsEntity{
  const FacilityInstalmentsModel({required super.instalmentId, required super.instalmentName, required super.amount, required super.startDate, required super.endDate, required super.dueDate});

  factory FacilityInstalmentsModel.fromJson(Map<String, dynamic> json) {
    return FacilityInstalmentsModel(
      instalmentId: json['INSTALMENT_ID'] ?? '',
      instalmentName: json['INSTALMENT_NAME'] ?? '',
      amount: json['AMOUNT'] ?? '',
      startDate: json['START_DATE'] ?? '',
      endDate: json['END_DATE'] ?? '',
      dueDate: json['DUE_DATE'] ?? '',
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'INSTALMENT_ID': instalmentId,
      'INSTALMENT_NAME': instalmentName,
      'AMOUNT': amount,
      'START_DATE': startDate,
      'END_DATE': endDate,
      'DUE_DATE': dueDate,
    };
  }
}