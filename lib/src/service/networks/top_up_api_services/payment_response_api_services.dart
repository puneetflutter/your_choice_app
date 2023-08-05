import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_choice_app/src/service/base_urls/base_urls.dart';

class PayOrderResponseApiServices extends BaseApiService {
  Future getResponsePayOrder(int orderId) async {
    final prefs = await SharedPreferences.getInstance();
    String? authtoken = prefs.getString("auth_token");
    dynamic responseJson;

    try {
      var dio = Dio();
      var response = await dio.post(paymentOrderResponseURL,
          options: Options(
              headers: {
                'Authorization': 'Bearer $authtoken',
                'Content-Type': 'application/json',
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
          data: {"order_id": orderId});
      print(
          ":::::::<Pay order Response payment>:::::::::status checking code:::::::<Pay order Response api>:::::::");
      print(response.statusCode);
      if (response.statusCode != 500) {
        print(response);
      }

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
        break;
      case 401:
        break;

      case 403:
        break;

      case 404:
        break;

      case 500:
        break;

      default:
    }
  }
}
