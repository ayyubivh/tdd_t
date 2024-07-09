import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiProvider mockApiProvider;
  late AcademicRemoteDataSourceImpl academicRemoteDataSourceImpl;

  setUp(() {
    mockApiProvider = MockApiProvider();
    academicRemoteDataSourceImpl =
        AcademicRemoteDataSourceImpl(mockApiProvider);
  });

  group('getSyllabusTerms', () {
    test('should perform a POST request to the correct url', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.syllabusTerms;
      final Map<String, dynamic> syllabusTermJson = json
          .decode(fixture('academic/syllabus/syllabus_terms_response.json'));
      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
        "resTable": [
          syllabusTermJson,
        ]
      };

      when(mockApiProvider.post(expectedUrl, tSyllabusTermsRequest.toJson()))
          .thenAnswer((_) async => fakeResponse);

      // Act
      final result = await academicRemoteDataSourceImpl
          .getSyllabusTerms(tSyllabusTermsRequest);

      // Assert
      expect(result, [tSyllabusTermsModel]);
    });

    test('should throw a FetchDataException on non-200 status code', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.syllabusTerms;
      when(mockApiProvider.post(expectedUrl, tSyllabusTermsRequest.toJson()))
          .thenThrow(FetchDataException('test error found'));

      // Act
      final call = academicRemoteDataSourceImpl.getSyllabusTerms;

      // Assert
      expect(() => call(tSyllabusTermsRequest),
          throwsA(isA<FetchDataException>()));
    });
  });
  group('getSyllabus', () {
    test('should perform a POST request to the correct url', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.syllabus;
      final Map<String, dynamic> syllabusTermJson =
          json.decode(fixture('academic/syllabus/syllabus_response.json'));
      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
        "resTable": [
          syllabusTermJson,
        ]
      };

      when(mockApiProvider.post(expectedUrl, tSyllabusRequest.toJson()))
          .thenAnswer((_) async => fakeResponse);

      // Act
      final result =
          await academicRemoteDataSourceImpl.getSyllabus(tSyllabusRequest);

      // Assert
      expect(result, [tSyllabusModel]);
    });

    test('should throw a FetchDataException on non-200 status code', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.syllabus;
      when(mockApiProvider.post(expectedUrl, tSyllabusRequest.toJson()))
          .thenThrow(Exception('test error found'));

      // Act
      final call = academicRemoteDataSourceImpl.getSyllabus;

      // Assert
      expect(() => call(tSyllabusRequest), throwsA(isA<Exception>()));
    });
  });
}
