import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/cancel_leave_request.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/leave_details_request.dart';
import 'package:mash/mash/data/remote/request/leave_status_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/leave/leave_cancel_usecase.dart';
import 'package:mash/mash/domain/use_cases/leave/leave_status_usecase.dart';
import 'package:mash/mash/domain/use_cases/leave/leave_use_case.dart';

import '../../../../../core/pretty_printer.dart';
import '../../../../data/remote/request/leave_attachment_model.dart';
import '../../../../domain/entities/leave/leave_details_entity.dart';
import '../../../../domain/entities/leave/leave_status_entity.dart';
import '../../../../domain/use_cases/leave/apply_leave_usecase.dart';
import '../../../../domain/use_cases/leave/leave_status_details_usecase.dart';

part 'leave_event.dart';
part 'leave_state.dart';
part 'leave_bloc.freezed.dart';

@injectable
class LeaveBloc extends Bloc<LeaveEvent, LeaveState> {
  LeaveBloc() : super(LeaveState.initial()) {
    on<_GetLeaveDashboardData>(_getLeaveDashboardData);
    on<_GetLeaveStatus>(_getLeaveStatus);
    on<_GetLeaveStatusDetails>(_getLeaveStatusDetails);
    on<_CancelLeave>(_cancelLeave);
    on<_ApplyLeave>(_applyLeave);
    on<_SaveLeaveAttachments>(_saveLeaveAttachments);
  }

  final GetDashboardLeaveUseCase getDashboardLeaveUseCase =
      getIt<GetDashboardLeaveUseCase>();
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final GetLeaveStatusUsecase getLeaveStatusUsecase =
      getIt<GetLeaveStatusUsecase>();
  final GetLeaveStatusDetailsUsecase getLeaveStatusDetailsUsecasae =
      getIt<GetLeaveStatusDetailsUsecase>();
  final CancelLeaveUsecase cancelLeaveUsecase = getIt<CancelLeaveUsecase>();
  final ApplyLeaveUsecase applyLeaveUsecase = getIt<ApplyLeaveUsecase>();
  static LeaveBloc get(context) => BlocProvider.of(context);

  Future<FutureOr<void>> _getLeaveDashboardData(
      _GetLeaveDashboardData event, Emitter<LeaveState> emit) async {
    emit(state.copyWith(getLeaveDashboardData: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getDashboardLeaveUseCase.call(LeaveDashboardRequest(
          pCompId: loginInfo?.compId ?? '',
          pUserId: loginInfo?.usrId ?? '',
          pAcademicId: loginInfo?.academicId ?? '',
          pDivisionId: loginInfo?.divisionId ?? ''));
      emit(state.copyWith(
          getLeaveDashboardData: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getLeaveDashboardData: ResponseClassify.error(e)));
    }
  }

  _getLeaveStatus(_GetLeaveStatus event, Emitter<LeaveState> emit) async {
    emit(state.copyWith(leaveStatusResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getLeaveStatusUsecase.call(LeaveStatusRequest(
          compId: user?.compId ?? "",
          studentId: event.studentId,
          studentLeaveStatus: event.studentLeaveStatus));
      emit(state.copyWith(
          leaveStatusResponse: ResponseClassify.completed(data)));
    } catch (e, s) {
      prettyPrint('error on get leave status $e , stack race $s');
      emit(state.copyWith(leaveStatusResponse: ResponseClassify.error(e)));
    }
  }

  _getLeaveStatusDetails(
      _GetLeaveStatusDetails event, Emitter<LeaveState> emit) async {
    emit(state.copyWith(leaveDetailsResponse: ResponseClassify.loading()));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await getLeaveStatusDetailsUsecasae.call(LeaveDetailsRequest(
          companyId: userInfo?.compId ?? '',
          studentId: event.studentId,
          studentLeaveStatus: event.leaveStatus,
          studentLeaveDetailsId: event.leaveStatusId));
      emit(state.copyWith(
          leaveDetailsResponse: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(leaveDetailsResponse: ResponseClassify.error(e)));
    }
  }

  _cancelLeave(_CancelLeave event, Emitter<LeaveState> emit) async {
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await cancelLeaveUsecase.call(LeaveCancelRequest(
          companyId: userInfo?.compId ?? '',
          studentId: event.studentId,
          studentLeaveDetailsId: event.leaveDetailsId,
          cancelReason: event.reason));

      if (data == 200) {
        add(_GetLeaveStatus(
          studentId: event.studentId,
          studentLeaveStatus: event.leaveStatus,
        ));
      }
    } catch (e) {
      prettyPrint('e $e');
    }
  }

  _applyLeave(_ApplyLeave event, Emitter<LeaveState> emit) async {
    try {
      // final data = await
    } catch (e) {}
  }

  _saveLeaveAttachments(_SaveLeaveAttachments event, Emitter<LeaveState> emit) {
    emit(state.copyWith(leaveAttachmentModel: event.leaveAttachments));
  }
}
