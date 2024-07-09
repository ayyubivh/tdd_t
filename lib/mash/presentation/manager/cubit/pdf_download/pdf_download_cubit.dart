import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/core/response_classify.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../core/pretty_printer.dart';
import '../../../utils/helper_classes.dart';

part 'pdf_download_state.dart';
part 'pdf_download_cubit.freezed.dart';

class PdfDownloadCubit extends Cubit<PdfDownloadState> {
  PdfDownloadCubit() : super(PdfDownloadState.initial());

  downloadPdf({required String filePath, required String document}) async {
    emit(state.copyWith(pdfDownloadResponse: ResponseClassify.loading()));
    HelperClasses.showSnackBar(msg: 'Downloading......');
    if (filePath.isEmpty) {
      prettyPrint('Error: File path is empty');
      emit(state.copyWith(
          pdfDownloadResponse: ResponseClassify.error('File path is empty')));
      return;
    }

    try {
      final dir = await getApplicationDocumentsDirectory();
      final path = "${dir.path}/mash_docs/$document.pdf";

      if (await File(path).exists()) {
        emit(state.copyWith(
            pdfDownloadResponse: ResponseClassify.completed(path)));
      } else {
        var file = await File(path).create(recursive: true);
        final res = await Dio().download(
          filePath,
          file.path,
          onReceiveProgress: (count, total) {
            var progress = count / total * 100;
            emit(state.copyWith(pdfDownloadProgressState: progress.toInt()));
          },
        );

        if (res.statusCode == 200) {
          emit(state.copyWith(
            pdfDownloadProgressState: 0,
            pdfDownloadResponse: ResponseClassify.completed(path),
          ));
          prettyPrint(
              'Success: File downloaded to ${state.pdfDownloadResponse.data}');
        } else {
          emit(state.copyWith(
              pdfDownloadResponse:
                  ResponseClassify.error('Failed to download file')));
        }
      }
    } on DioException catch (dioErr) {
      emit(state.copyWith(
          pdfDownloadProgressState: 0,
          pdfDownloadResponse: ResponseClassify.error(dioErr.message)));
      prettyPrint('DioError: $dioErr');
    } on Exception catch (err, stackTrace) {
      emit(state.copyWith(
          pdfDownloadProgressState: 0,
          pdfDownloadResponse: ResponseClassify.error('An error occurred')));
      prettyPrint('Error: $err\nStacktrace: $stackTrace');
    }
  }
}
