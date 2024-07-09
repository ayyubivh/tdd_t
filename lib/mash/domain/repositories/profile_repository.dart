import 'package:injectable/injectable.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';

import '../../data/remote/request/get_user_details_request.dart';
import '../../data/remote/request/update_profile_request.dart';
import '../entities/profile/student_detail_entity.dart';

@factoryMethod
abstract class ProfileRepository {
  Future<List<StudentEntity>> getSiblings(String compId);
  Future<int> updateProfile(UpdateProfileRequest request);
  Future<StudentDetailEntity> getUserDetails(GetUserDetailsRequest request);
}
