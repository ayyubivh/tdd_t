



import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_facility_instalments_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_instalments_entity.dart';

import '../../repositories/facilities_respository.dart';


@lazySingleton
@injectable
class GetFacilityInstalmentsUseCase
    implements UseCase<List<FacilityInstalmentsEntity?>, GetFacilityInstalmentsRequest> {
  final FacilitiesRepository facilitiesRepository;

  GetFacilityInstalmentsUseCase({required this.facilitiesRepository});

  @override
  Future<List<FacilityInstalmentsEntity?>> call(GetFacilityInstalmentsRequest params) async {
    return await facilitiesRepository.getFacilityInstalments(params);
  }



}
