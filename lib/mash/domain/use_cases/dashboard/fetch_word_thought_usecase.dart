import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

import '../../../data/remote/request/academic_comp_id_request.dart';

@injectable
@lazySingleton
class FetchWordThoughtUseCase
    extends UseCase<WordThoughtsEntity?, AcademicAndCompIdRequest> {
  final DashBoardRepository dashBoardRepository;

  FetchWordThoughtUseCase(this.dashBoardRepository);
  @override
  Future<WordThoughtsEntity?> call(AcademicAndCompIdRequest params) {
    return dashBoardRepository.fetchWordandThoghtOfTheDay(params);
  }
}
