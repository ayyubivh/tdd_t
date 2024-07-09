import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/tc_apply_request.dart';
import 'package:mash/mash/data/remote/request/tc_cancel_request.dart';
import 'package:mash/mash/data/remote/request/tc_status_request.dart';
import 'package:mash/mash/domain/entities/tc/tc_status_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/tc/apply_tc_usecase.dart';
import 'package:mash/mash/domain/use_cases/tc/get_tc_status_usecase.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../../core/response_classify.dart';
import '../../../../../di/injector.dart';
import '../../../../domain/entities/tc/tc_reason_entity.dart';
import '../../../../domain/use_cases/tc/cancel_tc_usecase.dart';
import '../../../../domain/use_cases/tc/get_tc_reason_usecase.dart';

part 'tc_event.dart';
part 'tc_state.dart';
part 'tc_bloc.freezed.dart';

@injectable
class TcBloc extends Bloc<TcEvent, TcState> {
  TcBloc() : super(TcState.initial()) {
    on<_GetTcReason>(_getTcReason);
    on<_GetTcStatus>(_getTcStatus);
    on<_CancelTc>(_cancelTc);
    on<_ApplyTc>(_applyTc);
  }
  //usecase
  final getTcReasonUsecase = getIt<GetTcReasonUsecase>();
  //------------get tc reason usecase-------------------\\
  final getTcStatusUsecase = getIt<GetTcStatusUsecase>();
  //------------get tc reason usecase-------------------\\
  final getUserInfoUsecase = getIt<GetUserInfoUseCase>();
  //------------cancel tc usecase ----------------------\\
  final cancelTcUsecase = getIt<CancelTcUsecase>();
  //-------------apply tc usecase  --------------------\\
  final applyTcUsecase = getIt<ApplyTcUsecase>();

  _getTcReason(_GetTcReason event, Emitter<TcState> emit) async {
    emit(state.copyWith(tcReasonResponse: ResponseClassify.loading()));
    try {
      final data = await getTcReasonUsecase.call(NoParams());
      emit(state.copyWith(tcReasonResponse: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(tcReasonResponse: ResponseClassify.error(e)));
    }
  }

  _getTcStatus(_GetTcStatus event, Emitter<TcState> emit) async {
    emit(state.copyWith(tcStatusResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUsecase.call(NoParams());
      final data = await getTcStatusUsecase.call(TcStatusRequest(
          compId: user?.compId ?? '', parentId: user?.parentId ?? ""));
      emit(state.copyWith(tcStatusResponse: ResponseClassify.completed(data)));
    } catch (e, s) {
      prettyPrint('error ---- $e, statck -----$s');
      emit(state.copyWith(tcStatusResponse: ResponseClassify.error(e)));
    }
  }

  _cancelTc(_CancelTc event, Emitter<TcState> emit) async {
    try {
      final user = await getUserInfoUsecase.call(NoParams());

      final data = await cancelTcUsecase
          .call(TcCancelRequest(compId: user?.compId, tcId: event.tcId));
      if (data == 200) {
        HelperClasses.showSnackBar(msg: 'Canceled Tc Successfully');
      }
    } catch (e) {
      HelperClasses.showSnackBar(msg: 'something error found');
      prettyPrint('erro ont cancel tc $e ');
    }
  }

  _applyTc(_ApplyTc event, Emitter<TcState> emit) async {
    try {
      final user = await getUserInfoUsecase.call(NoParams());
      final data = await applyTcUsecase.call(TcApplyRequest(
        action: "",
        studId: event.studentId,
        reasonId: event.reaseonId,
        expDate: event.expectedDate,
        academicId: user?.academicId,
        userType: user?.userType,
        compId: user?.compId,
        userId: user?.usrId,
      ));

      if (data == 200) {
        HelperClasses.showSnackBar(msg: 'Tc Appllied Successfully');
      }
    } catch (e) {
      HelperClasses.showSnackBar(msg: 'something error found');
      prettyPrint('erro ont cancel tc $e ');
    }
  }
}
