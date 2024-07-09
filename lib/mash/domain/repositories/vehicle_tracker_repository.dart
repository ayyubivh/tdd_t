import 'package:mash/mash/data/remote/request/vehicle_tracker_request.dart';

import '../entities/vehicle_tracker/student_routes_entity.dart';
import '../entities/vehicle_tracker/vehicle_location_entity.dart';

abstract class VehicleTrackerRepository {
  Future<StudentRouteEntity> getStudentVehicleStops(
      VehicleTrackerRequest request);

  Future<VehicleLocationEntity> getCurrentLocation(String vehicleNo);
}
