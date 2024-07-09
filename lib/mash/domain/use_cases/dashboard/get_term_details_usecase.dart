import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/term_details_request.dart';
import 'package:mash/mash/domain/entities/dashboard/term_details_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

@injectable
@lazySingleton
class GetTermDetailsUsecase
    extends UseCase<List<TermDetailsEntity>, TermDetailsRequest> {
  final DashBoardRepository dashBoardRepository;

  GetTermDetailsUsecase(this.dashBoardRepository);
  @override
  Future<List<TermDetailsEntity>> call(TermDetailsRequest params) {
    return dashBoardRepository.getTermDetails(params);
  }
}
