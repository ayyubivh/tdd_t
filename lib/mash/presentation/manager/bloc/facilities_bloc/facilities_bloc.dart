
import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_amount_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_instalments_request.dart';
import 'package:mash/mash/data/remote/request/get_facility_stops_request.dart';
import 'package:mash/mash/data/remote/request/transportation_change_stop_request.dart';
import 'package:mash/mash/data/remote/request/transportation_detail_request.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_instalments_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_stops_entity.dart';
import 'package:mash/mash/domain/entities/facilities/get_transport_amount_entity.dart';
import 'package:mash/mash/domain/entities/facilities/transportation_detail_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/faclities_sub_un_sub_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_facility_amount_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_facility_dashboard_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_facility_instalments_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_facility_stops_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_transportation_detail_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/transportation_stop_change_use_case.dart';

import '../../../../../core/usecase.dart';
import '../../../../data/remote/models/facilities/facility_sub_un_sub_model.dart';

part 'facilities_event.dart';
part 'facilities_state.dart';
part 'facilities_bloc.freezed.dart';

@injectable
class FacilitiesBloc extends Bloc<FacilitiesEvent, FacilitiesState> {
  FacilitiesBloc(this.getFacilitiesDashBoardUseCase,
      this.getFacilitiesInstalmentsUseCase, this.getFacilityStopsUseCase,
      this.getFacilityAmountUseCase, this.facilitySubUnSubscribeUseCase,
      this.getTransportationUseCase, this.transportationChangeStopUseCase)
      : super(FacilitiesState.initial()) {
    on<FacilitiesEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_GetFacilityDashBoardData>(_getFacilityDashBoard);
    on<_GetFacilityInstalments>(_getFacilityInstalments);
    on<_GetFacilityStops>(_getFacilityStops);
    on<_GetFacilityAmount>(_getFacilityAmount);
    on<_FacilitySubUnSub>(facilitySubUnSubscribe);
    on<_GetTransportationDetail>(_getTransportationDetail);
    on<_TransportationStopChange>(_transportationStopChange);
  }

  static FacilitiesBloc get(BuildContext context) =>
      BlocProvider.of(context);

  final GetFacilitiesDashBoardUseCase getFacilitiesDashBoardUseCase;
  final GetFacilityInstalmentsUseCase getFacilitiesInstalmentsUseCase;
  final GetFacilityStopsUseCase getFacilityStopsUseCase;
  final GetFacilityAmountUseCase getFacilityAmountUseCase;
  final GetTransportationUseCase getTransportationUseCase;
  final FacilitySubUnSubscribeUseCase facilitySubUnSubscribeUseCase;
  final TransportationChangeStopUseCase transportationChangeStopUseCase;
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  _getFacilityDashBoard(_GetFacilityDashBoardData event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getFacilityDashBoard: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getFacilitiesDashBoardUseCase.call(
          GetFacilityDashBoardRequest(companyId: userdata?.compId ?? '',
              pStudentId: event.studentId ?? '',
              pTabId: event.pTabId ?? ''));
      emit(state.copyWith(
        getFacilityDashBoard: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getFacilityDashBoard: ResponseClassify.error(e.toString())));
    }
  }

  _getFacilityInstalments(_GetFacilityInstalments event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getFacilityInstalments: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());

      final data = await getFacilitiesInstalmentsUseCase.call(
          GetFacilityInstalmentsRequest(companyId: userdata?.compId ?? '',
              pStudentId: event.studentId ?? '',
              pSubHeadId: event.subHeadId ?? ''));
      emit(state.copyWith(
        getFacilityInstalments: ResponseClassify.completed(data),
      ));
      prettyPrint('*********** sample data check **********');
      prettyPrint("sample data ${state.getFacilityInstalments.data?.first
          ?.instalmentName.toString()}");
    } catch (e) {
      emit(state.copyWith(
          getFacilityInstalments: ResponseClassify.error(e.toString())));
    }
  }


  _getFacilityStops(_GetFacilityStops event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getFacilityStops: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());

      final data = await getFacilityStopsUseCase.call(GetFacilityStopsRequest(
          companyId: userdata?.compId ?? '',
          searchTerm: event.searchQuery ?? ''));
      emit(state.copyWith(
        getFacilityStops: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getFacilityStops: ResponseClassify.error(e.toString())));
    }
  }

  _getFacilityAmount(_GetFacilityAmount event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getFacilityAmount: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());

      final data = await getFacilityAmountUseCase.call(GetFacilityAmountRequest(
          companyId: userdata?.compId ?? '',
          pickUpStop: event.pickUpId ?? '',
          dropStop: event.dropOffId ?? ''));
      emit(state.copyWith(
        getFacilityAmount: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getFacilityAmount: ResponseClassify.error(e.toString())));
    }
  }

  facilitySubUnSubscribe(_FacilitySubUnSub event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(facilitySubUnSub: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await facilitySubUnSubscribeUseCase.call(
          FacilitySubUnSubscribeRequest(companyId: loginInfo?.compId ?? '',
              pStudentId: event.studentId ?? '',
              pFeeHeadId: event.feeHeadId ?? '',
              pSubHeadId: event.subHeadId ?? '',
              pickUpId: event.pickUpId ?? '',
              dropId: event.dropId ?? '',
              pFlag: event.flag ?? '',
              pUnSubDate: event.unSubDate ?? ''));
print("unsubscribe response ${response}");
     /* if (response. == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        return FacilitySubUnSubModel.fromJson(jsonResponse);
      } else {
        throw Exception('Failed to load data');
      }*/

      emit(state.copyWith(
          facilitySubUnSub: ResponseClassify.completed(response)));
    } catch (e,s) {
      print(s);
      emit(state.copyWith(facilitySubUnSub: ResponseClassify.error(e)));
    }
  }

  _getTransportationDetail(_GetTransportationDetail event,
      Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getTransportationDetail: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());

      final data = await getTransportationUseCase.call(
          TransportationDetailRequest(companyId: userdata?.compId ?? '',
              studentId: event.studentId ?? ''));
      emit(state.copyWith(
        getTransportationDetail: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getTransportationDetail: ResponseClassify.error(e.toString())));
    }
  }

   _transportationStopChange(_TransportationStopChange event, Emitter<FacilitiesState> emit) async {
     emit(state.copyWith(facilitySubUnSub: ResponseClassify.loading()));
     try {
       var loginInfo = await getUserInfoUseCase.call(NoParams());
       var response = await transportationChangeStopUseCase.call(
           TransportationChangeStopRequest(companyId: loginInfo?.compId ??'', studentId: event.studentId ?? '', pickUpId: event.pickUpId ?? '', dropId: event.dropId ?? ''));
       print("unsubscribe response ${response}");
       emit(state.copyWith(
           facilitySubUnSub: ResponseClassify.completed(response)));
     } catch (e,s) {
       print(s);
       emit(state.copyWith(facilitySubUnSub: ResponseClassify.error(e)));
     }
  }
}

