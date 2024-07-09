import 'package:equatable/equatable.dart';

class HomeWorkReportsEntity extends Equatable {
  final String? description;
  final String? document;
  final String? workType;
  final String? workId;
  final String? createdDate;
  final String? submitDate;
  final String? lateStatus;
  final String? viewStatus;

  const HomeWorkReportsEntity(
     {required this.createdDate,
    required this.description,
    required this.document,
    required this.workType,
    required this.workId,
    required this.submitDate,
    required this.lateStatus,
    required this.viewStatus,
  });

  @override
  List<Object?> get props => [workId];
}
