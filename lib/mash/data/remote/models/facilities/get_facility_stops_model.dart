

import 'package:mash/mash/domain/entities/facilities/get_facility_stops_entity.dart';

class GetFacilityStopsModel extends GetFacilityStopsEntity{
  const GetFacilityStopsModel({required super.stops, required super.stopDetails, required super.stopKilometer, required super.stopId, required super.noOfSeats, required super.seatUsed, required super.balance, required super.pickDrop, required super.pickup, required super.dropup});


  factory GetFacilityStopsModel.fromJson(Map<String, dynamic> json) {
    return GetFacilityStopsModel(
      stops: json['STOPS'] ?? '',
      stopDetails: json['STOP_DETAILS'] ?? '',
      stopKilometer: json['STOP_KILOMETER'] ?? '',
      stopId: json['STOP_ID'] ?? '',
      noOfSeats: json['NO_OF_SEATS'] ?? '',
      seatUsed: json['SEATUSED'] ?? '',
      balance: json['BALANCE'] ?? '',
      pickDrop: json['PICKDROP'] ?? '',
      pickup: json['PICKUP'] ?? '',
      dropup: json['DROPUP'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'STOPS': stops,
      'STOP_DETAILS': stopDetails,
      'STOP_KILOMETER': stopKilometer,
      'STOP_ID': stopId,
      'NO_OF_SEATS': noOfSeats,
      'SEATUSED': seatUsed,
      'BALANCE': balance,
      'PICKDROP': pickDrop,
      'PICKUP': pickup,
      'DROPUP': dropup,
    };
  }
}