import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/use_cases/home/get_add_on_usecase.dart';
import 'package:mockito/mockito.dart';
import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHomeRepository mockHomeRepository;
  late GetAddOnUsecase getAddOnUsecase;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    getAddOnUsecase = GetAddOnUsecase(homeRepository: mockHomeRepository);
  });

  test(
      'should get add on data from the repository when the homeRepository is successful',
      () async {
    // Arrange
    final request = tAddOnRequest;

    when(mockHomeRepository.getAddon(request))
        .thenAnswer((_) async => [tAddOnModel]);

    // Act
    final result = await getAddOnUsecase.call(request);

    // Assert
    expect(result, [tAddOnModel]);
    verify(mockHomeRepository.getAddon(request));
    verifyNoMoreInteractions(mockHomeRepository);
  });
}
