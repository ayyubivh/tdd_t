import 'package:mash/mash/data/remote/models/vehicle_tracker/vehicle_tracker_model.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/student_routes_entity.dart';

import '../../../../domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';

class StudentRouteModel extends StudentRouteEntity {
  StudentRouteModel({required super.vehicleStops, super.vehicleDetails});

  factory StudentRouteModel.fromJson(Map<String, dynamic> json) {
    return StudentRouteModel(
        vehicleStops: List<VehicleTrackerEntity>.from(
            json['resTable2'].map((e) => VehicleTrackerModel.fromJson(e))),
        vehicleDetails: List<VehicleTrackerEntity>.from(
                json['resTable2'].map((e) => VehicleTrackerModel.fromJson(e)))
            .firstOrNull);
  }
}
