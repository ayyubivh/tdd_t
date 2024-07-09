import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/home_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/add_on_request.dart';
import 'package:mash/mash/data/remote/request/feed_back_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';
import 'package:mash/mash/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
@injectable
class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource});
  @override
  Future<List<AddOnEntity>> getAddon(AddOnRequest params) async {
    return await homeRemoteDataSource.getAddon(params);
  }

  @override
  Future<void> feedBackPost(FeedbackRequest feedbackRequest) async {
    return await homeRemoteDataSource.feedBackPost(feedbackRequest);
  }
}
