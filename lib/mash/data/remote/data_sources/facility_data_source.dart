

import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/facilities/facility_sub_un_sub_model.dart';
import 'package:mash/mash/data/remote/models/facilities/get_facility_amount_model.dart';
import 'package:mash/mash/data/remote/models/facilities/get_facility_dashboard_model.dart';
import 'package:mash/mash/data/remote/models/facilities/get_facility_instalments_model.dart';
import 'package:mash/mash/data/remote/models/facilities/get_facility_stops_model.dart';
import 'package:mash/mash/data/remote/models/facilities/transportation_detail_model.dart';
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_amount_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_instalments_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_stops_request.dart';
import 'package:mash/mash/data/remote/request/transportation_change_stop_request.dart';
import 'package:mash/mash/data/remote/request/transportation_detail_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';

abstract interface class FacilityDataSource {
  Future<List<GetFacilityDashboardModel>> getFacilityDashBoard(GetFacilityDashBoardRequest params);
  Future<List<FacilityInstalmentsModel>> getFacilityInstalments(GetFacilityInstalmentsRequest params);
  Future<List<GetFacilityStopsModel>> getFacilityStops(GetFacilityStopsRequest params);
  Future<List<GetFacilityAmountModel>> getFacilityAmount(GetFacilityAmountRequest params);
  Future<List<TransportationDetailModel>> getTransportationDetail(TransportationDetailRequest params);
  Future<FacilitySubUnSubEntity> facilitySubUnSubscribe(FacilitySubUnSubscribeRequest params);
  Future<FacilitySubUnSubEntity> transportationChangeRoute(TransportationChangeStopRequest params);
}

@LazySingleton(as: FacilityDataSource)
@injectable
class FacilityDataSourceImpl implements FacilityDataSource{

  final ApiProvider apiProvider;

  FacilityDataSourceImpl({required this.apiProvider});

  @override
  Future<List<GetFacilityDashboardModel>> getFacilityDashBoard(GetFacilityDashBoardRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getFacilitiesDashboard,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => GetFacilityDashboardModel.fromJson(e)).toList();
  }

  @override
  Future<List<FacilityInstalmentsModel>> getFacilityInstalments(GetFacilityInstalmentsRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getFacilityInstalments,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => FacilityInstalmentsModel.fromJson(e)).toList();
  }

  @override
  Future<List<GetFacilityStopsModel>> getFacilityStops(GetFacilityStopsRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getFacilityStops,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => GetFacilityStopsModel.fromJson(e)).toList();
  }

  @override
  Future<List<GetFacilityAmountModel>> getFacilityAmount(GetFacilityAmountRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getFacilityAmount,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => GetFacilityAmountModel.fromJson(e)).toList();
  }

  @override
  Future<FacilitySubUnSubEntity> facilitySubUnSubscribe(FacilitySubUnSubscribeRequest params) async{
    final data =
    await apiProvider.post(AppRemoteRoutes.facilitySubscription,params.toJson());
    return FacilitySubUnSubModel.fromJson(data);

  }

 /* @override
  Future<FacilitySubUnSubModel> facilitySubUnSubscribe(FacilitySubUnSubscribeRequest params) async{
    final data =
    await apiProvider.post(AppRemoteRoutes.facilitySubscription,params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => FacilitySubUnSubModel.fromJson(e)).toList();
  }
*/
  @override
  Future<List<TransportationDetailModel>> getTransportationDetail(TransportationDetailRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.transportationDetail,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => TransportationDetailModel.fromJson(e)).toList();
  }

  @override
  Future<FacilitySubUnSubEntity> transportationChangeRoute(TransportationChangeStopRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.transportationChangeStop,params.toJson());
    return FacilitySubUnSubModel.fromJson(data);
  }
}