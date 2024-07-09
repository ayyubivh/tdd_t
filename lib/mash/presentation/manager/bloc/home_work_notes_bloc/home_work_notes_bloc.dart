import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/notes/notes_details_entity.dart';
import 'package:mash/mash/domain/entities/notes/notes_report_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart';
import '../../../../domain/entities/home_work/home_work_entity.dart';

part 'home_work_notes_event.dart';
part 'home_work_notes_state.dart';
part 'home_work_notes_bloc.freezed.dart';

@injectable
class HomeWorkNotesBloc extends Bloc<HomeWorkNotesEvent, HomeWorkNotesState> {
  final HomeWorkReportsUseCase homeWorkReportsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final NotesReportsUseCase notesReportsUseCase;
  final GetNoteReportDetails getNoteReportDetails;
  final GetHomeWorkDetails getHomeWorkDetails;
  HomeWorkNotesBloc(
      this.homeWorkReportsUseCase,
      this.getUserInfoUseCase,
      this.notesReportsUseCase,
      this.getNoteReportDetails,
      this.getHomeWorkDetails)
      : super(HomeWorkNotesState.initial()) {
    on<_GetHomeWorkReportEvent>(_getHomeWorkReport);
    on<_GetNotesWorkReport>(_getNotesWorkReport);
    on<_GetNoteReportDetails>(_getNoteReportDetails);
    on<_GetHomeWorkDetails>(_getHomeWorkDetails);
  }

  _getHomeWorkReport(
      _GetHomeWorkReportEvent event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(homeWorkReportResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await homeWorkReportsUseCase.call(HomeWorkReportRequest(
          compId: userData.compId,
          startDate: event.startDate,
          endDate: event.endDate,
          classId: event.classId,
          divId: event.divId,
          subjId: event.subId.isEmpty ? "0" : event.subId,
          acadId: userData.academicId ?? "",
        ));
        emit(state.copyWith(
            homeWorkReportResponse: ResponseClassify.completed(data)));
      }
    } catch (e) {
      emit(state.copyWith(
          homeWorkReportResponse: ResponseClassify.error(e.toString())));
    }
  }

  _getNotesWorkReport(
      _GetNotesWorkReport event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(noteWorkReportResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await notesReportsUseCase.call(HomeWorkReportRequest(
          compId: userData.compId,
          startDate: event.startDate,
          endDate: event.endDate,
          classId: event.classId,
          divId: event.divId,
          subjId: event.subjectId.isEmpty ? "0" : event.subjectId,
          acadId: userData.academicId ?? "",
        ));
        emit(state.copyWith(
            noteWorkReportResponse: ResponseClassify.completed(data)));
        prettyPrint(
            'noter works response ${state.noteWorkReportResponse.data?.length}');
      }
    } catch (e) {
      emit(state.copyWith(
          noteWorkReportResponse: ResponseClassify.error(e.toString())));
    }
  }

  _getNoteReportDetails(
      _GetNoteReportDetails event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(noteReportDetailResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await getNoteReportDetails
            .call(NoteDetailsParams(userData.compId, event.noteId));
        emit(state.copyWith(
            noteReportDetailResponse: ResponseClassify.completed(data)));
      }
    } catch (e) {
      emit(state.copyWith(
          noteReportDetailResponse: ResponseClassify.error(e.toString())));
    }
  }

  _getHomeWorkDetails(
      _GetHomeWorkDetails event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(
        homeWorkReportDetailResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await getHomeWorkDetails
            .call(HomeWorkDetailsParams(userData.compId, event.workId));
        emit(state.copyWith(
            homeWorkReportDetailResponse: ResponseClassify.completed(data)));
        prettyPrint(data.toString());
      }
    } catch (e, stack) {
      prettyPrint('error on bloc $e stack race $stack');
      emit(state.copyWith(
          homeWorkReportDetailResponse: ResponseClassify.error(e.toString())));
    }
  }

  static HomeWorkNotesBloc get(BuildContext context) =>
      BlocProvider.of(context);
}
