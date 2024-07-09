import 'package:equatable/equatable.dart';

class FacilityInstalmentsEntity extends Equatable {
  final String? instalmentId;
  final String? instalmentName;
  final String? amount;
  final String? startDate;
  final String? endDate;
  final String? dueDate;

  const FacilityInstalmentsEntity(
      {required this.instalmentId,
      required this.instalmentName,
      required this.amount,
      required this.startDate,
      required this.endDate,
      required this.dueDate});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [instalmentId, instalmentName, amount, startDate, endDate, dueDate];
}
