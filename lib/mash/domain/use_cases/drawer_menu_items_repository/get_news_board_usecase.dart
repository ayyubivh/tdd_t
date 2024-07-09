import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';

@lazySingleton
@injectable
class GetNewsBoardUseCase
    implements UseCase<List<NewsBoardEntity?>, NewsBoardRequest> {
  final DrawerMenuItemsRepository drawerMenuItemsRepository;

  GetNewsBoardUseCase({required this.drawerMenuItemsRepository});

  @override
  Future<List<NewsBoardEntity?>> call(NewsBoardRequest params) async {
    return await drawerMenuItemsRepository.getNewsBoard(params);
  }
}
