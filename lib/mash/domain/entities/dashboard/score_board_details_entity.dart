import 'package:equatable/equatable.dart';

class ScoreBoardDetailsEntity extends Equatable {
  final int? statusCode;
  final String? statusMessage;
  final String? resMessage;
  final List<ScoreBoardDetailsTable> resTable;

  const ScoreBoardDetailsEntity({
    required this.statusCode,
    required this.statusMessage,
    required this.resMessage,
    required this.resTable,
  });

  @override
  List<Object?> get props => [];
}

class ScoreBoardDetailsTable extends Equatable {
  final String? totalMarks;
  final String? obtainedMarks;
  final String? userId;
  final String? studentName;
  final String? className;
  final String? classDivision;
  final String? divisionName;
  final String? subjectCode;
  final String? subjectName;
  final String? examSubCategoryType;

  const ScoreBoardDetailsTable({
    required this.totalMarks,
    required this.obtainedMarks,
    required this.userId,
    required this.studentName,
    required this.className,
    required this.classDivision,
    required this.divisionName,
    required this.subjectCode,
    required this.subjectName,
    required this.examSubCategoryType,
  });

  @override
  List<Object?> get props => [userId];
}
