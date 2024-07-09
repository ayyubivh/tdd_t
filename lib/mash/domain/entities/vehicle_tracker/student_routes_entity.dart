import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';

class StudentRouteEntity {
  final VehicleTrackerEntity? vehicleDetails;
  final List<VehicleTrackerEntity> vehicleStops;

  StudentRouteEntity({this.vehicleDetails, required this.vehicleStops});
}
