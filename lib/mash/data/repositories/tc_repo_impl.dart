import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/tc__remote_data_source.dart';
import 'package:mash/mash/data/remote/request/tc_apply_request.dart';
import 'package:mash/mash/data/remote/request/tc_cancel_request.dart';
import 'package:mash/mash/data/remote/request/tc_status_request.dart';
import 'package:mash/mash/domain/entities/tc/tc_reason_entity.dart';
import 'package:mash/mash/domain/entities/tc/tc_status_entity.dart';
import 'package:mash/mash/domain/repositories/tc_repository.dart';

@LazySingleton(as: TcRepository)
@injectable
class TcRepoImpl implements TcRepository {
  final TcRemoteDatasource tcRemoteDatasource;

  TcRepoImpl(this.tcRemoteDatasource);
  @override
  Future<List<TcReasonEntity>> getTcReason() {
    return tcRemoteDatasource.getTcReason();
  }

  @override
  Future<List<TcStatusEntity>> getTcStatus(TcStatusRequest params) {
    return tcRemoteDatasource.getTcStatus(params);
  }

  @override
  Future<int> cancelTc(TcCancelRequest cancelRequest) {
    return tcRemoteDatasource.cancelTc(cancelRequest);
  }

  @override
  Future<int> applyTc(TcApplyRequest params) {
    return tcRemoteDatasource.applyTc(params);
  }
}
