

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/facility_data_source.dart';
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_amount_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_instalments_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_stops_request.dart';
import 'package:mash/mash/data/remote/request/transportation_detail_request.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_instalments_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_stops_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_transport_amount_entity.dart';
import 'package:mash/mash/domain/entities/facilities/transportation_detail_entity.dart';
import 'package:mash/mash/domain/repositories/facilities_respository.dart';

import '../remote/request/transportation_change_stop_request.dart';

@LazySingleton(as: FacilitiesRepository)
@injectable
class FacilitiesRepositoryImpl implements FacilitiesRepository {
  final FacilityDataSource facilityDataSource;

  FacilitiesRepositoryImpl({required this.facilityDataSource});

  @override
  Future<List<GetFacilityDashBoardEntity>> getFacilityDashBoard(GetFacilityDashBoardRequest request) {
    return facilityDataSource.getFacilityDashBoard(request);
  }

  @override
  Future<List<FacilityInstalmentsEntity>> getFacilityInstalments(GetFacilityInstalmentsRequest request) {
   return facilityDataSource.getFacilityInstalments(request);
  }

  @override
  Future<List<GetFacilityStopsEntity>> getFacilityStops(GetFacilityStopsRequest request) {
    return facilityDataSource.getFacilityStops(request);
  }

  @override
  Future<List<GetTransportAmountEntity>> getFacilityAmount(GetFacilityAmountRequest request) {
   return facilityDataSource.getFacilityAmount(request);
  }

  @override
  Future<FacilitySubUnSubEntity> facilitySubUnSubscribe(FacilitySubUnSubscribeRequest request) {
    return facilityDataSource.facilitySubUnSubscribe(request);
  }

  @override
  Future<List<TransportationDetailEntity>> getTransportationDetail(TransportationDetailRequest request) {
    return facilityDataSource.getTransportationDetail(request);
  }

  @override
  Future<FacilitySubUnSubEntity> transportationStopChange(TransportationChangeStopRequest request) {
    return facilityDataSource.transportationChangeRoute(request);
  }

}
