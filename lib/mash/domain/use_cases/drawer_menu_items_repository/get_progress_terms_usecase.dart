import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';

import '../../../data/remote/request/progress_term_request.dart';
import '../../entities/drawer_menu_items/progress_terms_entity.dart';

@lazySingleton
@injectable
class GetProgressTermsUsecase
    implements UseCase<List<ProgressTermsEntity>, ProgressTermRequest> {
  final DrawerMenuItemsRepository drawerMenuItemsRepository;

  GetProgressTermsUsecase({required this.drawerMenuItemsRepository});

  @override
  Future<List<ProgressTermsEntity>> call(ProgressTermRequest params) async {
    return await drawerMenuItemsRepository.getProgressTerms(params);
  }
}
