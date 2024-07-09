import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/vehicle_tracker_data_source.dart';
import 'package:mash/mash/data/remote/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_location_entity.dart';
import 'package:mash/mash/domain/repositories/vehicle_tracker_repository.dart';

import '../../domain/entities/vehicle_tracker/student_routes_entity.dart';

@LazySingleton(as: VehicleTrackerRepository)
@injectable
class VehicleTrackerRepoImpl extends VehicleTrackerRepository {
  final VehicleTrackerDataSource dataSource;

  VehicleTrackerRepoImpl(this.dataSource);

  @override
  Future<StudentRouteEntity> getStudentVehicleStops(
      VehicleTrackerRequest request) {
    return dataSource.getVehicleTrackerStop(request);
  }

  @override
  Future<VehicleLocationEntity> getCurrentLocation(String vehicleNo) {
    return dataSource.getCurrentLocation(vehicleNo);
  }
}
