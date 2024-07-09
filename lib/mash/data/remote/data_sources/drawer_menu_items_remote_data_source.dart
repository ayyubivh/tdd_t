import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/news_board_model.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/progress_card_model.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/progress_term_model.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';
import '../../../domain/entities/drawer_menu_items/progress_card_entity.dart';
import '../../../domain/entities/drawer_menu_items/progress_terms_entity.dart';
import '../request/progress_card_pdf_request.dart';
import '../request/progress_card_request.dart';
import '../request/progress_term_request.dart';
import '../routes/app_remote_routes.dart';

abstract interface class DrawerMenuItemsRemoteDataSource {
  Future<List<NewsBoardModel?>> getNewsBoard(NewsBoardRequest params);
  Future<List<ProgressTermsEntity>> getProgressTerms(
      ProgressTermRequest params);
  Future<List<ProgressCardEntity>> getProgressCard(ProgressCardRequest params);
  Future<String> getProgressCardPdf(ProgressCardPdfRequest params);
  Future<String> getGallery(String compId);
}

@LazySingleton(as: DrawerMenuItemsRemoteDataSource)
@injectable
class DrawerMenuItemsRemoteDataSourceImpl
    implements DrawerMenuItemsRemoteDataSource {
  final ApiProvider apiProvider;

  DrawerMenuItemsRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<NewsBoardModel?>> getNewsBoard(NewsBoardRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.newsBoard, body: params.toJson());

    final List<dynamic> datalist = data['resTable'];
    final res = datalist.map((e) => NewsBoardModel.fromJson(e)).toList();
    return res;
  }

  @override
  Future<List<ProgressTermsEntity>> getProgressTerms(
      ProgressTermRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.progressTerms,
        body: params.toJson());

    final List<dynamic> datalist = data['resTable'];
    final res = datalist.map((e) => ProgressTermsModel.fromJson(e)).toList();
    return res;
  }

  @override
  Future<List<ProgressCardEntity>> getProgressCard(
      ProgressCardRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.progressCard,
        body: params.toJson());
    List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => ProgressCardModel.fromJson(e)).toList();
  }

  @override
  Future<String> getProgressCardPdf(ProgressCardPdfRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.progressCardPdf,
        body: params.toJson());
    return data['resMessage'];
  }

  @override
  Future<String> getGallery(String compId) async {
    final data = await apiProvider.get(AppRemoteRoutes.galleryView, body: {
      "P_COMP_ID": compId,
    });
    return data['resMessage'];
  }
}
