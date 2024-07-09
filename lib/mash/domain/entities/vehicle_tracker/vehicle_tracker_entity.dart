import 'package:equatable/equatable.dart';

class VehicleTrackerEntity extends Equatable {
  final String stopId;
  final String stops;
  final String routeCode;
  final double latitude;
  final String? categoryId;
  final String? regNumber;
  final double longitude;
  final String? vehicleId;

  const VehicleTrackerEntity(
      {required this.stopId,
      required this.stops,
      required this.routeCode,
      required this.latitude,
      required this.longitude,
      this.regNumber,
      this.vehicleId,
      this.categoryId});

  @override
  List<Object> get props => [
        stopId,
        stops,
        routeCode,
        latitude,
        longitude,
      ];
}
