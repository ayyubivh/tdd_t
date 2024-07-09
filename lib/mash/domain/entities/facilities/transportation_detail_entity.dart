
import 'package:equatable/equatable.dart';

class TransportationDetailEntity extends Equatable{
  final String? userId;
  final String? pickupStop;
  final String? pickupStopKm;
  final String? pickupRoute;
  final String? pickupVehicle;
  final String? driverName;
  final String? helperName;
  final String? dropStop;
  final String? dropStopKm;
  final String? totalKm;
  final String? driverMob;
  final String? helperMob;
  final String? dropRoute;
  final String? dropVehicle;
  final String? dropDriver;
  final String? dropHelper;
  final String? dropDriverMob;
  final String? dropHelperMob;
  final String? usrId;
  final String? admisNo;
  final String? studentNm;
  final String? address;
  final String? fatherNm;
  final String? phone;
  final String? divisionName;
  final String? mobile;
  final String? className;

  const TransportationDetailEntity({required this.userId, required this.pickupStop, required this.pickupStopKm, required this.pickupRoute, required this.pickupVehicle, required this.driverName, required this.helperName, required this.dropStop, required this.dropStopKm, required this.totalKm, required this.driverMob, required this.helperMob, required this.dropRoute, required this.dropVehicle, required this.dropDriver, required this.dropHelper, required this.dropDriverMob, required this.dropHelperMob, required this.usrId, required this.admisNo, required this.studentNm, required this.address, required this.fatherNm, required this.phone, required this.divisionName, required this.mobile, required this.className});

  @override
  // TODO: implement props
  List<Object?> get props => [
    userId,
    pickupStop,
    pickupStopKm,
    pickupRoute,
    pickupVehicle,
    driverName,
    helperName,
    dropStop,
    dropStopKm,
    totalKm,
    driverMob,
    helperMob,
    dropRoute,
    dropVehicle,
    dropDriver,
    dropHelper,
    dropDriverMob,
    dropHelperMob,
    usrId,
    admisNo,
    studentNm,
    address,
    fatherNm,
    phone,
    divisionName,
    mobile,
    className,
  ];
}