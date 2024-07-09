import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/repositories/auth_repository_impl.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/constant_objects.dart';
import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockAuthRemoteDataSource mockAuthRemoteDataSource;
  late AuthRepositoryImpl authRepositoryImpl;
  late MockConnectionChecker connectionChecker;
  late MockAuthLocalDataSource mockAuthLocalDataSource;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    connectionChecker = MockConnectionChecker();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    authRepositoryImpl = AuthRepositoryImpl(connectionChecker,
        authRemoteDataSource: mockAuthRemoteDataSource,
        authLocalDataSource: mockAuthLocalDataSource);
  });
  group('get concreted', () {
    test('should check if the device is online on signIn', () async {
      //Arrange
      when(connectionChecker.isConnected).thenAnswer((_) async => true);
      when(mockAuthRemoteDataSource.login(tLoginRequest))
          .thenAnswer((_) async => tAuthModel);

      when(mockAuthLocalDataSource.saveUserToken('token'))
          .thenAnswer((realInvocation) async => any);

      //Act
      authRepositoryImpl.login(tLoginRequest);

      //Assert
      verify(connectionChecker.isConnected);
    });

    test(
        'should return user data data when the call to login in remote source is successful',
        () async {
      //Arrange
      when(connectionChecker.isConnected).thenAnswer((_) async => true);
      when(mockAuthRemoteDataSource.login(tLoginRequest))
          .thenAnswer((_) async => tAuthModel);

      when(mockAuthLocalDataSource.saveUserToken('token'))
          .thenAnswer((realInvocation) async => any);

      //Act
      final result = await authRepositoryImpl.login(tLoginRequest);

      //Assert
      expect(result, tAuthModel);
    });
    test(
        'login method should throw NetworkException when no network connection',
        () async {
      // Arrange

      when(connectionChecker.isConnected).thenAnswer((_) async => false);

      // Act & Assert
      expect(
        () async => await authRepositoryImpl.login(tLoginRequest),
        throwsA(isA<NetWorkException>()),
      );

      // Verify that no interactions occur with remote or local data sources
      verifyZeroInteractions(mockAuthRemoteDataSource);
      verifyZeroInteractions(mockAuthLocalDataSource);
    });
  });
}
