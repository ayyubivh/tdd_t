
import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/add_on/add_on_detail_model.dart';
import 'package:mash/mash/data/remote/models/add_on/get_add_on_model.dart';
import 'package:mash/mash/data/remote/request/get_add_on_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

abstract interface class AddOnDataSource {
  Future<List<GetAddOnModel>> getAddOnList(GetAddOnRequest params);
  Future<List<AddOnDetailModel>> getAddOnDetail(GetAddOnRequest params);
}

@LazySingleton(as: AddOnDataSource)
@injectable
class AddOnDataSourceImpl implements AddOnDataSource{
  final ApiProvider apiProvider;

  AddOnDataSourceImpl({required this.apiProvider});

  @override
  Future<List<GetAddOnModel>> getAddOnList(GetAddOnRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getAddOn,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => GetAddOnModel.fromJson(e)).toList();
  }

  @override
  Future<List<AddOnDetailModel>> getAddOnDetail(GetAddOnRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.getAddOn,body:params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => AddOnDetailModel.fromJson(e)).toList();
  }

}