import 'package:equatable/equatable.dart';

class SyllabusEntity extends Equatable {
  final String? subjectId;
  final String? subjectName;
  final String? chapterIds;
  final List<String> chapterNames;

  const SyllabusEntity({
    required this.subjectId,
    required this.subjectName,
    required this.chapterIds,
    required this.chapterNames,
  });

  @override
  List<Object?> get props => [subjectId];
}
