

import 'package:mash/mash/domain/entities/facilities/transportation_detail_entity.dart';

class TransportationDetailModel extends TransportationDetailEntity{
  const TransportationDetailModel({required super.userId, required super.pickupStop, required super.pickupStopKm, required super.pickupRoute, required super.pickupVehicle, required super.driverName, required super.helperName, required super.dropStop, required super.dropStopKm, required super.totalKm, required super.driverMob, required super.helperMob, required super.dropRoute, required super.dropVehicle, required super.dropDriver, required super.dropHelper, required super.dropDriverMob, required super.dropHelperMob, required super.usrId, required super.admisNo, required super.studentNm, required super.address, required super.fatherNm, required super.phone, required super.divisionName, required super.mobile, required super.className});

  factory TransportationDetailModel.fromJson(Map<String, dynamic> json) {
    return TransportationDetailModel(
      userId: json['USER_ID'],
      pickupStop: json['PICKUP_STOP'],
      pickupStopKm: json['PICKUP_STOPKM'],
      pickupRoute: json['PICKUP_ROUTE'],
      pickupVehicle: json['PICKUP_VEHICLE'],
      driverName: json['DRIVER_NAME'],
      helperName: json['HELPER_NAME'],
      dropStop: json['DROP_STOP'],
      dropStopKm: json['DROP_STOPKM'],
      totalKm: json['TOTAL_KM'],
      driverMob: json['DRIVER_MOB'],
      helperMob: json['HELPER_MOB'],
      dropRoute: json['DROP_ROUTE'],
      dropVehicle: json['DROP_VEHICLE'],
      dropDriver: json['DROP_DRIVER'],
      dropHelper: json['DROP_HELPER'],
      dropDriverMob: json['DROP_DRIVER_MOB'],
      dropHelperMob: json['DROPHELPER_MOB'],
      usrId: json['USR_ID'],
      admisNo: json['ADMIS_NO'],
      studentNm: json['STUDENT_NM'],
      address: json['ADDRESS'],
      fatherNm: json['FATHER_NM'],
      phone: json['PHONE'],
      divisionName: json['DIVISION_NAME'],
      mobile: json['MOBILE'],
      className: json['CLASS_NAME'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'USER_ID': userId,
      'PICKUP_STOP': pickupStop,
      'PICKUP_STOPKM': pickupStopKm,
      'PICKUP_ROUTE': pickupRoute,
      'PICKUP_VEHICLE': pickupVehicle,
      'DRIVER_NAME': driverName,
      'HELPER_NAME': helperName,
      'DROP_STOP': dropStop,
      'DROP_STOPKM': dropStopKm,
      'TOTAL_KM': totalKm,
      'DRIVER_MOB': driverMob,
      'HELPER_MOB': helperMob,
      'DROP_ROUTE': dropRoute,
      'DROP_VEHICLE': dropVehicle,
      'DROP_DRIVER': dropDriver,
      'DROP_HELPER': dropHelper,
      'DROP_DRIVER_MOB': dropDriverMob,
      'DROPHELPER_MOB': dropHelperMob,
      'USR_ID': usrId,
      'ADMIS_NO': admisNo,
      'STUDENT_NM': studentNm,
      'ADDRESS': address,
      'FATHER_NM': fatherNm,
      'PHONE': phone,
      'DIVISION_NAME': divisionName,
      'MOBILE': mobile,
      'CLASS_NAME': className,
    };
  }
}