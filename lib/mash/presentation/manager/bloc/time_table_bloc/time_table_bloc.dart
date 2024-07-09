import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/request/daily_time_table_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart';

import '../../../../../core/pretty_printer.dart';
import '../../../../../core/usecase.dart';
import '../../../../../di/injector.dart';
import '../../../../data/remote/request/get_exam_terms_detail_request.dart';
import '../../../../data/remote/request/get_offline_exam_time_table_request.dart';
import '../../../../domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import '../../../../domain/entities/timeTable/daily_time_table_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/profile/get_siblings_use_case.dart';
import '../../../../domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart';
import '../../../../domain/use_cases/time_table_usecase/offline_time_table_use_case.dart';

part 'time_table_event.dart';
part 'time_table_state.dart';
part 'time_table_bloc.freezed.dart';

@lazySingleton
@injectable
class TimeTableBloc extends Bloc<TimeTableEvent, TimeTableState> {
  TimeTableBloc() : super(TimeTableState.initial()) {
    on<_GetOfflineExamTerms>(_getOfflineExamTerm);
    on<_GetOfflineExamTimeTable>(_getOfflineExamTimeTable);
    on<_GetDailyTimeTable>(_getDailyTimeTable);
  }

  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final GetOfflineExamTimeTableUseCase getOfflineExamTimeTableUseCase =
      getIt<GetOfflineExamTimeTableUseCase>();
  final GetOfflineExamTermsUseCase getOfflineExamTermsUseCase =
      getIt<GetOfflineExamTermsUseCase>();
  final GetSiblingsUseCase getSiblingsUseCase = getIt<GetSiblingsUseCase>();
  final GetDailyTimeTableUseCase getDailyTimeTableUseCase =
      getIt<GetDailyTimeTableUseCase>();

  static TimeTableBloc get(context) => BlocProvider.of(context);

  FutureOr<void> _getOfflineExamTerm(
      _GetOfflineExamTerms event, Emitter<TimeTableState> emit) async {
    emit(state.copyWith(getOfflineExamTerms: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getOfflineExamTermsUseCase.call(
          ExamTermDetailRequest(
              companyId: loginInfo?.compId ?? '',
              pAcademicId: loginInfo?.academicId ?? '',
              classId: loginInfo?.classId ?? ''));
      if (response.isNotEmpty) {
        add(TimeTableEvent.getOfflineExamTimeTable(
            termId: response.first.termId, isInit: false, selectedUserId: event.selectedUserId));
      }
      emit(state.copyWith(
          getOfflineExamTerms: ResponseClassify.completed(response)));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(getOfflineExamTerms: ResponseClassify.error(e)));
    }
  }

  FutureOr<void> _getOfflineExamTimeTable(
      _GetOfflineExamTimeTable event, Emitter<TimeTableState> emit) async {
    emit(state.copyWith(getOfflineExamTimeTable: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
print('************* exam data ***************');
print('${ExamTimeTableRequest(
    companyId: loginInfo?.compId ?? '',
    pAcademicId: loginInfo?.academicId ?? '',
    pKidId:   event.selectedUserId,
    termId: event.termId).toJson()}');
      var response = await getOfflineExamTimeTableUseCase.call(
          ExamTimeTableRequest(
              companyId: loginInfo?.compId ?? '',
              pAcademicId: loginInfo?.academicId ?? '',
              pKidId:   event.selectedUserId,
              termId: event.termId));
      /*var response = await getOfflineExamTimeTableUseCase.call(
          ExamTimeTableRequest(
              companyId: '200001',
              pAcademicId: '87',
              pKidId: 'MGS1000152',
              termId: "773"));*/
      emit(state.copyWith(
          getOfflineExamTimeTable: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getOfflineExamTimeTable: ResponseClassify.error(e)));
    }
  }

  FutureOr<void> _getDailyTimeTable(
      _GetDailyTimeTable event, Emitter<TimeTableState> emit) async {
    emit(state.copyWith(getDailyTimeTable: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      print('********** login info check ***********');
      print(
          "${DailyTimeTableRequest(compId: loginInfo?.compId ?? '', userType: loginInfo?.userType ?? '', pDate: event.date, pStudentId: loginInfo?.studentId ?? '').toJson()}");
      //  var response = await getDailyTimeTableUseCase.call(DailyTimeTableRequest(compId: loginInfo?.compId ?? '', userType: loginInfo?.userType ?? '', pDate: event.date, pStudentId: loginInfo?.studentId ?? ''));
      // var response = await getDailyTimeTableUseCase.call(DailyTimeTableRequest(compId: "200001", userType: '2', pDate: event.date, pStudentId: '1000152'));
      var response = await getDailyTimeTableUseCase.call(DailyTimeTableRequest(
          compId: loginInfo?.compId ?? '',
          userType: loginInfo?.userType ?? '',
          pDate: event.date,
          pStudentId: loginInfo?.studentId ?? ''));
      // var response = await getDailyTimeTableUseCase.call(DailyTimeTableRequest(compId: "200001", userType: '2', pDate: event.date, pStudentId: '1000152'));
      emit(state.copyWith(
          getDailyTimeTable: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getDailyTimeTable: ResponseClassify.error(e)));
    }
  }
}
