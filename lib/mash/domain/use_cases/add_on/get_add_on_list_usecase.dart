import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/get_add_on_entity.dart';
import 'package:mash/mash/domain/repositories/get_add_on_repository.dart';

@lazySingleton
@injectable
class GetAllAddOnUseCase
    implements UseCase<List<GetAddOnEntity?>, GetAddOnRequest> {
  final GetAddOnRepository getAddOnRepository;

  GetAllAddOnUseCase({required this.getAddOnRepository});

  @override
  Future<List<GetAddOnEntity?>> call(GetAddOnRequest params) async {
    return await getAddOnRepository.getAddOnData(params);
  }
}
