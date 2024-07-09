


import 'package:equatable/equatable.dart';

class FacilitySubUnSubEntity extends Equatable{
  final String? statusCode;
  final String? statusMessage;
  final List<ResTable>? resTable;

  const FacilitySubUnSubEntity({required this.statusCode, required this.statusMessage, required this.resTable});

  @override
  List<Object?> get props => [
    statusCode,
    statusMessage,
    resTable
  ];
}

class ResTable {
  final String status;
  final String message;

  ResTable({
    required this.status,
    required this.message,
  });

  factory ResTable.fromJson(Map<String, dynamic> json) {
    return ResTable(
      status: json['Status'],
      message: json['Message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Status': status,
      'Message': message,
    };
  }
}