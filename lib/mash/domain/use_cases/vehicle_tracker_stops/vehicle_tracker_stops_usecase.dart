import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/repositories/vehicle_tracker_repository.dart';

import '../../entities/vehicle_tracker/student_routes_entity.dart';

@lazySingleton
@injectable
class GetVehicleTrackerStopsUseCase
    extends UseCase<StudentRouteEntity, VehicleTrackerRequest> {
  final VehicleTrackerRepository repository;

  GetVehicleTrackerStopsUseCase(this.repository);

  @override
  Future<StudentRouteEntity> call(VehicleTrackerRequest params) {
    return repository.getStudentVehicleStops(params);
  }
}
