import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';
 
// Mock the DashBoardRepository

void main() {
  late FetchWordThoughtUseCase fetchWordThoughtUseCase;
  late MockDashBoardRepository mockRepository;

  setUp(() {
    mockRepository = MockDashBoardRepository();
    fetchWordThoughtUseCase = FetchWordThoughtUseCase(mockRepository);
  });

  test('should fetch word and thought of the day from repository', () async {
    // Arrange
    final request = tWordThoughtRequest;
    final expectedEntity = tWordThoughtModel;

    // Mock the repository's fetchWordandThoghtOfTheDay method
    when(mockRepository.fetchWordandThoghtOfTheDay(request))
        .thenAnswer((_) async => expectedEntity);

    // Act
    final result = await fetchWordThoughtUseCase(request);

    // Assert
    expect(result, equals(expectedEntity));

    // Verify that the repository method was called with the correct parameters
    verify(mockRepository.fetchWordandThoghtOfTheDay(request)).called(1);
  });

  test('should throw FetchDataException when repository call fails', () async {
    // Arrange
    final request = tWordThoughtRequest;
    // Mock the repository's fetchWordandThoghtOfTheDay method to throw an exception
    when(mockRepository.fetchWordandThoghtOfTheDay(request))
        .thenThrow(FetchDataException());

    // Act and Assert
    expect(() async => await fetchWordThoughtUseCase(request),
        throwsA(isA<FetchDataException>()));

    // Verify that the repository method was called with the correct parameters
    verify(mockRepository.fetchWordandThoghtOfTheDay(request)).called(1);
  });
}
