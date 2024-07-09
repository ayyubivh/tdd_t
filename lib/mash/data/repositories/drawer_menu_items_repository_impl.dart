import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';
import 'package:mash/mash/data/remote/request/progress_card_pdf_request.dart';
import 'package:mash/mash/data/remote/request/progress_card_request.dart';
import 'package:mash/mash/data/remote/request/progress_term_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_terms_entity.dart';

import '../../domain/repositories/drawer_menu_items_repository.dart';

@LazySingleton(as: DrawerMenuItemsRepository)
@injectable
class DrawerMenuItemsRepositoryImpl implements DrawerMenuItemsRepository {
  final DrawerMenuItemsRemoteDataSource drawerMenuItemsRemoteDataSource;

  DrawerMenuItemsRepositoryImpl(
      {required this.drawerMenuItemsRemoteDataSource});
  @override
  Future<List<NewsBoardEntity?>> getNewsBoard(NewsBoardRequest params) async {
    final res = await drawerMenuItemsRemoteDataSource.getNewsBoard(params);
    return res;
  }

  @override
  Future<List<ProgressTermsEntity>> getProgressTerms(
      ProgressTermRequest params) {
    return drawerMenuItemsRemoteDataSource.getProgressTerms(params);
  }

  @override
  Future<List<ProgressCardEntity>> getProgressCard(ProgressCardRequest params) {
    return drawerMenuItemsRemoteDataSource.getProgressCard(params);
  }

  @override
  Future<String> getProgressCardPdf(ProgressCardPdfRequest params) {
    return drawerMenuItemsRemoteDataSource.getProgressCardPdf(params);
  }
}
