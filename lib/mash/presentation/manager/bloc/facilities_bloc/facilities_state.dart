part of 'facilities_bloc.dart';

@freezed
class FacilitiesState with _$FacilitiesState {
  const factory FacilitiesState({
    required ResponseClassify<List<GetFacilityDashBoardEntity?>> getFacilityDashBoard,
    required ResponseClassify<List<FacilityInstalmentsEntity?>> getFacilityInstalments,
    required ResponseClassify<List<GetFacilityStopsEntity?>> getFacilityStops,
    required ResponseClassify<List<GetTransportAmountEntity?>> getFacilityAmount,
    required ResponseClassify<List<TransportationDetailEntity?>> getTransportationDetail,
    required ResponseClassify<FacilitySubUnSubEntity> facilitySubUnSub,
    required ResponseClassify<FacilitySubUnSubEntity> transportationStopChange,
  }) = _FacilitiesState;

   factory FacilitiesState.initial() => FacilitiesState(
     transportationStopChange: ResponseClassify.initial(),
       getFacilityDashBoard: ResponseClassify.initial(),
       getFacilityInstalments: ResponseClassify.initial(),
     getFacilityStops: ResponseClassify.initial(), getFacilityAmount: ResponseClassify.initial(), facilitySubUnSub: ResponseClassify.initial(), getTransportationDetail: ResponseClassify.initial()
   );
}
