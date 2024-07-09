


import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/post_id_request.dart';
import 'package:mash/mash/data/remote/request/transfer_request_type_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';

import '../../../../core/api_provider.dart';
import '../models/id_module/id_request_type_model.dart';

abstract class IdRequestTypeDataSource {
  Future<List<IdRequestEntity>> getIdRequestType(IdRequest request);
  Future<void> postIdRequest(PostIdRequest request);
}

@LazySingleton(as: IdRequestTypeDataSource)
@injectable
class IdRequestTypeImpl extends IdRequestTypeDataSource{

  final ApiProvider apiProvider;

  IdRequestTypeImpl(this.apiProvider);

  @override
  Future<List<IdRequestEntity>> getIdRequestType(IdRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.idRequestType,body: request.toJson());
    return List<IdRequestEntity>.from(data["resTable"].map((e)=>IdRequestTypeModel.fromJson(e))).toList();
  }

  @override
  Future<void> postIdRequest(PostIdRequest request) async {
    final data = await  apiProvider.post(AppRemoteRoutes.idRequestPost,request.toJson());
  }

}