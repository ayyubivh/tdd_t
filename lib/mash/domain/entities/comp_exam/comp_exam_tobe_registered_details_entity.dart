import 'package:equatable/equatable.dart';

class CompExamTobeRegistedEntityDetailsEntity extends Equatable {
  final String? examId;
  final String? examName;
  final String? descriptions;
  final String? regEndDate;
  final String? examDate;
  final String? examRegLink;
  final String? resultDate;
  final String? documentName;
  final String? imgPro;
  final String? ext;
  final String? referenceLink;
  final String? referenceType;
  final int? selfAsmnt1;
  const CompExamTobeRegistedEntityDetailsEntity({
    required this.examId,
    required this.examName,
    required this.descriptions,
    required this.regEndDate,
    required this.examDate,
    required this.examRegLink,
    required this.resultDate,
    required this.documentName,
    required this.imgPro,
    required this.ext,
    required this.referenceLink,
    required this.referenceType,
    required this.selfAsmnt1,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}
