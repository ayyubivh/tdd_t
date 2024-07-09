import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart';
import 'package:mockito/mockito.dart';
import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetNewsBoardUseCase getNewsBoardUseCase;
  late MockDrawerMenuItemsRepository mockDrawerMenuItemsRepository;
  setUp(() {
    mockDrawerMenuItemsRepository = MockDrawerMenuItemsRepository();
    getNewsBoardUseCase = GetNewsBoardUseCase(
        drawerMenuItemsRepository: mockDrawerMenuItemsRepository);
  });
  test('shold fetch newsboard from the repository', () async {
    final request = tNewsBoardRequest;
    const expectedEntity = tNewsBoardModel;

    //Arrange
    when(mockDrawerMenuItemsRepository.getNewsBoard(request))
        .thenAnswer((_) async => [expectedEntity]);

    //Act
    final result = await getNewsBoardUseCase.call(request);

    //Assert
    expect(result, equals([expectedEntity]));

    // Verify that the repository method was called with the correct parameters
    verify(mockDrawerMenuItemsRepository.getNewsBoard(request)).called(1);
  });

  test('should throw fetch exception when repository call fails', () async {
    //Arrange
    final request = tNewsBoardRequest;
    when(mockDrawerMenuItemsRepository.getNewsBoard(request))
        .thenThrow(FetchDataException());

    //Act
    final result = getNewsBoardUseCase(request);

    // Assert
    expect(result, throwsA(isA<FetchDataException>()));
  });
}
