

import 'package:equatable/equatable.dart';

class PostTeacherRatingEntity extends Equatable{
  int statusCode;
  String statusMessage;
  String resMessage;

  PostTeacherRatingEntity({required this.statusCode,required this.statusMessage, required this.resMessage});

  @override
  List<Object?> get props => [
    statusCode,statusMessage,resMessage
  ];

}