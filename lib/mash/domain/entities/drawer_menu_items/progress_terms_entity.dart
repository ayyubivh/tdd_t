import 'package:equatable/equatable.dart';

class ProgressTermsEntity extends Equatable {
  final String classId;
  final String termId;
  final String sectionName;

  const ProgressTermsEntity({
    required this.classId,
    required this.termId,
    required this.sectionName,
  });

  @override
  List<Object?> get props => [];
}
