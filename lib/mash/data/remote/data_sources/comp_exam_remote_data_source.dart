import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/comp_exam/comp_exam_tobe_registed_model.dart';
import 'package:mash/mash/data/remote/models/comp_exam/comp_exam_tobe_registered_details_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../domain/entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';
import '../../../domain/entities/comp_exam/comp_exam_tobe_registered_entity.dart';
import '../request/comp_exam_toberegistered_detail_request.dart';
import '../request/comp_exam_toberegistered_request.dart';
import '../request/submit_comp_exam_toberegistered_request.dart';

abstract interface class CompExamRemoteDatasource {
  Future<List<CompExamTobeRegistedEntity>> getCompExamTobeRegistered(
      CompExamToberegisteredRequest params);
  Future<CompExamTobeRegistedEntityDetailsEntity>
      getCompExamTobeRegisteredDetais(
          CompExamToberegisteredDetailsRequest params);

  Future<int> submitCompExamTobeRegistered(
      SubmitCompExamTobeRegiteredRequest params);
}

@LazySingleton(as: CompExamRemoteDatasource)
@injectable
class CompExamRemoteDatasourceImpl extends CompExamRemoteDatasource {
  final ApiProvider _apiProvider;

  CompExamRemoteDatasourceImpl(this._apiProvider);
  @override
  Future<List<CompExamTobeRegistedEntity>> getCompExamTobeRegistered(
      CompExamToberegisteredRequest params) async {
    final data = await _apiProvider.get(
        AppRemoteRoutes.getCompetetiveExamTobeRegistered,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => CompExamTobeRegistedModel.fromJson(e)).toList();
  }

  @override
  Future<CompExamTobeRegistedEntityDetailsEntity>
      getCompExamTobeRegisteredDetais(
          CompExamToberegisteredDetailsRequest params) async {
    final data = await _apiProvider.get(
        AppRemoteRoutes.getCompetetiveExamTobeRegisteredDetails,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList
        .map((e) => CompExamTobeRegistedEntityDetailsModel.fromJson(e))
        .first;
  }

  @override
  Future<int> submitCompExamTobeRegistered(
      SubmitCompExamTobeRegiteredRequest params) async {
    final data = await _apiProvider.post(
        AppRemoteRoutes.submitCompetetiveExam, params.toJson());
    return data['statusCode'];
  }
}
