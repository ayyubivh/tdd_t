import 'package:equatable/equatable.dart';

class ClassDetailsEntity extends Equatable {
  final String? className;
  final String? classId;
  final String? academicId;
  final String? noSeats;
  final String? order;
  final String? mediumId;
  final String? isActive;

  const ClassDetailsEntity({
    required this.className,
    required this.classId,
    required this.academicId,
    required this.noSeats,
    required this.order,
    required this.mediumId,
    required this.isActive,
  });

  @override
  List<Object?> get props => [classId];
}
