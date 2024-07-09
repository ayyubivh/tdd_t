

import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_api_entity.dart';

class TeacherRatingModel extends TeacherRatingEntity{
  const TeacherRatingModel({required super.teacherId, required super.subjectId, required super.fullName, required super.subjectName, required super.docName, required super.rating, required super.ratedOrNot, required super.primaryMobile, required super.primaryEmail});



  factory TeacherRatingModel.fromJson(Map<String, dynamic> json) {
    return TeacherRatingModel(
      teacherId: json['TEACHER'] ??'',
      subjectId: json['SUBJECT']  ?? '',
      fullName: json['FULL_NAME'] ?? '',
      subjectName: json['SUB_NAME'] ?? '',
      docName: json['DOC_NAME'] ?? '',
      rating: json['RATING'] ?? '',
      ratedOrNot: json['RATED_OR_NOT'] ?? '',
      primaryMobile: json['PRIMARY_MOBILE'] ?? '',
      primaryEmail: json['PRIMARY_EMAIL']  ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TEACHER': teacherId,
      'SUBJECT': subjectId,
      'FULL_NAME': fullName,
      'SUB_NAME': subjectName,
      'DOC_NAME': docName,
      'RATING': rating,
      'RATED_OR_NOT': ratedOrNot,
      'PRIMARY_MOBILE': primaryMobile,
      'PRIMARY_EMAIL': primaryEmail,
    };
  }
}