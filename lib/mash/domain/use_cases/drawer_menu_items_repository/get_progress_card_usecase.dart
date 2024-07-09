import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/progress_card_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';

@lazySingleton
@injectable
class GetProgressCardUsecase
    implements UseCase<List<ProgressCardEntity>, ProgressCardRequest> {
  final DrawerMenuItemsRepository drawerMenuItemsRepository;

  GetProgressCardUsecase({required this.drawerMenuItemsRepository});

  @override
  Future<List<ProgressCardEntity>> call(ProgressCardRequest params) async {
    return await drawerMenuItemsRepository.getProgressCard(params);
  }
}
