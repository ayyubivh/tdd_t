import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHiveService mockHiveService;
  late DashBoardLocalDataSource dashBoardLocalDataSource;

  setUp(() {
    mockHiveService = MockHiveService();
    dashBoardLocalDataSource =
        DashBoardLocalDataSourceImpl(hiveService: mockHiveService);
  });
  group('DashboardLocalDataSource ', () {
    group('get word thought', () {
      test('should return word thought hive model from hive', () async {
        final data = WordThoughtsHiveModel.fromEntity(tWordThoughtModel);
        //Arrange
        when(mockHiveService
                .getBoxes<WordTableHiveModel>(LocalStorageNames.dashBoard))
            .thenAnswer((_) async => Future.value([data]));
        //Act
        final result =
            await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
        //Assert
        expect(result, data);
      });
    });
    group("save word thought", () {
      test('should save the data when the hive table is empty', () async {
        //Arrange
        final data = WordThoughtsHiveModel.fromEntity(tWordThoughtModel);
        when(mockHiveService
                .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard))
            .thenAnswer((_) async => Future.value(<WordThoughtsHiveModel>[]));
        when(mockHiveService.addBoxes([data], LocalStorageNames.dashBoard))
            .thenAnswer((_) => Future<void>);

        //Act
        await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(
            WordThoughtsHiveModel.fromEntity(tWordThoughtModel));

        //Assert
        verify(mockHiveService.addBoxes([data], LocalStorageNames.dashBoard))
            .called(1);
      });
      test('should save the data to hive when  previous data exists', () async {
        //Arrange

        final data = WordThoughtsHiveModel.fromEntity(tWordThoughtModel);
        when(mockHiveService.addBoxes<WordThoughtsHiveModel>(
                [data], LocalStorageNames.dashBoard))
            .thenAnswer((_) => Future<void>);
        when(mockHiveService
                .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard))
            .thenAnswer(
                (_) async => Future.value(<WordThoughtsHiveModel>[data]));

        when(mockHiveService.clearAllValues<WordThoughtsHiveModel>(
                LocalStorageNames.dashBoard))
            .thenAnswer((_) async => Future<void>);
        //Act

        await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(
            WordThoughtsHiveModel.fromEntity(tWordThoughtModel));

        //Assert
        verify(mockHiveService.clearAllValues<WordThoughtsHiveModel>(
          LocalStorageNames.dashBoard,
        )).called(1);
        verify(mockHiveService.addBoxes([data], LocalStorageNames.dashBoard))
            .called(1);
      });
    });

    test('should data info from hive if available', () async {
      // Arrange
      when(mockHiveService
              .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard))
          .thenAnswer((_) => Future.value([twordThoughtsHiveModel]));
      //Act
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      //Assert
      expect(result, twordThoughtsHiveModel);
    });
    test('should data info from hive if is not available', () async {
      // Arrange
      when(mockHiveService
              .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard))
          .thenAnswer((_) => Future.value(<WordThoughtsHiveModel>[]));
      //Act
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      //Assert
      expect(result, null);
    });
  });
}
