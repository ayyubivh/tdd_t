

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_facility_amount_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_transport_amount_entity.dart';

import '../../repositories/facilities_respository.dart';

@lazySingleton
@injectable
class GetFacilityAmountUseCase
    implements UseCase<List<GetTransportAmountEntity?>, GetFacilityAmountRequest> {
  final FacilitiesRepository facilitiesRepository;

  GetFacilityAmountUseCase({required this.facilitiesRepository});

  @override
  Future<List<GetTransportAmountEntity?>> call(GetFacilityAmountRequest params) {
    return facilitiesRepository.getFacilityAmount(params);
  }
}
