import 'package:injectable/injectable.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

/// Abstract class defining the local data source interface for fetching and saving word thoughts.
abstract class DashBoardLocalDataSource {
  /// Fetches the word thought of the day from local storage.
  Future<WordThoughtsHiveModel?> fetchWordandThoghtOfTheDay();

  /// Saves the word thought of the day to local storage.
  Future<void> saveWordandThoghtOfTheDay(WordThoughtsEntity wordThoughtsModel);
}

/// Implementation of [DashBoardLocalDataSource].
@LazySingleton(as: DashBoardLocalDataSource)
@injectable
class DashBoardLocalDataSourceImpl extends DashBoardLocalDataSource {
  final HiveService hiveService;

  ///  Constructs an instance of [DashBoardLocalDataSourceImpl] with the provided [hiveService].
  DashBoardLocalDataSourceImpl({required this.hiveService});

  @override
  Future<WordThoughtsHiveModel?> fetchWordandThoghtOfTheDay() async {
    // Fetches the word thought of the day from local storage.
    final List<WordThoughtsHiveModel> result = await hiveService
        .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard);

    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }

  @override
  Future<void> saveWordandThoghtOfTheDay(
      WordThoughtsEntity wordThoughtsModel) async {
    // Fetches existing data from local storage.
    try {
      final List<WordThoughtsHiveModel> getExistingData = await hiveService
          .getBoxes<WordThoughtsHiveModel>(LocalStorageNames.dashBoard);

      // Clears previous data from local storage if it exists.
      if (getExistingData.isNotEmpty) {
        await hiveService
            .clearAllValues<WordThoughtsHiveModel>(LocalStorageNames.dashBoard);
      }

      // Adds new word thought of the day to local storage.
      await hiveService.addBoxes<WordThoughtsHiveModel>([
        WordThoughtsHiveModel.fromEntity(wordThoughtsModel),
      ], LocalStorageNames.dashBoard);
    } catch (e) {
      prettyPrint(
          'error on here local database of the dashboard word thought hive ');
    }
  }
}
