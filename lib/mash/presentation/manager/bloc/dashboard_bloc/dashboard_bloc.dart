import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/score_board_details_request.dart';
import 'package:mash/mash/data/remote/request/term_details_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart';
import 'package:mash/mash/domain/use_cases/dashboard/get_scoreboard_details_usecase.dart';
import 'package:mash/mash/domain/use_cases/dashboard/get_term_details_usecase.dart';

import '../../../../../core/custom_exception.dart';
import '../../../../../core/response_classify.dart';
import '../../../../../di/injector.dart';
import '../../../../domain/entities/auth/auth_response_entity.dart';
import '../../../../domain/entities/dashboard/score_board_details_entity.dart';
import '../../../../domain/entities/dashboard/term_details_entity.dart';
import '../../../../domain/use_cases/academic/get_digital_library_use_case.dart';
import '../../../../domain/use_cases/academic/insert_dl_click_use_case.dart';
import '../../../utils/app_constants.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// BLoC responsible for managing the state related to the dashboard.
@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final FetchWordThoughtUseCase fetchWordThoughtUseCase;
  final GetUserInfoUseCase userInfoUseCase;
  final GetTermDetailsUsecase getTermDetailsUsecase;
  final GetScoreboardDetailsUsecase getScoreboardDetailsUsecase;

  /// Constructs a [DashboardBloc] instance.
  ///
  /// [fetchWordThoughtUseCase]: Use case for fetching word and thought of the day.
  DashboardBloc(this.fetchWordThoughtUseCase, this.userInfoUseCase,
      this.getTermDetailsUsecase, this.getScoreboardDetailsUsecase)
      : super(DashboardState.initial()) {
    on<_FetchWordAndThoughtOftheDayEvent>(_fetchWordAndThoughtOftheDayEvent);
    on<_GetTermDetailsEvent>(_getTermDetailsEvent);
    on<_GetScoreboardDetailsEvent>(_getScoreboardDetails);
    on<_SelectedTermIndexEvent>(_selectedTermIndexEvent);
  }

  /// Handles the [_FetchWordAndThoughtOftheDayEvent] event by fetching the word and thought of the day.
  ///
  /// [event]: The event triggering the fetch operation.
  /// [emit]: The emitter to emit new states.
  void _fetchWordAndThoughtOftheDayEvent(
      _FetchWordAndThoughtOftheDayEvent event,
      Emitter<DashboardState> emit) async {
    emit(state.copyWith(wordThoughtResponse: ResponseClassify.loading()));

    try {
      final user = await _getUserInformation();
      final res = await fetchWordThoughtUseCase.call(AcademicAndCompIdRequest(
          pAcademicId: user?.academicId ?? "", pCompID: user?.compId ?? ""));
      emit(
          state.copyWith(wordThoughtResponse: ResponseClassify.completed(res)));
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
          wordThoughtResponse: ResponseClassify.error("$e Unauthorized")));
      if (event.context.mounted) handleUnAuthorizedError(event.context);
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

//For fetching user infomations from
  Future<LoginResTableEntity?> _getUserInformation() async {
    return await userInfoUseCase.call(NoParams());
  }

  ///[USE CASES]///
  final digitalLibraryUseCase = getIt<DigitalLibraryUseCase>();
  final getLoginUseCase = getIt<GetUserInfoUseCase>();

  FutureOr<void> _getTermDetailsEvent(
      _GetTermDetailsEvent event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(termDetailsResponse: ResponseClassify.loading()));

    try {
      final user = await _getUserInformation();
      final data = await getTermDetailsUsecase.call(TermDetailsRequest(
          pCompId: user?.compId ?? "",
          pAcademicId: user?.academicId ?? "",
          pClassId: user?.classId ?? ""));

      emit(state.copyWith(
          termDetailsResponse: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(
          termDetailsResponse: ResponseClassify.error(e.toString())));
    }
  }

  _getScoreboardDetails(
      _GetScoreboardDetailsEvent event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(scoreBoardResponse: ResponseClassify.loading()));
    try {
      final user = await _getUserInformation();
      final data =
          await getScoreboardDetailsUsecase.call(ScoreBoardDetailsRequest(
        compId: user?.compId ?? '',
        termId: event.termId,
        academicId: user?.academicId ?? "",
        studentId: event.studentId,
      ));
      emit(
          state.copyWith(scoreBoardResponse: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(scoreBoardResponse: ResponseClassify.error(e)));
    }
  }

  final insertDlClickUseCase = getIt<InsertDlClickUseCase>();

  _selectedTermIndexEvent(
      _SelectedTermIndexEvent event, Emitter<DashboardState> emit) {
    emit(state.copyWith(selectedTermIndex: event.index));
  }
}
