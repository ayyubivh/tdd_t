import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';

import '../../../../core/hive_service.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';

abstract class AuthLocalDataSource {
  /* This method is used for saving user token which will be retrieving from the successful login response */
  Future<void> saveUserToken(String token);

  /* This method used for saving user response data from successful login response */
  Future<void> saveUserInfo(LoginLocalModel userInfo);

  /* This method used for getting user data saved in hive data base .
  * if the return data type is null the will be no saved records.
  *  */
  Future<LoginResTableEntity?> getUserInfo();
  Future<void> signOut();
}

@LazySingleton(as: AuthLocalDataSource)
@injectable
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final HiveService hiveService;

  AuthLocalDataSourceImpl({required this.hiveService});

  @override
  Future<void> saveUserToken(String token) async {
    try {
      ///clearing box before saving
      await hiveService.clearAllValues<String>(LocalStorageNames.token);

      ///adding token to hive

      await hiveService.addBoxes<String>([token], LocalStorageNames.token);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> saveUserInfo(LoginLocalModel userInfo) async {
    ///checking any previous records in hive data base
    List<LoginLocalModel> getExisting =
        await hiveService.getBoxes<LoginLocalModel>(LocalStorageNames.userInfo);

    if (getExisting.isNotEmpty) {
      /// only saving single user data so clearing all

      /// previous values before adding new user data
      await hiveService
          .clearAllValues<LoginLocalModel>(LocalStorageNames.userInfo);
    }
/*
adding user info to hive
*/
    await hiveService
        .addBoxes<LoginLocalModel>([userInfo], LocalStorageNames.userInfo);
  }

  @override
  Future<LoginResTableEntity?> getUserInfo() async {
    List<LoginLocalModel> getBoxes =
        await hiveService.getBoxes<LoginLocalModel>(LocalStorageNames.userInfo);
    if (getBoxes.isNotEmpty) {
      return getBoxes.first;
    }
    return null;
  }

  @override
  Future<void> signOut() async {
    await hiveService.clearAllValues<String>(LocalStorageNames.token);
    await hiveService
        .clearAllValues<LoginLocalModel>(LocalStorageNames.userInfo);
  }
}
