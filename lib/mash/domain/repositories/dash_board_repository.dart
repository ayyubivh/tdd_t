import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

import '../../data/remote/request/academic_comp_id_request.dart';
import '../../data/remote/request/role_menu_request.dart';
import '../../data/remote/request/score_board_details_request.dart';
import '../../data/remote/request/term_details_request.dart';
import '../entities/dashboard/score_board_details_entity.dart';
import '../entities/dashboard/term_details_entity.dart';

abstract interface class DashBoardRepository {
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    AcademicAndCompIdRequest wordThoughtRequest,
  );
  Future<List<RoleMenuEntity>> getRolemenuItems(RoleMenuRequest params);
  Future<List<TermDetailsEntity>> getTermDetails(TermDetailsRequest params);

  Future<ScoreBoardDetailsEntity> getScoreboardDetails(
      ScoreBoardDetailsRequest params);
}
