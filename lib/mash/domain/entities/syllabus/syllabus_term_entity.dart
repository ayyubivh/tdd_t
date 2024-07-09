import 'package:equatable/equatable.dart';

class SyllabusTermEntity extends Equatable {
  final String? termId;
  final String? termName;
  final String? fromDate;
  final String? toDate;

  const SyllabusTermEntity({
    required this.termId,
    required this.termName,
    required this.fromDate,
    required this.toDate,
  });
  @override
  List<Object?> get props => [termId];
}
