import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_choice_app/src/service/base_urls/base_urls.dart';

class PayOrderApiServices extends BaseApiService {
  Future createPayOrder({required int id}) async {
    final prefs = await SharedPreferences.getInstance();
    String? authtoken = prefs.getString("authToken");
    dynamic responseJson;
    try {
      var dio = Dio();
      var response = await dio.post(payOrderURL,
          options: Options(
              headers: {
                'Authorization': 'Bearer $authtoken',
                'Content-Type': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {"orderId": id});
      print(
          ":::::::<Pay order payment>:::::::::status code:::::::<Pay order api>:::::::");
      print(response.statusCode);
      responseJson = response.data;
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
