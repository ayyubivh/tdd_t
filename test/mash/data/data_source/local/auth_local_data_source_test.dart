import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late AuthLocalDataSourceImpl authLocalDataSourceImpl;
  late MockHiveService mockHiveService;
  setUp(() {
    mockHiveService = MockHiveService();
    authLocalDataSourceImpl =
        AuthLocalDataSourceImpl(hiveService: mockHiveService);
  });
  group('AuthLocalDataSoruce', () {
    test('should cache the token', () async {
      //Arrange
      when(mockHiveService.addBoxes(['token'], 'token'))
          .thenAnswer((_) async => Future<void>);
      //Act
      await authLocalDataSourceImpl.saveUserToken('token');

      //Assert
      verify(mockHiveService.addBoxes(['token'], 'token')).called(1);
    });
    // group('getUserInfo', () {
    test('should return user info from hive if available', () async {
      final userInfo = LoginLocalModel.fromEntity(tAuthModel.resTable.first);
      when(mockHiveService
              .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo))
          .thenAnswer((_) => Future.value([userInfo]));

      final result = await authLocalDataSourceImpl.getUserInfo();

      expect(result, userInfo);
    });

    group('saveUserInfo', () {
      test('should save the user info to hive when where no previous data',
          () async {
        //Arrange

        final userInfo = LoginLocalModel.fromEntity(tAuthModel.resTable.first);
        when(mockHiveService.addBoxes<LoginLocalModel>(
                [userInfo], LocalStorageNames.userInfo))
            .thenAnswer((_) async => Future<void>);

        ///here returning empty data when existin gata is empty

        when(mockHiveService
                .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo))
            .thenAnswer((_) async => Future.value(<LoginLocalModel>[]));

        //Act

        await authLocalDataSourceImpl.saveUserInfo(userInfo);

        //Assert

        verify(mockHiveService.addBoxes<LoginLocalModel>(
          [userInfo],
          LocalStorageNames.userInfo,
        )).called(1);
      });

      test('should save the user info to hive when  previous data exists',
          () async {
        //Arrange
        final userInfo = LoginLocalModel.fromEntity(tAuthModel.resTable.first);

        ///adding data to hive
        when(mockHiveService.addBoxes<LoginLocalModel>(
                [userInfo], LocalStorageNames.userInfo))
            .thenAnswer((_) async => Future<void>);

        ///returning user info here
        when(mockHiveService
                .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo))
            .thenAnswer((_) async => Future.value(<LoginLocalModel>[userInfo]));

        ///clearing all data in hive
        when(mockHiveService
                .clearAllValues<LoginLocalModel>(LocalStorageNames.userInfo))
            .thenAnswer((_) async => Future<void>);

        //Act

        await authLocalDataSourceImpl.saveUserInfo(userInfo);

        //Assert

        verify(mockHiveService.clearAllValues<LoginLocalModel>(
          LocalStorageNames.userInfo,
        )).called(1);
        verify(mockHiveService.addBoxes<LoginLocalModel>(
          [userInfo],
          LocalStorageNames.userInfo,
        )).called(1);
      });
    });

    test('should save user info from hive if available', () async {
      final userInfo = LoginLocalModel.fromEntity(tAuthModel.resTable.first);
      when(mockHiveService
              .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo))
          .thenAnswer((_) => Future.value([userInfo]));

      final result = await authLocalDataSourceImpl.getUserInfo();

      expect(result, userInfo);
    });
    test('should return null if no user info is available in hive', () async {
      when(mockHiveService
              .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo))
          .thenAnswer((_) => Future.value(<LoginLocalModel>[]));

      final result = await authLocalDataSourceImpl.getUserInfo();

      expect(result, null);
    });
  });
}
