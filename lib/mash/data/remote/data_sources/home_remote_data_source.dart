import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/add_on/add_on_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../domain/entities/add_on/add_on_entity.dart';
import '../request/add_on_request.dart';
import '../request/feed_back_request.dart';

abstract interface class HomeRemoteDataSource {
  Future<List<AddOnEntity>> getAddon(AddOnRequest params);
  Future<void> feedBackPost(FeedbackRequest feedbackRequest);
}

@LazySingleton(as: HomeRemoteDataSource)
@injectable
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiProvider apiProvider;

  HomeRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<AddOnEntity>> getAddon(AddOnRequest params) async {
    final result =
        await apiProvider.get(AppRemoteRoutes.addON, body: params.toJson());
    final List<dynamic> data = result['resTable'];
    return data.map((e) => AddOnModel.fromJson(e)).toList();
  }

  @override
  Future<void> feedBackPost(FeedbackRequest feedbackRequest) async {
    await apiProvider.post(
        AppRemoteRoutes.feedBackPost, feedbackRequest.toJson());
  }
}
