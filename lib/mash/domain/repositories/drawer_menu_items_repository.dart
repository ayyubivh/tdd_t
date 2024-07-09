import 'package:mash/mash/data/remote/request/progress_card_request.dart';
import 'package:mash/mash/data/remote/request/progress_term_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_terms_entity.dart';

import '../../data/remote/request/news_board_request.dart';
import '../../data/remote/request/progress_card_pdf_request.dart';

abstract interface class DrawerMenuItemsRepository {
  Future<List<NewsBoardEntity?>> getNewsBoard(NewsBoardRequest params);

  Future<List<ProgressTermsEntity>> getProgressTerms(
      ProgressTermRequest params);

  Future<List<ProgressCardEntity>> getProgressCard(ProgressCardRequest params);
  Future<String> getProgressCardPdf(ProgressCardPdfRequest params);
}
