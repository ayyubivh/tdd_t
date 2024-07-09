import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/add_on_data_source.dart';
import 'package:mash/mash/data/remote/request/get_add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_detail_entity.dart';
import 'package:mash/mash/domain/entities/add_on/get_add_on_entity.dart';
import 'package:mash/mash/domain/repositories/get_add_on_repository.dart';

@LazySingleton(as: GetAddOnRepository)
@injectable
class GetAddOnRepositoryImpl implements GetAddOnRepository {
  final AddOnDataSource addOnDataSource;

  GetAddOnRepositoryImpl({required this.addOnDataSource});


  @override
  Future<List<GetAddOnEntity>> getAddOnData(GetAddOnRequest request) {
   return addOnDataSource.getAddOnList(request);
  }

  @override
  Future<List<AddOnDetailEntity>> getAddOnDetail(GetAddOnRequest request) {
   return addOnDataSource.getAddOnDetail(request);
  }
}
