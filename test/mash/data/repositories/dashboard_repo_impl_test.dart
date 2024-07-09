import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/repositories/dash_board_repository_impl.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/constant_objects.dart';
import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockDashBoardRemoteDataSource mockDashBoardRemoteDataSource;
  late DashBoardRepoImpl dashBoardRepoImpl;
  late MockConnectionChecker mockConnectionChecker;
  late MockDashBoardLocalDataSource mockDashBoardLocalDataSource;

  setUp(() {
    mockConnectionChecker = MockConnectionChecker();
    mockDashBoardLocalDataSource = MockDashBoardLocalDataSource();
    mockDashBoardRemoteDataSource = MockDashBoardRemoteDataSource();
    dashBoardRepoImpl = DashBoardRepoImpl(
      mockDashBoardRemoteDataSource,
      mockConnectionChecker,
      mockDashBoardLocalDataSource,
    );
  });

  group('fetchWordandThoghtOfTheDay', () {
    group('when device is online', () {
      setUp(() {
        when(mockConnectionChecker.isConnected).thenAnswer((_) async => true);
      });

      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // Arrange

          when(mockDashBoardRemoteDataSource
                  .fetchWordandThoghtOfTheDay(tWordThoughtRequest))
              .thenAnswer((_) async => tWordThoughtModel);

          // Act
          final result = await dashBoardRepoImpl
              .fetchWordandThoghtOfTheDay(tWordThoughtRequest);

          // Assert
          expect(result, tWordThoughtModel);
          verify(mockDashBoardRemoteDataSource
                  .fetchWordandThoghtOfTheDay(tWordThoughtRequest))
              .called(1);
        },
      );

      test(
        'should cache the data when internet is connected',
        () async {
          // Arrange
          when(mockDashBoardRemoteDataSource
                  .fetchWordandThoghtOfTheDay(tWordThoughtRequest))
              .thenAnswer((_) async => tWordThoughtModel);
          when(mockDashBoardLocalDataSource
                  .saveWordandThoghtOfTheDay(tWordThoughtModel))
              .thenAnswer((_) async => twordThoughtsHiveModel);

          // Act
          await dashBoardRepoImpl
              .fetchWordandThoghtOfTheDay(tWordThoughtRequest);

          // Assert
          verify(mockDashBoardRemoteDataSource
                  .fetchWordandThoghtOfTheDay(tWordThoughtRequest))
              .called(1);
          verify(mockDashBoardLocalDataSource
                  .saveWordandThoghtOfTheDay(tWordThoughtModel))
              .called(1);
        },
      );

      test(
          'should throw FetchDataException when internet is connected but remote call fails',
          () async {
        // Arrange
        when(mockConnectionChecker.isConnected).thenAnswer((_) async => true);
        when(mockDashBoardRemoteDataSource
                .fetchWordandThoghtOfTheDay(tWordThoughtRequest))
            .thenThrow(FetchDataException());

        // Act and Assert
        await expectLater(
          dashBoardRepoImpl.fetchWordandThoghtOfTheDay(tWordThoughtRequest),
          throwsA(isA<FetchDataException>()),
        );
      });
    });

    group('when device is offline', () {
      setUp(() {
        when(mockConnectionChecker.isConnected).thenAnswer((_) async => false);
      });

      test(
        'should return local cached data when the call to local data source is successful',
        () async {
          // Arrange
          when(mockDashBoardLocalDataSource.fetchWordandThoghtOfTheDay())
              .thenAnswer((_) async => twordThoughtsHiveModel);

          // Act
          final result = await dashBoardRepoImpl
              .fetchWordandThoghtOfTheDay(tWordThoughtRequest);

          // Assert
          expect(result, twordThoughtsHiveModel);
          verifyZeroInteractions(mockDashBoardRemoteDataSource);
        },
      );

      test(
        'should throw FetchDataException if local data source fails',
        () async {
          // Arrange
          when(mockDashBoardLocalDataSource.fetchWordandThoghtOfTheDay())
              .thenThrow(FetchDataException());

          // Act and Assert
          await expectLater(
            dashBoardRepoImpl.fetchWordandThoghtOfTheDay(tWordThoughtRequest),
            throwsA(isA<FetchDataException>()),
          );
          verifyZeroInteractions(mockDashBoardRemoteDataSource);
        },
      );
    });
  });
}
