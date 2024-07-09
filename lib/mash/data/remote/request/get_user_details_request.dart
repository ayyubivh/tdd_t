import 'package:equatable/equatable.dart';

class GetUserDetailsRequest extends Equatable {
  final String userId;
  final String compId;
  final String userType;
  final String academicId;

  const GetUserDetailsRequest(
      {required this.userId,
      required this.compId,
      required this.userType,
      required this.academicId});

  toJson() => {
        "P_USER_ID": userId,
        "P_COMP_ID": compId,
        "P_USER_TYPE": userType,
        "P_ACADEMIC_ID": academicId
      };

  @override
  List<Object> get props => [userId, compId, userType, academicId];
}
