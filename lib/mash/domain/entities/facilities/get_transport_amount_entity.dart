

import 'package:equatable/equatable.dart';

class GetTransportAmountEntity extends Equatable{
  final String? pickupStop;
  final String? pickupStopKm;
  final String? pickupVehicle;
  final String? routeCode;
  final String? stopId;
  final String? pickupSlabAmount;
  final String? pickupSlabVal;
  final String? dropStop;
  final String? dropStopKm;
  final String? dropVehicle;
  final String? routeCode1;
  final String? stopId1;
  final String? dropSlabAmount;
  final String? pickupSlabVal1;
  final String? totalFeeAmount;

  const GetTransportAmountEntity({required this.pickupStop, required this.pickupStopKm, required this.pickupVehicle, required this.routeCode, required this.stopId, required this.pickupSlabAmount, required this.pickupSlabVal, required this.dropStop, required this.dropStopKm, required this.dropVehicle, required this.routeCode1, required this.stopId1, required this.dropSlabAmount, required this.pickupSlabVal1, required this.totalFeeAmount});

  @override
  List<Object?> get props => [pickupStop,pickupStopKm,pickupVehicle,routeCode,
    routeCode1,stopId,stopId1,pickupSlabAmount,pickupSlabVal,pickupStop,dropStop,dropStopKm,dropVehicle,routeCode1,totalFeeAmount];
}