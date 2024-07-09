import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/request/vehicle_tracker_request.dart';
import 'package:mash/mash/data/remote/models/vehicle_tracker/student_route_model.dart';
import 'package:mash/mash/data/remote/models/vehicle_tracker/vehicle_location_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:xml/xml.dart';

import '../../../domain/entities/vehicle_tracker/student_routes_entity.dart';
import '../../../domain/entities/vehicle_tracker/vehicle_location_entity.dart';

abstract class VehicleTrackerDataSource {
  Future<StudentRouteEntity> getVehicleTrackerStop(
      VehicleTrackerRequest request);

  Future<VehicleLocationEntity> getCurrentLocation(String vehicleNo);
}

@LazySingleton(as: VehicleTrackerDataSource)
@injectable
class VehicleTrackerImpl extends VehicleTrackerDataSource {
  final ApiProvider apiProvider;

  VehicleTrackerImpl(this.apiProvider);

  @override
  Future<StudentRouteEntity> getVehicleTrackerStop(
      VehicleTrackerRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.vehicleTrackerStops,
        body: request.toJson());
    return StudentRouteModel.fromJson(data);
  }

  @override
  Future<VehicleLocationEntity> getCurrentLocation(String vehicleNo) async {
    final data = await apiProvider.postXml(
        AppRemoteRoutes.vehicleVendor, createXmlRequest(vehicleNo));

    return VehicleLocationModel.fromXml(data);
  }

  XmlDocument createXmlRequest(String vehicleNo) {
    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0" encoding="UTF-8"');
    builder.element('ROWSET', nest: () {
      builder.element('ROW', nest: () {
        builder.element('plate_number', nest: vehicleNo);
      });
    });

    final xmlDoc = builder.buildDocument();
    return xmlDoc;
  }
}
