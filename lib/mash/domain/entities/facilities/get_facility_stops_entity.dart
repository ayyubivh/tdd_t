

import 'package:equatable/equatable.dart';

class GetFacilityStopsEntity extends Equatable{
  final String? stops;
  final String? stopDetails;
  final String? stopKilometer;
  final String? stopId;
  final String? noOfSeats;
  final String? seatUsed;
  final String? balance;
  final String? pickDrop;
  final String? pickup;
  final String? dropup;

  const GetFacilityStopsEntity({required this.stops, required this.stopDetails, required this.stopKilometer, required this.stopId, required this.noOfSeats, required this.seatUsed, required this.balance, required this.pickDrop, required this.pickup, required this.dropup});

  @override
  List<Object?> get props => [
    stops,stopId,stopDetails,stopKilometer,noOfSeats,seatUsed,balance,pickDrop,pickup,dropup
  ];
}