import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/profile/student_detail_model.dart';
import 'package:mash/mash/data/remote/models/profile/student_model.dart';
import 'package:mash/mash/data/remote/request/get_user_details_request.dart';
import 'package:mash/mash/data/remote/request/update_profile_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/profile/student_detail_entity.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';

abstract class ProfileDataSource {
  Future<List<StudentEntity>> getSiblings(String compId);
  Future<StudentDetailEntity> getUserDetails(GetUserDetailsRequest request);
  Future<int> updateProfile(UpdateProfileRequest request);
}

@LazySingleton(as: ProfileDataSource)
@injectable
class ProfileDataSourceImpl extends ProfileDataSource {
  final ApiProvider apiProvider;

  ProfileDataSourceImpl(this.apiProvider);

  @override
  Future<List<StudentEntity>> getSiblings(String compId) async {
    final data = await apiProvider
        .get(AppRemoteRoutes.getSiblings, body: {"P_COMP_ID": compId});
    return List<StudentEntity>.from(
        data['resTable'].map((e) => StudentModel.fromJson(e)));
  }

  @override
  Future<StudentDetailEntity> getUserDetails(
      GetUserDetailsRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.getUserDetails,
        body: request.toJson());
    final student = List<StudentDetailEntity>.from(
        data['resTable'].map((e) => StudentDetailModel.fromJson(e)));
    return student.first;
  }

  @override
  Future<int> updateProfile(UpdateProfileRequest request) async {
    try {
      final data = await apiProvider.post(
          AppRemoteRoutes.updateStudentProfile, request.toJson());
      final res = data['statusCode'];
      return res;
    } catch (e) {
      prettyPrint('erro on update profile data source $e');
      throw Exception(e);
    }
  }
}
