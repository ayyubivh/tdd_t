

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/transportation_detail_request.dart';
import 'package:mash/mash/domain/entities/facilities/transportation_detail_entity.dart';

import '../../repositories/facilities_respository.dart';

@lazySingleton
@injectable
class GetTransportationUseCase
    implements UseCase<List<TransportationDetailEntity?>, TransportationDetailRequest> {
  final FacilitiesRepository facilitiesRepository;

  GetTransportationUseCase({required this.facilitiesRepository});

  @override
  Future<List<TransportationDetailEntity?>> call(TransportationDetailRequest params) {
    return facilitiesRepository.getTransportationDetail(params);
  }
}
