import 'package:equatable/equatable.dart';

class VehicleLocationEntity extends Equatable {
  final String status;
  final double latitude;
  final double longitude;
  String? time;
  String? distance;

  VehicleLocationEntity(
      {required this.status,
      required this.latitude,
      required this.longitude,
      this.distance = "0 Min",
      this.time = "0 Hr"});

  @override
  List<Object?> get props => [status, latitude, longitude];
}
