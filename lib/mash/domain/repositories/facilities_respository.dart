
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_amount_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_instalments_request.dart';
import 'package:mash/mash/data/remote/request/transportation_change_stop_request.dart';
import 'package:mash/mash/data/remote/request/transportation_detail_request.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_instalments_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_stops_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_transport_amount_entity.dart';
import 'package:mash/mash/domain/entities/facilities/transportation_detail_entity.dart';

import '../../data/remote/request/get_facility_stops_request.dart';

abstract class FacilitiesRepository{
  Future<List<GetFacilityDashBoardEntity>>  getFacilityDashBoard(GetFacilityDashBoardRequest request);
  Future<List<FacilityInstalmentsEntity>>  getFacilityInstalments(GetFacilityInstalmentsRequest request);
  Future<List<GetFacilityStopsEntity>>  getFacilityStops(GetFacilityStopsRequest request);
  Future<List<GetTransportAmountEntity>>  getFacilityAmount(GetFacilityAmountRequest request);
  Future<List<TransportationDetailEntity>>  getTransportationDetail(TransportationDetailRequest request);
  Future<FacilitySubUnSubEntity> facilitySubUnSubscribe(FacilitySubUnSubscribeRequest request);
  Future<FacilitySubUnSubEntity> transportationStopChange(TransportationChangeStopRequest request);
}