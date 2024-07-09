import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/auth/verify_user_model.dart';
import 'package:mash/mash/data/remote/request/login_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../../../../core/firebase_database.dart';
import '../../../../core/pretty_printer.dart';
import '../../../domain/entities/auth/verify_user_entity.dart';
import '../models/auth/auth_response_model.dart';
import '../request/send_otp_request.dart';
import '../request/update_password_request.dart';
import '../request/validate_otp_request.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseEntity> login(LoginRequest request);
  Future<void> signOut();

  Future<VerifyUserEntity> verifyUser(String userId);
  Future<int> sendForgotPassWordOtp(SendOtpRequest params);

  Future<String> validateOtp(ValidatOtpRequest params);
  Future<String> updatePassword(UpdatePasswordRequest params);
}

@LazySingleton(as: AuthRemoteDataSource)
@injectable
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final ApiProvider apiProvider;
  late FirebaseAuth firebaseAuth;
  final FirebaseDatabaseMethods firebaseDatabase;

  AuthRemoteDataSourceImpl(this.apiProvider, this.firebaseDatabase) {
    firebaseAuth = FirebaseAuth.instance;
  }

  @override
  Future<AuthResponseEntity> login(LoginRequest request) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.login, request.toJson());
    var userModel = AuthResponseModel.fromJson(data);
    // try {
    //   ////signInAnonymously in firebase to access  firestore database
    //   final userCredential = await firebaseAuth.signInAnonymously();

    //   ///checking in  firestore weather the user data exist or not in firestore database
    //   QuerySnapshot<Map<String, dynamic>> checkExisting = await firebaseDatabase
    //       .getUserInfo(userModel.resTable.first.usrId ?? '');
    //   var fcmToken = await FirebaseMessaging.instance.getToken();
    //   if (checkExisting.docs.isEmpty) {
    //     var userDataJson =
    //         LoginResTableModel.fromEntity(userModel.resTable.first).toJson();

    //     ///updating fcm token in user data
    //     userDataJson['fcm_token'] = fcmToken;
    //     await firebaseDatabase.addUserInfo(userDataJson);
    //   } else {
    //     String id = checkExisting.docs.first.id;

    //     ///updating fcm token in user data
    //     await firebaseDatabase
    //         .updateUserInfo(id: id, data: {'fcm_token': fcmToken});
    //   }
    // } on FirebaseAuthException catch (e) {
    //   switch (e.code) {
    //     case "invalid-custom-token":
    //       throw BadRequestException(
    //           "The supplied token is not a Firebase custom auth token.");

    //     case "custom-token-mismatch":
    //       throw BadRequestException(
    //           "The supplied token is for a different Firebase project.");

    //     default:
    //       throw BadRequestException(e.toString());
    //   }
    // }

    prettyPrint(data.toString());
    return userModel;
  }

  @override
  Future<void> signOut() async {
    await apiProvider.post(AppRemoteRoutes.signOut, {});
  }

  @override
  Future<VerifyUserEntity> verifyUser(String userId) async {
    final data = await apiProvider.get(AppRemoteRoutes.verifyUser, body: {
      'P_USER_ID': userId,
    });
    return VerifyUserModel.fromJson(data);
  }

  @override
  Future<int> sendForgotPassWordOtp(SendOtpRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.sendOtp, params.toJson());
    return data['statusCode'];
  }

  @override
  Future<String> updatePassword(UpdatePasswordRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.validateOtp,
        body: params.toJson());
    return data['resMessage'];
  }

  @override
  Future<String> validateOtp(ValidatOtpRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.updatePassword, params.toJson());
    return data['resMessage'];
  }
}
