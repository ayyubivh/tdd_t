import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';

class VehicleTrackerModel extends VehicleTrackerEntity {
  const VehicleTrackerModel(
      {required super.stopId,
      required super.stops,
      required super.routeCode,
      required super.latitude,
      required super.longitude,
      super.regNumber,
      super.categoryId,
      super.vehicleId});

  factory VehicleTrackerModel.fromJson(Map<String, dynamic> json) {
    return VehicleTrackerModel(
        stopId: json['STOP_ID'],
        stops: json['STOPS'],
        routeCode: json['ROUTE_CODE'],
        latitude: double.parse(json['LATITUDE']),
        longitude: double.parse(json['LONGITUDE']),
        categoryId: json["CATEGORY_ID"],
        regNumber: json["REG_NUMBER"],
        vehicleId: json["VEHICLE_ID"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'STOP_ID': stopId,
      'STOPS': stops,
      'ROUTE_CODE': routeCode,
      'LATITUDE': latitude.toString(),
      'LONGITUDE': longitude.toString(),
    };
  }
}
