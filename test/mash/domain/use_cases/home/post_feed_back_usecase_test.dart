import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/use_cases/home/post_feed_use_case.dart';
import 'package:mockito/mockito.dart';
import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHomeRepository mockHomeRepository;

  late PostfeedbackUsecase postfeedbackUsecase;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    postfeedbackUsecase =
        PostfeedbackUsecase(homeRepository: mockHomeRepository);
  });

  test(
      'should post feedback to the repository when the homeRepository is successful',
      () async {
    // Arrange
    final request = tFeedbackRequest;

    when(mockHomeRepository.feedBackPost(request))
        .thenAnswer((_) async => Future.value());

    // Act
    await postfeedbackUsecase.call(request);

    // Assert
    verify(mockHomeRepository.feedBackPost(request));
    verifyNoMoreInteractions(mockHomeRepository);
  });
}
