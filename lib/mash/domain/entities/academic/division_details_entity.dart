import 'package:equatable/equatable.dart';

class DivisionEntityDetailsEnitity extends Equatable {
  final String? divisionName;
  final String? noOfSeats;
  final String? divisionId;
  final String? order;

  const DivisionEntityDetailsEnitity({
    required this.divisionName,
    required this.noOfSeats,
    required this.divisionId,
    required this.order,
  });

  @override
  List<Object?> get props => [divisionId];
}
