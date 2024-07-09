import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/leave/leave_dashboard_model.dart';
import 'package:mash/mash/data/remote/models/leave/leave_status_model.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';

import '../../../domain/entities/leave/leave_details_entity.dart';
import '../../../domain/entities/leave/leave_status_entity.dart';
import '../models/leave/leave_details_model.dart';
import '../request/apply_leave_request.dart';
import '../request/cancel_leave_request.dart';
import '../request/leave_details_request.dart';
import '../request/leave_status_request.dart';

abstract class LeaveDataSource {
  Future<List<LeaveDashboardEntity>> getLeaveDashboardDetail(
      LeaveDashboardRequest request);
  Future<LeaveStatusEntity> getLeaveStatus(LeaveStatusRequest params);
  Future<LeaveDetailsEntity> getLeaveDetails(
      LeaveDetailsRequest leaveDetailsRequest);
  Future<int> cancelLeave(LeaveCancelRequest leaveCancelRequest);
  Future<int> applyLeave(ApplyLeaveRequest applyLeaveRequest);
}

@LazySingleton(as: LeaveDataSource)
@injectable
class LeaveDataSourceImpl extends LeaveDataSource {
  final ApiProvider apiProvider;

  LeaveDataSourceImpl(this.apiProvider);

  @override
  Future<List<LeaveDashboardEntity>> getLeaveDashboardDetail(
      LeaveDashboardRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.getLeaveDashboard,
        body: request.toJson());
    return List<LeaveDashboardEntity>.from(
        data["resTable"].map((e) => LeaveDashboardModel.fromJson(e))).toList();
  }

  @override
  Future<LeaveStatusEntity> getLeaveStatus(LeaveStatusRequest params) async {
    try {
      final data = await apiProvider.get(AppRemoteRoutes.getLeaveStatus,
          body: params.toJson());
      return LeaveStatusModel.fromJson(data);
    } catch (e, s) {
      prettyPrint('error on get leave status $e , stack race $s');
      throw Exception();
    }
  }

  @override
  Future<LeaveDetailsEntity> getLeaveDetails(
      LeaveDetailsRequest leaveDetailsRequest) async {
    final data = await apiProvider.get(AppRemoteRoutes.getLeaveDetails,
        body: leaveDetailsRequest.toJson());

    final List<dynamic> dataList = data['resTable'];
    return LeaveStatusDetailsModel.fromJson(dataList.first);
  }

  @override
  Future<int> cancelLeave(LeaveCancelRequest leaveCancelRequest) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.cancelLeave, leaveCancelRequest.toJson());
    return data['statusCode'];
  }

  @override
  Future<int> applyLeave(ApplyLeaveRequest applyLeaveRequest) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.applyLeave, applyLeaveRequest.toJson());
    return data['statusCode'];
  }
}
