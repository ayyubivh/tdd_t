import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';
import 'package:mash/mash/data/remote/request/progress_card_pdf_request.dart';
import 'package:mash/mash/data/remote/request/progress_card_request.dart';
import 'package:mash/mash/data/remote/request/progress_term_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_card_entity.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/progress_terms_entity.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_progress_card_pdf_usecase.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_progress_card_usecase.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_progress_terms_usecase.dart';

import '../../../../../core/custom_exception.dart';
import '../../../../../core/pretty_printer.dart';
import '../../../../../core/usecase.dart';
import '../../../../data/remote/request/role_menu_request.dart';
import '../../../../domain/entities/dashboard/role_menu_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/dashboard/get_role_menu_usecase.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';
part 'drawer_bloc.freezed.dart';

@injectable
class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  final GetNewsBoardUseCase getNewsBoardUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetRoleMenuUsecase getRoleMenuUsecase;
  final GetProgressTermsUsecase getProgressTermsUsecase;
  final GetProgressCardUsecase getProgressCardUsecase;
  final GetProgressCardPdfUsecase getProgressCardPdfUsecase;

  DrawerBloc(
      this.getNewsBoardUseCase,
      this.getUserInfoUseCase,
      this.getRoleMenuUsecase,
      this.getProgressTermsUsecase,
      this.getProgressCardUsecase,
      this.getProgressCardPdfUsecase)
      : super(DrawerState.initial()) {
    on<_GetNews>(_getNewsBoard);
    on<_GetRoleMenuEvent>(_getRoleMenutEvent);
    on<_GetProgressTerms>(_getProgressTerms);
    on<_GetProgressCard>(_getProgressCard);
    on<_GetProgressCardPdf>(_getProgressCardPdf);
  }

  Future<void> _getNewsBoard(_GetNews event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(newsBoardResponse: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      prettyPrint('user details --------------- ${userdata?.academicId}');
      if (userdata != null) {
        final data = await getNewsBoardUseCase.call(
          NewsBoardRequest(
            pCompId: userdata.compId,
            pUserType: userdata.userType,
            pOffset: '0',
            pLimit: '7',
            pSearchKey: '3',
          ),
        );
        prettyPrint('data --------------- $data');
        emit(state.copyWith(
            newsBoardResponse: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            newsBoardResponse: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(
          newsBoardResponse: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  Future<void> _getRoleMenutEvent(
      _GetRoleMenuEvent event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(roleMenuResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final res = await getRoleMenuUsecase.call(RoleMenuRequest(
          compId: user?.compId ?? "",
          userType: user?.userType ?? '',
          userId: user?.usrId ?? "",
          roleId: user?.roleId ?? ''));
      emit(state.copyWith(roleMenuResponse: ResponseClassify.completed(res)));
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
          roleMenuResponse: ResponseClassify.error("$e Unauthorized")));
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

  Future<void> _getProgressTerms(
      _GetProgressTerms event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(progressTermsResponse: ResponseClassify.initial()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getProgressTermsUsecase.call(ProgressTermRequest(
          pCompId: user?.compId ?? "",
          pAcademicId: user?.academicId ?? "",
          pClassId: user?.classId ?? ""));
      emit(state.copyWith(
          progressTermsResponse: ResponseClassify.completed(data)));

      // Optionally, fetch the progress card for the first term
      if (data.isNotEmpty) {
        add(_GetProgressCard(termId: data.first.termId));
      }
    } catch (e) {
      emit(state.copyWith(progressTermsResponse: ResponseClassify.error(e)));
    }
  }

  Future<void> _getProgressCard(
      _GetProgressCard event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(progressCardResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getProgressCardUsecase.call(ProgressCardRequest(
        compId: user?.compId,
        academicId: user?.academicId,
        userId: user?.usrId,
        termId: event.termId,
      ));
      emit(state.copyWith(
          progressCardResponse: ResponseClassify.completed(data)));
    } catch (e, s) {
      prettyPrint(
          'error on progress card api $e, stack ************************* $s');
      emit(state.copyWith(progressCardResponse: ResponseClassify.error(e)));
    }
  }

  _getProgressCardPdf(
      _GetProgressCardPdf event, Emitter<DrawerState> emit) async {
    emit(state.copyWith(progressCardPdf: ResponseClassify.initial()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getProgressCardPdfUsecase.call(ProgressCardPdfRequest(
          pCompId: user?.compId,
          pAcademicId: user?.academicId,
          pClassId: user?.classId,
          pMediumId: user?.medium,
          pDivisionId: user?.divisionId,
          pTermId: event.termId,
          pUserId: user?.usrId));
      emit(state.copyWith(progressCardPdf: ResponseClassify.completed(data)));
    } catch (e) {
      emit(state.copyWith(progressCardPdf: ResponseClassify.error(e)));
    }
  }
}
