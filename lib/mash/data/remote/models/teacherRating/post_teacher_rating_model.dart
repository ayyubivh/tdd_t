

import 'package:mash/mash/domain/entities/teacher_rating/post_teacher_rating_entity.dart';

class PostTeacherRatingModel extends PostTeacherRatingEntity{
  PostTeacherRatingModel({required super.statusCode, required super.statusMessage, required super.resMessage});

  factory PostTeacherRatingModel.fromJson(Map<String, dynamic> json) {
    return PostTeacherRatingModel(
      statusCode: json['statusCode'],
      statusMessage: json['statusMessage'],
      resMessage: json['resMessage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'statusMessage': statusMessage,
      'resMessage': resMessage,
    };
  }
}