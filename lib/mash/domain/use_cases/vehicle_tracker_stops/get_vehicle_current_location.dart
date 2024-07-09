import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';

import '../../entities/vehicle_tracker/vehicle_location_entity.dart';
import '../../repositories/vehicle_tracker_repository.dart';

@lazySingleton
@injectable
class GetVehicleCurrentLocation extends UseCase<VehicleLocationEntity, String> {
  final VehicleTrackerRepository repository;

  GetVehicleCurrentLocation(this.repository);

  @override
  Future<VehicleLocationEntity> call(String params) {
    return compute(repository.getCurrentLocation, params);
  }
}
