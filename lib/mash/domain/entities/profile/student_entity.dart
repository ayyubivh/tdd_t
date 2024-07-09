import 'package:equatable/equatable.dart';

class StudentEntity extends Equatable {
  final String userId;
  final String studentName;
  final String divisionName;
  final String profilePhoto;
  final String className;

  const StudentEntity({
    required this.divisionName,
    required this.profilePhoto,
    required this.userId,
    required this.studentName,
    required this.className,
  });

  @override
  List<Object?> get props => [userId];
}
