



import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';
import 'package:mash/mash/domain/repositories/facilities_respository.dart';

@lazySingleton
@injectable
class FacilitySubUnSubscribeUseCase extends UseCase<FacilitySubUnSubEntity, FacilitySubUnSubscribeRequest>{
  final FacilitiesRepository repository;

  FacilitySubUnSubscribeUseCase(this.repository);

  @override
  Future<FacilitySubUnSubEntity> call(FacilitySubUnSubscribeRequest params) {
    return repository.facilitySubUnSubscribe(params);
  }




}