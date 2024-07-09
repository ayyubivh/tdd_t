import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/domain/use_cases/academic/get_syllabus_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetSyllabusUseCase getSyllabusUseCase;
  late MockAcademicRepository mockAcademicRepository;

  setUp(() {
    mockAcademicRepository = MockAcademicRepository();
    getSyllabusUseCase =
        GetSyllabusUseCase(academicRepository: mockAcademicRepository);
  });

  test('should fetch syllabus terms from repository', () async {
    // Arrange
    final request = tSyllabusRequest;
    const expectedEntity = tSyllabusModel;
    when(mockAcademicRepository.getSyllabus(request))
        .thenAnswer((_) async => [expectedEntity]);

    // Act
    final result = await getSyllabusUseCase(request);

    // Assert
    expect(result, equals([expectedEntity]));
    verify(mockAcademicRepository.getSyllabus(request)).called(1);
  });

  test('should throw FetchDataException when repository call fails', () async {
    // Arrange
    when(mockAcademicRepository.getSyllabus(tSyllabusRequest))
        .thenThrow(FetchDataException());

    // Act and Assert
    expect(() async => await getSyllabusUseCase(tSyllabusRequest),
        throwsA(isA<FetchDataException>()));
  });

  test('should throw Exception when repository call returns empty list',
      () async {
    // Arrange
    when(mockAcademicRepository.getSyllabus(tSyllabusRequest))
        .thenAnswer((_) async => []);

    // Act
    final result = await getSyllabusUseCase.call(tSyllabusRequest);

    // Assert
    expect(result, []);
  });
}
