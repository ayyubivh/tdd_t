import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/notice_all_request.dart';
import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';
import 'package:mash/mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart';
import 'package:mash/mash/domain/use_cases/notice/notice_all_usecase.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../di/injector.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../router/app_pages.dart';
import '../../../utils/enums.dart';

part 'notice_bloc.freezed.dart';
part 'notice_event.dart';
part 'notice_state.dart';

@injectable
class NoticeBloc extends Bloc<NoticeEvent, NoticeState> {
  final GetNoticeBoardPopUp getNoticeBoardPopUp;
  final GetAllNoticeUseCase getAllNoticeUseCase;
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  NoticeBloc(this.getNoticeBoardPopUp, this.getAllNoticeUseCase)
      : super(NoticeState.initial()) {
    // on<_GetNoticePopUp>(_getNoticePopUp);
    on<_GetNoticeDetail>(_getNoticeDetail);
    on<_GetNoticeAllData>(_getNoticeAllData);
    on<_GetDisplayOrDownloadData>(_displayData);
  }

  // _getNoticePopUp(_GetNoticePopUp event, Emitter<NoticeState> emit) async {
  //   emit(state.copyWith(noticeResponseData: ResponseClassify.loading()));
  //   try {
  //     final userdata = await getUserInfoUseCase.call(NoParams());
  //     final data = await getNoticeBoardPopUp.call(NoticePopUpRequest(
  //         pCompId: userdata?.compId ?? "", noticeId: userdata?.classId ?? ""));
  //     emit(state.copyWith(
  //       noticeResponseData: ResponseClassify.completed(data),
  //     ));
  //   } catch (e) {
  //     emit(state.copyWith(
  //         noticeResponseData: ResponseClassify.error(e.toString())));

  //     prettyPrint(e.toString());
  //   }
  // }

  _getNoticeDetail(_GetNoticeDetail event, Emitter<NoticeState> emit) async {
    emit(state.copyWith(noticeResponseData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getAllNoticeUseCase.call(NoticeAllRequest(
        pCompId: userdata?.compId ?? "",
        // usertype: userdata?.userType ?? "",
        usertype: '2',
        noticeId: event.noticeId ?? '0',
        offset: '0',
        pLimit: '5',
      ));
      emit(state.copyWith(
        noticeResponseData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          noticeResponseData: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getNoticeAllData(_GetNoticeAllData event, Emitter<NoticeState> emit) async {
    emit(state.copyWith(noticeAllData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getAllNoticeUseCase.call(NoticeAllRequest(
        pCompId: userdata?.compId ?? "",
        usertype: '2',
        noticeId: '0',
        offset: '0',
        pLimit: '5',
      ));
      emit(state.copyWith(
        noticeAllData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(noticeAllData: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _displayData(
      _GetDisplayOrDownloadData event, Emitter<NoticeState> emit) async {
    var tempPath = await getApplicationDocumentsDirectory();
    prettyPrint('************ notice exist data ********');
    prettyPrint(event.notice.docFile);
    prettyPrint("temp Path : $tempPath");
    String path =
        "${tempPath.path}/mash docs/${event.notice.topicHead}.${event.notice.ext}";
    if (await File(path).exists()) {
      prettyPrint("file already exists opening type ${event.notice.ext}");
      switch (DocTypeExtension.fromString(event.notice.ext ?? "")) {
        case DocType.video:
          GoRouter.of(event.context)
              .pushNamed(AppPages.videoPlayer, pathParameters: {'url': path});
          break;
        case DocType.audio:
          GoRouter.of(event.context).pushNamed(AppPages.audioPlayer,
              pathParameters: {
                'audio': path,
                'title': event.notice.topicHead ?? ""
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
        case DocType.epub:
        // TODO: Handle this case.
      }
    } else {
      emit(state.copyWith(isLoading: true));
      File bookPath = await File(path).create(recursive: true);
      prettyPrint('******** notice display data **********');
      prettyPrint(event.notice.topicHead);
      prettyPrint(" book path : ${bookPath.path}");
      await Dio().download(event.notice.docFile ?? "", bookPath.path,
          onReceiveProgress: (received, total) {});
      emit(state.copyWith(isLoading: false));
      switch (DocTypeExtension.fromString(event.notice.ext ?? "")) {
        case DocType.video:
          GoRouter.of(event.context)
              .pushNamed(AppPages.videoPlayer, pathParameters: {'url': path});
          break;
        case DocType.audio:
          GoRouter.of(event.context).pushNamed(AppPages.audioPlayer,
              pathParameters: {
                'audio': path,
                'title': event.notice.topicHead ?? ""
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
        case DocType.epub:
      }
    }
  }
}
