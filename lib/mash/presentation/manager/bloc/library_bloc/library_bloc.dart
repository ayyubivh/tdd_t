import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/get_physical_library_request.dart';
import 'package:mash/mash/data/remote/request/get_required_library_data_request.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/library/physical_library_use_case.dart';
import 'package:mash/mash/domain/use_cases/library/required_pysical_library_data_usecase.dart';
import 'package:mash/mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart';

import '../../../../../core/usecase.dart';
import '../../../../data/remote/request/insert_physical_library_request.dart';
import '../../../../domain/use_cases/library/post_physical_library_request.dart';

part 'library_event.dart';
part 'library_state.dart';
part 'library_bloc.freezed.dart';

@injectable
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc() : super(LibraryState.initial()) {
    on<LibraryEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<_GetPhysicalLibrary>(_getPhysicalLibraryItems);
    on<_GetPhysicalLibraryFilterData>(_getPhysicalLibraryFilterData);
    on<_PostBookRequest>(_postPhysicalLibraryRequest);
  }

  final GetPhysicalLibraryUseCase getPhysicalLibraryUseCase =
      getIt<GetPhysicalLibraryUseCase>();
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final GetRequiredPhysicalLibraryDataUseCase
      getRequiredPhysicalLibraryDataUseCase =
      getIt<GetRequiredPhysicalLibraryDataUseCase>();
  final PostPhysicalLibraryUseCase  postBookRequest = getIt<PostPhysicalLibraryUseCase>();


   _getPhysicalLibraryItems(
      _GetPhysicalLibrary event, Emitter<LibraryState> emit) async {
    emit(state.copyWith(getPhysicalLibrary: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      // var reqData = await getRequiredPhysicalLibraryDataUseCase.call(params);
      var response = await getPhysicalLibraryUseCase.call(
          GetPhysicalLibraryRequest(
              pCompId: loginInfo?.compId ?? '',
              prmLanguageId: event.prmLangId ?? '',
              prmAuthorId: event.prmAuthId ?? '',
              prmSearch: event.prmSearch ?? '',
              prmBookDtlsId: '-1',
              prmOffset: '0',
              prmLimit: '50'));
      emit(state.copyWith(
          getPhysicalLibrary: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getPhysicalLibrary: ResponseClassify.error(e)));
    }
  }

   _getPhysicalLibraryFilterData(
      _GetPhysicalLibraryFilterData event, Emitter<LibraryState> emit) async {
    emit(state.copyWith(getRequiredFilterData: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getRequiredPhysicalLibraryDataUseCase.call(
          GetRequiredLibraryDataRequest(
              pCompId: loginInfo?.compId ?? '', pSearch: '-1'));
      emit(state.copyWith(
          getRequiredFilterData: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getRequiredFilterData: ResponseClassify.error(e)));
    }
  }

  static LibraryBloc get(context) => BlocProvider.of(context);

 _postPhysicalLibraryRequest(_PostBookRequest event, Emitter<LibraryState> emit) async {
   emit(state.copyWith(postPhysicalLibraryRequest: ResponseClassify.loading()));
   try{
     var loginInfo = await getUserInfoUseCase.call(NoParams());
     var response = await postBookRequest.call(InsertPhysicalLibraryRequest(pBookDtlId: event.bookId ?? '', pCompId: loginInfo?.compId ?? '', pUserType: loginInfo?.userType ?? ''));
     emit(state.copyWith(postPhysicalLibraryRequest: ResponseClassify.completed(response)));
   }catch(e){
     emit(state.copyWith(postPhysicalLibraryRequest: ResponseClassify.error(e)));
   }
 }
  }

