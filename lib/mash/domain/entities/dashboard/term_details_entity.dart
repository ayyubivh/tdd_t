import 'package:equatable/equatable.dart';

class TermDetailsEntity extends Equatable {
  final String? termId;
  final String? sectionName;
  final String? isTerm;

  const TermDetailsEntity({
    required this.termId,
    required this.sectionName,
    required this.isTerm,
  });

  @override
  List<Object?> get props => [];
}
