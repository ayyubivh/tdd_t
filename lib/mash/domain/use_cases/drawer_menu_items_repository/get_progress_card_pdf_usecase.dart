import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/progress_card_pdf_request.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';

@lazySingleton
@injectable
class GetProgressCardPdfUsecase
    implements UseCase<String, ProgressCardPdfRequest> {
  final DrawerMenuItemsRepository drawerMenuItemsRepository;

  GetProgressCardPdfUsecase({required this.drawerMenuItemsRepository});

  @override
  Future<String> call(ProgressCardPdfRequest params) async {
    return await drawerMenuItemsRepository.getProgressCardPdf(params);
  }
}
