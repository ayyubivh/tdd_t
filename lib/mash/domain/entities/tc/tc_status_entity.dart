import 'package:equatable/equatable.dart';

class TcStatusEntity extends Equatable {
  final String tcId;
  final String? userId;
  final String? studentName;
  final String? className;
  final String? admissionNo;
  final String? appliedDate;
  final String? reason;
  final String? approvalStatus;
  final String? dueAmount;
  final String? remarks;
  final String? expectedRelieveDate;
  final String? cancelStatus;
  final String? photoPath;

  const TcStatusEntity(
      {required this.tcId,
      required this.userId,
      required this.studentName,
      required this.className,
      required this.admissionNo,
      required this.appliedDate,
      required this.reason,
      required this.approvalStatus,
      required this.dueAmount,
      required this.remarks,
      required this.expectedRelieveDate,
      required this.cancelStatus,
      required this.photoPath});

  @override
  List<Object> get props => [tcId];
}
