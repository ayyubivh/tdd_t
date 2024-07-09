import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/home_repository.dart';

import '../../../data/remote/request/feed_back_request.dart';

@lazySingleton
@injectable
class PostfeedbackUsecase implements UseCase<void, FeedbackRequest> {
  final HomeRepository homeRepository;

  PostfeedbackUsecase({required this.homeRepository});
  @override
  Future<void> call(FeedbackRequest params) async {
    return await homeRepository.feedBackPost(params);
  }
}
