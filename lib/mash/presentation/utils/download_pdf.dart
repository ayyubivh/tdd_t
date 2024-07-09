// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:mash/core/pretty_printer.dart';
// import 'package:path_provider/path_provider.dart';

// Future downloadFile(BuildContext context, String fileName) async {
//   if (fileName.isEmpty) {
//     prettyPrint('Error: File name is empty');
//     return;
//   }

//   Dio dio = Dio();

//   File? file;

//   try {
//     final dir = await getApplicationDocumentsDirectory();
//     file = File('${dir.path}/$fileName');

//     // if (await file.exists()) {
//     // return file.path;
//     // } else {
//     await dio.download(
//       fileName,
//       file.path,
//       onReceiveProgress: (count, total) {
//         var status = count / total * 100;
//         prettyPrint('--------downloading % ${status.toInt()}');
//       },
//     );
//     // }

//     return file.path;
//   } on DioException catch (err) {
//     prettyPrint('Error on downloading file: ${err.message}');
//   } on FileSystemException catch (err) {
//     prettyPrint('Error on downloading file: $err');
//   }
// }
