import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';

import '../../repositories/home_repository.dart';

@lazySingleton
@injectable
class GetAddOnUsecase implements UseCase<List<AddOnEntity>, AddOnRequest> {
  final HomeRepository homeRepository;

  GetAddOnUsecase({required this.homeRepository});
  @override
  Future<List<AddOnEntity>> call(AddOnRequest params) async {
    return await homeRepository.getAddon(params);
  }
}
