import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/score_board_details_request.dart';
import 'package:mash/mash/domain/entities/dashboard/score_board_details_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

@injectable
@lazySingleton
class GetScoreboardDetailsUsecase
    extends UseCase<ScoreBoardDetailsEntity, ScoreBoardDetailsRequest> {
  final DashBoardRepository dashBoardRepository;

  GetScoreboardDetailsUsecase(this.dashBoardRepository);
  @override
  Future<ScoreBoardDetailsEntity> call(ScoreBoardDetailsRequest params) {
    return dashBoardRepository.getScoreboardDetails(params);
  }
}
