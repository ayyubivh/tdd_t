import 'package:equatable/equatable.dart';

class NewsBoardEntity extends Equatable {
  final String? compId;
  final String? content;
  final String? ext;
  final String? coverPage;
  final String? createdBy;
  final String? description;
  final String? newsId;
  final String? newsDate;
  final String? newsTitle;
  final String? userType;
  final String? allS;
  final String? alumni;
  final String? parent;
  final String? staff;
  final String? student;
  final String? category;
  final String? newStatus;

  const NewsBoardEntity({
    required this.compId,
    required this.content,
    required this.ext,
    required this.coverPage,
    required this.createdBy,
    required this.description,
    required this.newsId,
    required this.newsDate,
    required this.newsTitle,
    required this.userType,
    required this.allS,
    required this.alumni,
    required this.parent,
    required this.staff,
    required this.student,
    required this.category,
    required this.newStatus,
  });

  @override
  List<Object?> get props => [compId];
}
