import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/role_menu_request.dart';
import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

@injectable
@lazySingleton
class GetRoleMenuUsecase
    extends UseCase<List<RoleMenuEntity>, RoleMenuRequest> {
  final DashBoardRepository dashBoardRepository;

  GetRoleMenuUsecase(this.dashBoardRepository);
  @override
  Future<List<RoleMenuEntity>> call(RoleMenuRequest params) {
    return dashBoardRepository.getRolemenuItems(params);
  }
}
