

import 'package:mash/mash/domain/entities/facilities/get_transport_amount_entity.dart';

class GetFacilityAmountModel extends GetTransportAmountEntity{
  const GetFacilityAmountModel({required super.pickupStop, required super.pickupStopKm, required super.pickupVehicle, required super.routeCode, required super.stopId, required super.pickupSlabAmount, required super.pickupSlabVal, required super.dropStop, required super.dropStopKm, required super.dropVehicle, required super.routeCode1, required super.stopId1, required super.dropSlabAmount, required super.pickupSlabVal1, required super.totalFeeAmount});

  factory GetFacilityAmountModel.fromJson(Map<String, dynamic> json) {
    return GetFacilityAmountModel(
      pickupStop: json['PICKUP_STOP'] ?? '',
      pickupStopKm: json['PICKUP_STOPKM'] ?? '',
      pickupVehicle: json['PICKUP_VEHICLE'],
      routeCode: json['ROUTE_CODE'],
      stopId: json['STOP_ID'],
      pickupSlabAmount: json['PICKUP_SLAB_AMOUNT'] ?? '',
      pickupSlabVal: json['PICKUP_SLAB_VAL'],
      dropStop: json['DROP_STOP'],
      dropStopKm: json['DROP_STOPKM'] ?? '',
      dropVehicle: json['DROP_VEHICLE'] ?? '',
      routeCode1: json['ROUTE_CODE1'] ?? '',
      stopId1: json['STOP_ID1'] ?? '',
      dropSlabAmount: json['DROP_SLAB_AMOUNT'] ?? '',
      pickupSlabVal1: json['PICKUP_SLAB_VAL1'],
      totalFeeAmount: json['TOTAL_FEE_AMOUNT'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PICKUP_STOP': pickupStop,
      'PICKUP_STOPKM': pickupStopKm.toString(),
      'PICKUP_VEHICLE': pickupVehicle,
      'ROUTE_CODE': routeCode,
      'STOP_ID': stopId,
      'PICKUP_SLAB_AMOUNT': pickupSlabAmount.toString(),
      'PICKUP_SLAB_VAL': pickupSlabVal,
      'DROP_STOP': dropStop,
      'DROP_STOPKM': dropStopKm.toString(),
      'DROP_VEHICLE': dropVehicle,
      'ROUTE_CODE1': routeCode1,
      'STOP_ID1': stopId1,
      'DROP_SLAB_AMOUNT': dropSlabAmount.toString(),
      'PICKUP_SLAB_VAL1': pickupSlabVal1,
      'TOTAL_FEE_AMOUNT': totalFeeAmount.toString(),
    };
  }
}