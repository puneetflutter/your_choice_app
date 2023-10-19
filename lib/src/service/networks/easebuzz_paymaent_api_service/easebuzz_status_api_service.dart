import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../base_urls/base_urls.dart';

class EasebuzzStatusApiService extends BaseApiService {
  Future easebuzzStatusApiService(
      {required String orderId}) async {
    dynamic responseJson;
    try {
      var dio = Dio();
       final prefs = await SharedPreferences.getInstance();
       String? authtoken = prefs.getString("auth_token");

      var response = await dio.post(
        easebuzzStsApiUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $authtoken',
            'Accept': 'application/json',
          },
          followRedirects: false,
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
        data: {"orderId": orderId},
      );
      print("::::::::<Easebuzz payment status Api>::::::::status code::::::$orderId::::");
      print(response.statusCode);
      print(authtoken);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }

  dynamic returnResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        print("here.>>>>>>>>>>>>");
        return responseJson;
      case 400:
      // throw BadRequestException(response.body.toString());
      case 401:
      case 403:
      // throw UnauthorisedException(response.body.toString());
      case 404:
      // throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      // throw FetchDataException(
      //     'Error occured while communication with server' +
      //         ' with status code : ${response.statusCode}');
    }
  }
}
