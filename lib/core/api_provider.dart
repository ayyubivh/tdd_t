import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:xml/xml.dart';

import '../mash/data/remote/routes/app_remote_routes.dart';
import '../mash/data/remote/routes/local_storage_name.dart';
import 'custom_exception.dart';
import 'hive_service.dart';

@Singleton()
class ApiProvider {
  late Dio _dio;

  ApiProvider() {
    _dio = Dio(
      BaseOptions(
        validateStatus: (status) {
          return true;
        },
        followRedirects: false,
        headers: {
          "access-control-allow-origin": "*",
          // "Access-Control-Allow-Origin": "*",
          // "Access-Control-Allow-Credentials": false,
          'Content-Type': 'application/json'
        },
        baseUrl: AppRemoteRoutes.baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
    if (!kIsWeb) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
  }
  addToken() async {
    List<String> token = await HiveService().getBoxes<String>(
      LocalStorageNames.token,
    );

    if (token.isNotEmpty) {
      prettyPrint('token ${token.first}');
      _dio.options.headers.addAll({
        'Authorization': token.first,
      });
    }
  }

  Stream<double> downloadFile({required File file, required String url}) {
    final StreamController<double> progressController =
        StreamController<double>();

    _dio.download(
      url,
      file.path,
      onReceiveProgress: (count, total) {
        if (total != -1) {
          double progress = (count / total * 100);
          progressController.add(progress);
          prettyPrint('prodgress $progress');
        }
      },
    ).then((_) {
      progressController.close();
    }).catchError((e) {
      progressController
          .addError(BadRequestException("Unable to download file. Try again"));
      progressController.close();
    });

    return progressController.stream;
  }

  Future<Map<String, dynamic>> get(String endPoint,
      {Map<String, dynamic>? body}) async {
    try {
      await addToken();

      prettyPrint(
          "GETTING RESPONSE WITH HEADERS ${_dio.options.headers.toString()}");
      final Response response = await _dio.get(
        endPoint,
        data: body,
      );
      prettyPrint("request url [GET]: ${response.realUri} $response");
      final Map<String, dynamic> responseData = classifyResponse(response);

      return responseData;
    } on DioException catch (err) {
      prettyPrint(err.toString(), type: PrettyPrinterTypes.error);
      throw BadRequestException();
    }
  }

  Future<Map<String, dynamic>> delete(String endPoint) async {
    try {
      await addToken();
      prettyPrint(_dio.options.headers.toString());
      final Response response = await _dio.delete(
        endPoint,
      );
      prettyPrint("getting response${response.realUri}");
      final Map<String, dynamic> responseData = classifyResponse(response);
      return responseData;
    } on DioException catch (err) {
      prettyPrint(err.toString(), type: PrettyPrinterTypes.error);
      return {};
    }
  }

  Future<String> postXml(String endPoint, XmlDocument xmlBody) async {
    prettyPrint("on post call$endPoint ${xmlBody.toXmlString(pretty: true)}");

    try {
      // await addToken();

      final Response response = await Dio(BaseOptions(
        baseUrl: AppRemoteRoutes.baseUrlVendor,
        headers: {
          'apiKey': AppConstants.trackerApiKey,
          'Content-Type': 'application/xml',
          'Accept': 'application/xml',
        },
      )).post(
        endPoint,
        data: xmlBody.toXmlString(),
      );

      prettyPrint("getting response xml $response");

      // Check the status code
      if (response.statusCode == 200) {
        final XmlDocument responseData = XmlDocument.parse(response.data);
        prettyPrint(responseData.toXmlString(pretty: true));
        return classifyXmlResponse(responseData);
      } else {
        throw BadRequestException(
            "Request failed with status: ${response.statusCode}");
      }
    } on DioException catch (err) {
      prettyPrint(err.toString());
      throw FetchDataException("internetError");
    }
  }

  Future<Map<String, dynamic>> post(String endPoint, Map<String, dynamic> body,
      {FormData? formBody}) async {
    prettyPrint("on post call$body");
    try {
      await addToken();

      final Response response = await _dio.post(
        endPoint,
        data: formBody ?? body,
      );

      prettyPrint("getting response${response.data}");
      final Map<String, dynamic> responseData = classifyResponse(response);
      prettyPrint(responseData.toString());
      return responseData;
    } on DioException catch (err) {
      prettyPrint(err.toString());
      throw FetchDataException("internetError");
    }
  }

  Future<Map<String, dynamic>> put(
      String endPoint, Map<String, dynamic> body) async {
    prettyPrint("on post call");
    try {
      await addToken();
      final Response response = await _dio.put(
        endPoint,
        data: body,
      );

      final Map<String, dynamic> responseData = classifyResponse(response);

      return responseData;
    } on DioException catch (err) {
      prettyPrint(err.message, type: PrettyPrinterTypes.error);
      throw FetchDataException("internetError");
    }
  }

  // Future<Uint8List> download({required String imageUrl}) async {
  //   final tempStorage = await getTemporaryDirectory();
  //   final data = await _dio.download(imageUrl, tempStorage.path);
  //   final d = data.data;
  // }

  Map<String, dynamic> classifyResponse(Response response) {
    // try {
    // log(response.data);
    final Map<String, dynamic> responseData =
        response.data as Map<String, dynamic>;
    String errorMsg = "";
    try {
      // errorMsg=responseData["error"][""]
      var error = responseData["statusMessage"];
      if (error is List) {
        var allErrors = error.map((item) => item["message"]);
        String errorString = "";
        for (var i in allErrors) {
          errorMsg = "$errorString$i,";
        }
      } else {
        errorMsg = error.toString();
      }
    } catch (e) {
      errorMsg = responseData.toString();
    }
    switch (response.statusCode) {
      case 200:
      case 201:
        return responseData;
      case 400:
        throw BadRequestException(errorMsg);
      case 404:
        throw BadRequestException(errorMsg);
      case 401:
        throw UnauthorisedException(errorMsg);
      case 403:
        throw BadRequestException(errorMsg);
      case 409:
        throw DeleteConflictException(errorMsg);
      case 500:
      default:
        throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
        );
    }
  }
}

String classifyXmlResponse(XmlDocument response) {
  return response.toXmlString();
}
