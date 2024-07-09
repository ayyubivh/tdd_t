import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/models/dashboard/role_menu_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/scoreboard_details_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/term_details_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';

import '../../../../core/api_provider.dart';
import '../../../domain/entities/dashboard/score_board_details_entity.dart';
import '../../../domain/entities/dashboard/term_details_entity.dart';
import '../request/academic_comp_id_request.dart';
import '../request/role_menu_request.dart';
import '../request/score_board_details_request.dart';
import '../request/term_details_request.dart';
import '../routes/app_remote_routes.dart';

/// Remote data source interface for fetching dashboard-related data.
abstract class DashBoardRemoteDataSource {
  /// Fetches the word and thought of the day from the remote data source.

  /// Returns a [WordThoughtsModel] representing the word and thought of the day.

  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest);
  Future<List<RoleMenuModel>> getRolemenuItems(RoleMenuRequest params);
  Future<List<TermDetailsEntity>> getTermDetails(TermDetailsRequest params);
  Future<ScoreBoardDetailsEntity> getScoreboardDetails(
      ScoreBoardDetailsRequest params);
}

/// Implementation of the [DashBoardRemoteDataSource] interface.
@LazySingleton(as: DashBoardRemoteDataSource)
@injectable
class DashBoardRemoteDataSourceImpl extends DashBoardRemoteDataSource {
  final ApiProvider apiProvider;

  DashBoardRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest) async {
    final data = await apiProvider.get(AppRemoteRoutes.wordAndThougthofTheDay,
        body: wordThoughtRequest.toJson());

    return WordThoughtsModel.fromJson(data);
  }

  @override
  Future<List<RoleMenuModel>> getRolemenuItems(RoleMenuRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.roleMenu, body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    final result = dataList.map((e) => RoleMenuModel.fromjson(e)).toList();
    return result;
  }

  @override
  Future<List<TermDetailsEntity>> getTermDetails(
      TermDetailsRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.termDetails,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    final result = dataList.map((e) => TermDetailsModel.fromJson(e)).toList();

    return result;
  }

  @override
  Future<ScoreBoardDetailsEntity> getScoreboardDetails(
      ScoreBoardDetailsRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.scoreBoardDetails,
        body: params.toJson());
    final result = ScoreBoardDetailsModel.fromJson(data);
    return result;
  }
}
