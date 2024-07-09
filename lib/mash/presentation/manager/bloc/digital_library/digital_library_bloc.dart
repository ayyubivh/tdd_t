import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/use_cases/academic/get_academic_type_use_case.dart';
import 'package:mash/mash/domain/use_cases/academic/insert_dl_click_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:vocsy_epub_viewer/epub_viewer.dart';

import '../../../../data/remote/request/academic_comp_id_request.dart';
import '../../../../data/remote/request/di_type_request.dart';
import '../../../../data/remote/request/digital_library_request.dart';
import '../../../../data/remote/request/insert_dl_click.dart';
import '../../../../domain/entities/academic/class_details_entity.dart';
import '../../../../domain/entities/dashboard/digital_library_entity.dart';
import '../../../../domain/use_cases/academic/get_class_details_usecase.dart';
import '../../../../domain/use_cases/academic/get_digital_library_use_case.dart';
import '../../../router/app_pages.dart';
import '../../../utils/enums.dart';

part 'digital_library_bloc.freezed.dart';
part 'digital_library_event.dart';
part 'digital_library_state.dart';

@lazySingleton
@injectable
class DigitalLibraryBloc
    extends Bloc<DigitalLibraryEvent, DigitalLibraryState> {
  DigitalLibraryBloc() : super(DigitalLibraryState.initial()) {
    on<_GetClasses>(_getClasses);
    on<_SelectClass>(_selectClass);
    on<_SeachNonAcademic>(_searchNonAcademic);
    on<_SeachAcademic>(_searchAcademic);
    on<_GetAcademicLibrary>(_getAcademicLibrary);
    on<_GetLibrary>(_getLibrary);
    on<_GetTypes>(_getTypes);
    on<_InsertDlClick>(_insertDlClick);
    on<_GetNonAcademic>(_getNonAcademic);
    on<_SelectNonAcademicType>(_selectNonAcademicType);
    on<_SelectMedium>(_selectMedium);
    on<_SelectSubCat>(_selectSubCat);
    on<_GetResearch>(_getResearch);
    on<_StartSearch>(_startSearch);
    on<_CloseSearch>(_closeSearch);
    on<_ReadBook>(_readBook);
    on<_GetUserActivity>(_getUserActivity);
  }

  _getClasses(_GetClasses event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(getClasses: ResponseClassify.loading()));
    try {
      LoginResTableEntity? loginRes = await loginInfo.call(NoParams());
      if (loginRes != null) {
        var getClass = await getClassUseCase.call(AcademicAndCompIdRequest(
            pAcademicId: loginRes.academicId ?? "", pCompID: loginRes.compId));
        emit(state.copyWith(getClasses: ResponseClassify.completed(getClass)));
        if (getClass.isNotEmpty) {
          add(DigitalLibraryEvent.selectClass(getClass.first));
        }
      }
    } catch (e) {
      emit(state.copyWith(getClasses: ResponseClassify.error(e)));
    }
  }

  //use cases

  final getClassUseCase = getIt<GetClassInforUseCase>();
  final loginInfo = getIt<GetUserInfoUseCase>();
  final getDigitalLibraryUseCase = getIt<DigitalLibraryUseCase>();
  final getTypes = getIt<GetAcademicTypesUseCase>();
  final insertDlUseCase = getIt<InsertDlClickUseCase>();

  _selectClass(_SelectClass event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(selectedClass: event.selected));
    var loginData = await loginInfo.call(NoParams());
    var request = DigitalLibraryRequest(
      pCompId: loginData?.compId ?? "",
      pUserId: loginData?.usrId ?? "",
      pModuleName: 'DL_ACADEMIC_CONTENT_MOB',
      prmContentId: "-1",
      prmIsActive: '1',
      prmTypeId: '2',
      prmSubId: '-1',
      prmSearchTxt: '',
      prmClassId: event.selected.classId,
      prmOffset: 0,
      prmLimit: 10,
    );
    prettyPrint(request.toJson().toString());
    add(DigitalLibraryEvent.getLibrary(request));
  }

  _getLibrary(_GetLibrary event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(getLibrary: ResponseClassify.loading()));
    try {
      prettyPrint(event.request.toJson().toString());
      emit(state.copyWith(
          getLibrary: ResponseClassify.completed(
              await getDigitalLibraryUseCase.call(event.request))));
    } catch (e) {
      emit(state.copyWith(getLibrary: ResponseClassify.error(e)));
    }
  }

  static DigitalLibraryBloc get(context) => BlocProvider.of(context);

  _getTypes(_GetTypes event, Emitter<DigitalLibraryState> emit) async {
    if (event.moduleName == "SUBCATEGORY_LIST") {
      emit(state.copyWith(subCats: ResponseClassify.loading()));
    } else {
      if (event.moduleName == "DL_TYPE" && event.pJson == "0") {
        emit(state.copyWith(mediums: ResponseClassify.loading()));
      } else {
        emit(state.copyWith(getTypes: ResponseClassify.loading()));
      }
    }
    try {
      var loginData = await loginInfo.call(NoParams());
      var response = await getTypes.call(DlTypeRequest(
          pCompId: loginData?.compId ?? "",
          pUserId: loginData?.usrId ?? "",
          pModuleName: event.moduleName,
          pJson: event.pJson));
      prettyPrint(DlTypeRequest(
              pCompId: loginData?.compId ?? "",
              pUserId: loginData?.usrId ?? "",
              pModuleName: event.moduleName,
              pJson: event.pJson)
          .toJson()
          .toString());
      if (event.moduleName == "SUBCATEGORY_LIST") {
        prettyPrint("data length :${response.length}");
        emit(state.copyWith(subCats: ResponseClassify.completed(response)));
      } else {
        if (event.moduleName == "DL_TYPE" && event.pJson == "0") {
          emit(state.copyWith(mediums: ResponseClassify.completed(response)));
        } else {
          emit(state.copyWith(getTypes: ResponseClassify.completed(response)));
        }
      }
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(getTypes: ResponseClassify.error(e)));
    }
  }

  _getNonAcademic(
      _GetNonAcademic event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
      pCompId: loginData?.compId ?? "",
      pUserId: loginData?.usrId ?? "",
      pModuleName: "DL_NON_ACADEMIC_CONTENT_MOB",
      prmIsActive: "1",
      prmLimit: 10,
      prmOffset: 0,
      prmContentId: "-1",
      prmTypeId: event.typeId,
      prmCatId: event.catId ?? "-1",
      prmSubCatId: event.catId ?? "-1",
      prmLangId: "-1",
      prmSearchTxt: "",
      prmUserType: loginData?.userType,
    )));
  }

  _selectNonAcademicType(
      _SelectNonAcademicType event, Emitter<DigitalLibraryState> emit) {
    if (state.getTypes == null) {
      add(const DigitalLibraryEvent.getTypes(
          "SUBCATEGORY_LIST", "1")); //getting sub category list
    }
    if (state.subCats == null) {
      add(const DigitalLibraryEvent.getTypes(
          "DL_TYPE", "0")); //getting medium list
    }

    switch (event.selected) {
      case NonAcademicTypes.all:
        if (state.selectedNonAcademic != NonAcademicTypes.all) {
          add(const DigitalLibraryEvent.getNonAcademic(typeId: "-1"));
        }
        break;
      case NonAcademicTypes.fiction:
        if (state.selectedNonAcademic != NonAcademicTypes.fiction) {
          if (state.selectedSubCat != null || state.selectedMedium != null) {
            add(DigitalLibraryEvent.getNonAcademic(
                typeId: state.selectedMedium?.typeId ??
                    state.selectedSubCat?.typeId,
                catId: "1"));
          }
        }
        break;
      case NonAcademicTypes.non_fiction:
        if (state.selectedNonAcademic != NonAcademicTypes.non_fiction) {
          if (state.selectedSubCat != null || state.selectedMedium != null) {
            add(DigitalLibraryEvent.getNonAcademic(
                typeId: state.selectedMedium?.typeId ??
                    state.selectedSubCat?.typeId,
                catId: "2"));
          }
        }
        break;
      case NonAcademicTypes.bookmarks:
        if (state.selectedNonAcademic != NonAcademicTypes.bookmarks) {
          if (state.selectedSubCat != null || state.selectedMedium != null) {
            add(DigitalLibraryEvent.getNonAcademic(
                typeId: state.selectedMedium?.typeId ??
                    state.selectedSubCat?.typeId));
          }
        }
        break;
    }
    emit(state.copyWith(selectedNonAcademic: event.selected));
    // add(event)
  }

  _selectSubCat(_SelectSubCat event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(selectedSubCat: event.selected, selectedMedium: null));

    add(DigitalLibraryEvent.getNonAcademic(typeId: event.selected?.typeId));
  }

  _selectMedium(_SelectMedium event, Emitter<DigitalLibraryState> emit) {
    emit(state.copyWith(selectedMedium: event.selected, selectedSubCat: null));
    add(DigitalLibraryEvent.getNonAcademic(typeId: event.selected?.typeId));
  }

  _getResearch(_GetResearch event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
        pCompId: "200001",
        pUserId: "MGS1000152",
        pModuleName: "DL_RESEARCH_CONTENT_MOB",
        pSearchTxt: "",
        pResearchId: "0",
        pUserType: "2")));
  }

  _readBook(_ReadBook event, Emitter<DigitalLibraryState> emit) async {
    add(DigitalLibraryEvent.insertDlClick(
        contentId: event.book.contentId ?? "", moduleName: ""));
    var tempPath = await getApplicationDocumentsDirectory();
    prettyPrint("temp Path : $tempPath");
// File(tempPath.path).
    String path =
        "${tempPath.path}/mash docs/${event.book.contentName}.${event.book.docExt}";
//     String path = "${tempPath.path}/mash docs/test.epub";
    if (await File(path).exists()) {
      prettyPrint("file already exists opening type ${event.book.docExt}");
      switch (DocTypeExtension.fromString(event.book.docExt ?? "")) {
        case DocType.video:
          GoRouter.of(event.context)
              .pushNamed(AppPages.videoPlayer, pathParameters: {'url': path});
          break;
        case DocType.audio:
          GoRouter.of(event.context).pushNamed(AppPages.audioPlayer,
              pathParameters: {
                'audio': path,
                'title': event.book.contentName ?? ""
              });
        case DocType.pdf:
          GoRouter.of(event.context)
              .pushNamed(AppPages.pdfViewScreen, extra: path);
        case DocType.image:
          var imageProvider = FileImage(File(path));
          showImageViewer(event.context, imageProvider, onViewerDismissed: () {
            print("dismissed");
          });
        case DocType.other:
        // TODO: Handle this case.
        // case DocType.epub:
        //   VocsyEpub.setConfig(
        //     themeColor: Theme.of(event.context).primaryColor,
        //     identifier: event.book.contentName ?? "",
        //     scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        //     allowSharing: true,
        //     enableTts: true,
        //     nightMode: true,
        //   );

        //   VocsyEpub.open(
        //     path,
        //     // first page will open up if the value is null
        //   );
        case DocType.epub:
        // TODO: Handle this case.
      }
    } else {
      emit(state.copyWith(isLoading: true));
      File bookPath = await File(path).create(recursive: true);

      prettyPrint(event.book.docName);
      prettyPrint(" book path : ${bookPath.path}");
      await Dio().download(event.book.docName ?? "", bookPath.path,
          onReceiveProgress: (received, total) {
        // Calculate the progress percentage
      });
      emit(state.copyWith(isLoading: false));
      switch (DocTypeExtension.fromString(event.book.docExt ?? "")) {
        case DocType.video:
          GoRouter.of(event.context)
              .pushNamed(AppPages.videoPlayer, pathParameters: {'url': path});
          break;
        case DocType.audio:
          GoRouter.of(event.context).pushNamed(AppPages.audioPlayer,
              pathParameters: {
                'audio': path,
                'title': event.book.contentName ?? ""
              });
        case DocType.pdf:
          GoRouter.of(event.context)
              .pushNamed(AppPages.pdfViewScreen, extra: path);
        case DocType.image:
          var imageProvider = FileImage(File(path));
          showImageViewer(event.context, imageProvider, onViewerDismissed: () {
            print("dismissed");
          });
        case DocType.other:
        // TODO: Handle this case.
        case DocType.epub:
        // VocsyEpub.setConfig(
        //   themeColor: Theme.of(event.context).primaryColor,
        //   identifier: event.book.contentName ?? "",
        //   scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        //   allowSharing: true,
        //   enableTts: true,
        //   nightMode: true,
        // );

        // VocsyEpub.open(
        //   path,
        //   // first page will open up if the value is null
        // );
      }
    }
  }

  _getAcademicLibrary(
      _GetAcademicLibrary event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
        pCompId: loginData?.compId ?? "",
        pUserId: loginData?.usrId ?? "",
        pModuleName: "DL_ACADEMIC_CONTENT_MOB",
        prmContentId: "-1",
        prmIsActive: "1",
        prmTypeId: event.typeId,
        prmClassId: "-1",
        prmSubId: "-1",
        prmSearchTxt: "",
        prmOffset: 0,
        prmLimit: 10)));
  }

  _searchAcademic(
      _SeachAcademic event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
        pCompId: loginData?.compId ?? "",
        pUserId: loginData?.usrId ?? "",
        pModuleName: "DL_ACADEMIC_CONTENT_MOB",
        prmContentId: "-1",
        prmIsActive: "1",
        prmTypeId: "-1",
        prmClassId: "-1",
        prmSubId: "-1",
        prmSearchTxt: event.search,
        prmOffset: 0,
        prmLimit: 10)));
  }

  _searchNonAcademic(
      _SeachNonAcademic event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
        pCompId: loginData?.compId ?? "",
        pUserId: loginData?.usrId ?? "",
        pModuleName: "DL_ACADEMIC_CONTENT_MOB",
        prmContentId: "-1",
        prmIsActive: "1",
        prmTypeId: "-1",
        prmClassId: "-1",
        prmSubId: "-1",
        prmSearchTxt: event.search,
        prmOffset: 0,
        prmLimit: 10)));
  }

  _startSearch(_StartSearch event, Emitter<DigitalLibraryState> emit) {
    prettyPrint("___STARTING SEARCH----");
    emit(state.copyWith(isSearching: true));
  }

  _closeSearch(_CloseSearch event, Emitter<DigitalLibraryState> emit) {
    prettyPrint("___STOPPING SEARCH___");
    emit(state.copyWith(isSearching: false));
  }

  _insertDlClick(
      _InsertDlClick event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(insertDlClick: ResponseClassify.loading()));
    try {
      var loginData = await loginInfo.call(NoParams());
      emit(state.copyWith(
          insertDlClick: ResponseClassify.completed(await insertDlUseCase.call(
              BookmarkLikeModel(
                  pCompId: loginData?.compId ?? "",
                  pUserId: loginData?.usrId ?? "",
                  pModuleName: event.moduleName ?? "",
                  prmContentId: event.contentId ?? "",
                  prmUserType: loginData?.userType ?? "",
                  prmFromMob: "1",
                  prmBookmark: event.bookmark ?? "",
                  prmLike: event.like ?? "")))));
    } catch (e) {
      emit(state.copyWith(insertDlClick: ResponseClassify.error(e)));
    }
  }

  _getUserActivity(
      _GetUserActivity event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
        pCompId: loginData?.compId ?? "",
        pUserId: loginData?.usrId ?? "",
        pModuleName: "USER_ACTIVITY_MOB",
        prmOffset: 0,
        prmSearchTxt: "",
        prm_usr_act_id: "0",
        prm_viewmine: "0")));
  }
}
