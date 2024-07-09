import 'package:equatable/equatable.dart';

class CompExamTobeRegistedEntity extends Equatable {
  final String? examId;
  final String? examName;
  final String? regStartDate;
  final String? regEndDate;
  final String? examEndDate;
  final String? examDate;

  const CompExamTobeRegistedEntity({
    required this.examId,
    required this.examName,
    required this.regStartDate,
    required this.regEndDate,
    required this.examEndDate,
    required this.examDate,
  });

  @override
  List<Object?> get props => [];
}
