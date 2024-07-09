import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/repositories/drawer_menu_items_repository_impl.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/constant_objects.dart';
import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockDrawerMenuItemsRemoteDataSource mockDrawerMenuItemsRemoteDataSource;
  late DrawerMenuItemsRepositoryImpl drawerMenuItemsRepositoryImpl;
  setUp(() {
    mockDrawerMenuItemsRemoteDataSource = MockDrawerMenuItemsRemoteDataSource();
    drawerMenuItemsRepositoryImpl = DrawerMenuItemsRepositoryImpl(
        drawerMenuItemsRemoteDataSource: mockDrawerMenuItemsRemoteDataSource);
  });
  group('get news board', () {
    test('should return data when the remote data source is successfull',
        () async {
      //Arrange

      when(mockDrawerMenuItemsRemoteDataSource.getNewsBoard(tNewsBoardRequest))
          .thenAnswer((_) async => [tNewsBoardModel]);
      //Act
      final result =
          await drawerMenuItemsRepositoryImpl.getNewsBoard(tNewsBoardRequest);

      //Assert
      expect(result, [tNewsBoardModel]);
      verify(mockDrawerMenuItemsRemoteDataSource
              .getNewsBoard(tNewsBoardRequest))
          .called(1);
    });
    test(
      'should throw Fetch Data Exception if remote data source fails',
      () async {
        // Arrange
        when(mockDrawerMenuItemsRemoteDataSource
                .getNewsBoard(tNewsBoardRequest))
            .thenThrow(FetchDataException());

        // Act and Assert
        await expectLater(
          drawerMenuItemsRepositoryImpl.getNewsBoard(tNewsBoardRequest),
          throwsA(isA<FetchDataException>()),
        );
      },
    );
    test(
        'should return empty list when remote data source returns empty response',
        () async {
      // Arrange
      when(mockDrawerMenuItemsRemoteDataSource.getNewsBoard(tNewsBoardRequest))
          .thenAnswer((_) async => []);

      // Act
      final result =
          await drawerMenuItemsRepositoryImpl.getNewsBoard(tNewsBoardRequest);

      // Assert
      expect(result, isEmpty);
    });
  });
}
