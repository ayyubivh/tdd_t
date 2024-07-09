

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_detail_entity.dart';

import '../../../data/remote/request/get_add_on_request.dart';
import '../../repositories/get_add_on_repository.dart';

@lazySingleton
@injectable
class GetAddOnDetailUseCase
    implements UseCase<List<AddOnDetailEntity?>, GetAddOnRequest> {
  final GetAddOnRepository getAddOnRepository;

  GetAddOnDetailUseCase({required this.getAddOnRepository});

  @override
  Future<List<AddOnDetailEntity?>> call(GetAddOnRequest params) async {
    return await getAddOnRepository.getAddOnDetail(params);
  }
}
