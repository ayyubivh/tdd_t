import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/repositories/academic_repository_impl.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/constant_objects.dart';
import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockAcademicRemoteDataSource mockAcademicRemoteDataSource;
  late AcademicRepositoryImpl academicRepositoryImpl;

  setUp(() {
    mockAcademicRemoteDataSource = MockAcademicRemoteDataSource();
    academicRepositoryImpl =
        AcademicRepositoryImpl(mockAcademicRemoteDataSource);
  });

  group('getSyllabusTerms', () {
    test(
        'should return syllabus terms when the remote data source is successful',
        () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabusTerms(tSyllabusTermsRequest))
          .thenAnswer((_) async => [tSyllabusTermsModel]);
      // Act
      final result =
          await academicRepositoryImpl.getSyllabusTerms(tSyllabusTermsRequest);
      // Assert
      expect(result, [tSyllabusTermsModel]);
      verify(mockAcademicRemoteDataSource
              .getSyllabusTerms(tSyllabusTermsRequest))
          .called(1);
    });

    test('should throw FetchDataException if remote data source fails',
        () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabusTerms(tSyllabusTermsRequest))
          .thenThrow(FetchDataException('Failed to fetch data'));
      // Act and Assert
      expect(
        () async => await academicRepositoryImpl
            .getSyllabusTerms(tSyllabusTermsRequest),
        throwsA(isA<FetchDataException>()),
      );
    });

    test('should throw Exception if response is empty', () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabusTerms(tSyllabusTermsRequest))
          .thenAnswer((_) async => []);
      // Act
      final result =
          await academicRepositoryImpl.getSyllabusTerms(tSyllabusTermsRequest);
      // Assert
      expect(result, []);
    });
  });
  group('getSyllabus', () {
    test(
        'should return syllabus response when the remote data source is successful',
        () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabus(tSyllabusRequest))
          .thenAnswer((_) async => [tSyllabusModel]);
      // Act
      final result = await academicRepositoryImpl.getSyllabus(tSyllabusRequest);
      // Assert
      expect(result, [tSyllabusModel]);
      verify(mockAcademicRemoteDataSource.getSyllabus(tSyllabusRequest))
          .called(1);
    });

    test('should throw FetchDataException if remote data source fails',
        () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabus(tSyllabusRequest))
          .thenThrow(Exception('Failed to fetch data'));
      // Act and Assert
      expect(
        () async => await academicRepositoryImpl.getSyllabus(tSyllabusRequest),
        throwsA(isA<Exception>()),
      );
    });

    test('should throw Exception if response is empty', () async {
      // Arrange
      when(mockAcademicRemoteDataSource.getSyllabus(tSyllabusRequest))
          .thenAnswer((_) async => []);
      // Act
      final result = await academicRepositoryImpl.getSyllabus(tSyllabusRequest);
      // Assert
      expect(result, []);
    });
  });
}
