import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/firebase_database.dart';
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiProvider mockApiProvider;
  late AuthRemoteDataSourceImpl authRemoteDataSourceImpl;
  late FirebaseDatabaseMethods firebaseDatabaseMethods;
  setUp(() {
    mockApiProvider = MockApiProvider();
    firebaseDatabaseMethods = MockFirebaseDatabaseMethods();
    authRemoteDataSourceImpl = AuthRemoteDataSourceImpl(
      mockApiProvider,
      firebaseDatabaseMethods,
    );
  });

  group('Auth Repository Data Source', () {
    group('Sign', () {
      test('should return auth response model when the response code is 200',
          () async {
        // Arrange
        final mockResponse = json.decode(fixture('auth/auth_response.json'));

        when(mockApiProvider.post(
                AppRemoteRoutes.login, tLoginRequest.toJson()))
            .thenAnswer((_) async => mockResponse);

        // Act
        final result = await authRemoteDataSourceImpl.login(tLoginRequest);

        // Assert
        expect(result, isA<AuthResponseModel>());
        // You might want to add further assertions based on the content of the AuthResponseModel
      });

      test('should throw a CredentialFailure on 400 or 401 status code',
          () async {
        //Arrange

        //Act

        //Asser
      });
    });
  });
}
