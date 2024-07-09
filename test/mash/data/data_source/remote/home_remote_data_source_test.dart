import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/remote/data_sources/home_remote_data_source.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiProvider mockApiProvider;
  late HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  setUp(() {
    mockApiProvider = MockApiProvider();
    homeRemoteDataSourceImpl =
        HomeRemoteDataSourceImpl(apiProvider: mockApiProvider);
  });

  group('getAddon', () {
    test('should return add-on model when the call is successful', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.addON;
      final request = tAddOnRequest;
      final addOnResponseJson =
          jsonDecode(fixture('home/add_on_response.json'));

      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
        "resTable": [
          addOnResponseJson,
        ]
      };
      when(mockApiProvider.get(expectedUrl, body: request.toJson()))
          .thenAnswer((_) async => fakeResponse);

      // Act
      final result = await homeRemoteDataSourceImpl.getAddon(request);

      // Assert
      expect(result, [tAddOnModel]);
      verify(mockApiProvider.get(expectedUrl, body: request.toJson()))
          .called(1);
      verifyNoMoreInteractions(mockApiProvider);
    });

    test('should throw a FetchDataException on non-200 status code', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.addON;
      when(mockApiProvider.get(expectedUrl, body: tAddOnRequest.toJson()))
          .thenThrow(FetchDataException('test error found'));

      // Act
      final call = homeRemoteDataSourceImpl.getAddon(tAddOnRequest);

      // Assert
      expect(() => call, throwsA(isA<FetchDataException>()));
      verify(mockApiProvider.get(expectedUrl, body: tAddOnRequest.toJson()))
          .called(1);
      verifyNoMoreInteractions(mockApiProvider);
    });
  });

  group('postFeedback', () {
    test('should post feedback successfully', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.feedBackPost;
      final request = tFeedbackRequest;
      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
      };

      when(mockApiProvider.post(expectedUrl, request.toJson()))
          .thenAnswer((_) async => fakeResponse);

      // Act
      await homeRemoteDataSourceImpl.feedBackPost(request);

      // Assert
      verify(mockApiProvider.post(expectedUrl, request.toJson())).called(1);
      verifyNoMoreInteractions(mockApiProvider);
    });
    test('should return expection when status code is not 200', () {
      // Arrange
      const expectedUrl = AppRemoteRoutes.feedBackPost;
      when(mockApiProvider.post(expectedUrl, tFeedbackRequest.toJson()))
          .thenThrow(FetchDataException('test error found'));

      // Act
      final call = homeRemoteDataSourceImpl.feedBackPost(tFeedbackRequest);

      // Assert
      expect(() => call, throwsA(isA<FetchDataException>()));
      verify(mockApiProvider.post(expectedUrl, tFeedbackRequest.toJson()))
          .called(1);
      verifyNoMoreInteractions(mockApiProvider);
    });
  });
}
