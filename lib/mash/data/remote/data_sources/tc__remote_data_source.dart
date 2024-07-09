import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/tc/tc_reason_model.dart';
import 'package:mash/mash/data/remote/models/tc/tc_status_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../../../domain/entities/tc/tc_reason_entity.dart';
import '../../../domain/entities/tc/tc_status_entity.dart';
import '../request/tc_apply_request.dart';
import '../request/tc_cancel_request.dart';
import '../request/tc_status_request.dart';

abstract interface class TcRemoteDatasource {
  Future<List<TcStatusEntity>> getTcStatus(TcStatusRequest params);
  Future<List<TcReasonEntity>> getTcReason();
  Future<int> cancelTc(TcCancelRequest cancelRequest);
  Future<int> applyTc(TcApplyRequest params);
}

@LazySingleton(as: TcRemoteDatasource)
@injectable
class TcRemoteDatasourceImpl implements TcRemoteDatasource {
  final ApiProvider apiProvider;

  TcRemoteDatasourceImpl({required this.apiProvider});
  @override
  Future<List<TcReasonEntity>> getTcReason() async {
    final data = await apiProvider.get(AppRemoteRoutes.getTcReason);
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => TcReasonModel.fromJson(e)).toList();
  }

  @override
  Future<List<TcStatusEntity>> getTcStatus(TcStatusRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.getTcStatus,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => TcStatusModel.fromJson(e)).toList();
  }

  @override
  Future<int> cancelTc(TcCancelRequest cancelRequest) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.cancelTc, cancelRequest.toJson());
    return data['statusCode'];
  }

  @override
  Future<int> applyTc(TcApplyRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.applyTc, params.toJson());

    return data['statusCode'];
  }
}
