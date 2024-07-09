

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/repositories/facilities_respository.dart';

@lazySingleton
@injectable
class GetFacilitiesDashBoardUseCase
    implements UseCase<List<GetFacilityDashBoardEntity?>, GetFacilityDashBoardRequest> {
  final FacilitiesRepository facilitiesRepository;

  GetFacilitiesDashBoardUseCase({required this.facilitiesRepository});

  @override
  Future<List<GetFacilityDashBoardEntity?>> call(GetFacilityDashBoardRequest params) async {
   return await facilitiesRepository.getFacilityDashBoard(params);
  }


}
