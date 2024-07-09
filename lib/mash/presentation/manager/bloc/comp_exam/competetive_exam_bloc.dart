import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/comp_exam_toberegistered_detail_request.dart';
import 'package:mash/mash/data/remote/request/comp_exam_toberegistered_request.dart';
import 'package:mash/mash/data/remote/request/submit_comp_exam_toberegistered_request.dart';
import 'package:mash/mash/domain/use_cases/comp_exam/get_comp_exam_tobe_registered_details_usecases.dart';
import 'package:mash/mash/domain/use_cases/comp_exam/get_comp_exam_toberegistered_usecase.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';

import '../../../../../core/response_classify.dart';
import '../../../../domain/entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';
import '../../../../domain/entities/comp_exam/comp_exam_tobe_registered_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/comp_exam/submit_comp_exam_tobe_registered_usecase.dart';

part 'competetive_exam_event.dart';
part 'competetive_exam_state.dart';
part 'competetive_exam_bloc.freezed.dart';

@injectable
class CompetetiveExamBloc
    extends Bloc<CompetetiveExamEvent, CompetetiveExamState> {
  CompetetiveExamBloc() : super(CompetetiveExamState.initial()) {
    on<_GetTobeRegistered>(_getTobeRegistered);
    on<_GetTobeRegisteredDetails>(_getTobeRegisteredDetails);
    on<_SubmitCompetetiveTobeRegistered>(_submitCompetetiveTobeRegistered);
  }
  final getCompExamTobeRegisteredUsecase =
      getIt<GetCompExamTobeRegisteredUsecase>();
  final getCompExamTobeRegisteredDetailsUsecase =
      getIt<GetCompExamTobeRegisteredDetailsUsecase>();
  final submitCompExamTobeRegisteredUsecase =
      getIt<SubmitCompExamTobeRegisteredUsecase>();
  final userInfoUseCase = getIt<GetUserInfoUseCase>();
  _getTobeRegistered(
      _GetTobeRegistered event, Emitter<CompetetiveExamState> emit) async {
    emit(state.copyWith(
        compExamTobeRegisteredResponse: ResponseClassify.loading()));
    try {
      final user = await userInfoUseCase.call(NoParams());
      final data = await getCompExamTobeRegisteredUsecase.call(
          CompExamToberegisteredRequest(
              flag: event.flag,
              companyId: user?.compId ?? "",
              academicYear: '87',
              userId: user?.usrId ?? ''));
      emit(state.copyWith(
          compExamTobeRegisteredResponse: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(
          compExamTobeRegisteredResponse: ResponseClassify.error(e)));
    }
  }

  _getTobeRegisteredDetails(_GetTobeRegisteredDetails event,
      Emitter<CompetetiveExamState> emit) async {
    emit(state.copyWith(
        compExamTobeRegisteredDetailsResponse: ResponseClassify.loading()));
    try {
      final user = await userInfoUseCase.call(NoParams());
      final data = await getCompExamTobeRegisteredDetailsUsecase.call(
          CompExamToberegisteredDetailsRequest(
              compId: user?.compId ?? '',
              examId: event.examId,
              userId: user?.usrId ?? ""));
      emit(state.copyWith(
          compExamTobeRegisteredDetailsResponse:
              ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(
          compExamTobeRegisteredDetailsResponse: ResponseClassify.error(e)));
    }
  }

  _submitCompetetiveTobeRegistered(_SubmitCompetetiveTobeRegistered event,
      Emitter<CompetetiveExamState> emit) async {
    try {
      final user = await userInfoUseCase.call(NoParams());
      final data = await submitCompExamTobeRegisteredUsecase.call(
          SubmitCompExamTobeRegiteredRequest(
              examId: event.examId,
              compId: user?.compId ?? "",
              userId: user?.usrId ?? "",
              regStatus: event.regStatus,
              selfRate1: event.selfRate));
      if (data == 200) {
        HelperClasses.showSnackBar(msg: 'Submitted successfully');
      }
    } catch (e) {
      prettyPrint('error on submit exam');
      HelperClasses.showSnackBar(msg: 'error on submit exam');
    }
  }
}
