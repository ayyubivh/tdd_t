part of 'facilities_bloc.dart';

@freezed
class FacilitiesEvent with _$FacilitiesEvent {
  const factory FacilitiesEvent.started() = _Started;

  const factory FacilitiesEvent.getFacilityDashBoard(
      {required String? pTabId,
      required String? studentId}) = _GetFacilityDashBoardData;

  const factory FacilitiesEvent.getFacilityInstalments(
      {required String? subHeadId,
      required String? studentId}) = _GetFacilityInstalments;

  const factory FacilitiesEvent.getFacilityStops(
      {required String? searchQuery}) = _GetFacilityStops;

  const factory FacilitiesEvent.getFacilityAmount(
      {required String? pickUpId,
      required String? dropOffId}) = _GetFacilityAmount;

  const factory FacilitiesEvent.getTransportationDetail(
      {required String? studentId,
     }) = _GetTransportationDetail;

  const factory FacilitiesEvent.facilitySubUnSub(
      {required String? dropId,
      required String? pickUpId,
      required String? feeHeadId,
      required String? subHeadId,
      required String? unSubDate,
        required String? flag,
      required String? studentId}) = _FacilitySubUnSub;

  const factory FacilitiesEvent.transportationStopChange(
      {required String? dropId,
        required String? pickUpId,
        required String? studentId}) = _TransportationStopChange;
}
