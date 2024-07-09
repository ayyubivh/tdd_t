import 'package:injectable/injectable.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/remote/request/score_board_details_request.dart';
import 'package:mash/mash/data/remote/request/term_details_request.dart';
import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/score_board_details_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/term_details_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

import '../remote/data_sources/dashboard_remote_data_source.dart';
import '../remote/request/academic_comp_id_request.dart';
import '../remote/request/role_menu_request.dart';

/// Implementation of [DashBoardRepository] responsible for coordinating data flow
/// between remote and local data sources for dashboard-related operations.
@LazySingleton(as: DashBoardRepository)
@injectable
class DashBoardRepoImpl implements DashBoardRepository {
  final ConnectionChecker connectionChecker;
  final DashBoardRemoteDataSource dashBoardDataSource;
  final DashBoardLocalDataSource dashBoardLocalDataSource;

  /// Constructs an instance of [DashBoardRepoImpl] with the provided dependencies.
  DashBoardRepoImpl(
    this.dashBoardDataSource,
    this.connectionChecker,
    this.dashBoardLocalDataSource,
  );

  @override
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    AcademicAndCompIdRequest wordThoughtRequest,
  ) async {
    // Check if the device is connected to the internet
    if (await connectionChecker.isConnected) {
      // Fetch word and thought of the day from the remote data source
      final result = await dashBoardDataSource
          .fetchWordandThoghtOfTheDay(wordThoughtRequest);
      // Save the fetched data to local storage
      await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(result);
      return result;
    } else {
      // If device is offline, fetch data from local storage
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      return result;
    }
  }

  @override
  Future<List<RoleMenuEntity>> getRolemenuItems(RoleMenuRequest params) async {
    return await dashBoardDataSource.getRolemenuItems(params);
  }

  @override
  Future<List<TermDetailsEntity>> getTermDetails(TermDetailsRequest params) {
    return dashBoardDataSource.getTermDetails(params);
  }

  @override
  Future<ScoreBoardDetailsEntity> getScoreboardDetails(
      ScoreBoardDetailsRequest params) {
    return dashBoardDataSource.getScoreboardDetails(params);
  }
}
