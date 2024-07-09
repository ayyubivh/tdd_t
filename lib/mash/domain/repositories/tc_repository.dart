import '../../data/remote/request/tc_apply_request.dart';
import '../../data/remote/request/tc_cancel_request.dart';
import '../entities/tc/tc_reason_entity.dart';
import '../entities/tc/tc_status_entity.dart';
import '../../data/remote/request/tc_status_request.dart';

abstract interface class TcRepository {
  Future<List<TcStatusEntity>> getTcStatus(TcStatusRequest params);
  Future<List<TcReasonEntity>> getTcReason();
  Future<int> cancelTc(TcCancelRequest cancelRequest);
  Future<int> applyTc(TcApplyRequest params);
}
