import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetSyllabusTermsUseCase getSyllabusTermsUseCase;
  late MockAcademicRepository mockAcademicRepository;

  setUp(() {
    mockAcademicRepository = MockAcademicRepository();
    getSyllabusTermsUseCase =
        GetSyllabusTermsUseCase(academicRepository: mockAcademicRepository);
  });

  test('should fetch syllabus terms from repository', () async {
    // Arrange
    final request = tSyllabusTermsRequest;
    const expectedEntity = tSyllabusTermsModel;
    when(mockAcademicRepository.getSyllabusTerms(request))
        .thenAnswer((_) async => [expectedEntity]);

    // Act
    final result = await getSyllabusTermsUseCase(request);

    // Assert
    expect(result, equals([expectedEntity]));
    verify(mockAcademicRepository.getSyllabusTerms(request)).called(1);
  });

  test('should throw FetchDataException when repository call fails', () async {
    // Arrange
    when(mockAcademicRepository.getSyllabusTerms(tSyllabusTermsRequest))
        .thenThrow(FetchDataException());

    // Act and Assert
    expect(() async => await getSyllabusTermsUseCase(tSyllabusTermsRequest),
        throwsA(isA<FetchDataException>()));
  });

  test('should throw Exception when repository call returns empty list',
      () async {
    // Arrange
    when(mockAcademicRepository.getSyllabusTerms(tSyllabusTermsRequest))
        .thenAnswer((_) async => []);

    // Act
    final result = await getSyllabusTermsUseCase.call(tSyllabusTermsRequest);
    // Assert
    expect(result, []);
  });
}
