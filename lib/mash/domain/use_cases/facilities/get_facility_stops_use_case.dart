import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_facility_stops_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_stops_entity.dart';

import '../../repositories/facilities_respository.dart';

@lazySingleton
@injectable
class GetFacilityStopsUseCase
    implements UseCase<List<GetFacilityStopsEntity?>, GetFacilityStopsRequest> {
  final FacilitiesRepository facilitiesRepository;

  GetFacilityStopsUseCase({required this.facilitiesRepository});

  @override
  Future<List<GetFacilityStopsEntity?>> call(GetFacilityStopsRequest params) {
    return facilitiesRepository.getFacilityStops(params);
  }
}
