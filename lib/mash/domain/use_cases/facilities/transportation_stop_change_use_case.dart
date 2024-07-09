





import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/facility_sub_un_subscribe_request.dart';
import 'package:mash/mash/data/remote/request/transportation_change_stop_request.dart';
import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';
import 'package:mash/mash/domain/repositories/facilities_respository.dart';

@lazySingleton
@injectable
class TransportationChangeStopUseCase extends UseCase<FacilitySubUnSubEntity, TransportationChangeStopRequest>{
  final FacilitiesRepository repository;

  TransportationChangeStopUseCase(this.repository);

  @override
  Future<FacilitySubUnSubEntity> call(TransportationChangeStopRequest params) {
    return repository.transportationStopChange(params);
  }




}