
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_choice_app/src/service/base_urls/base_urls.dart';

class ForgotPasswordApiService extends BaseApiService{

  Future getForgotpassword({
    required String mobile,
  })async{
    dynamic responseJson;
    try{
       var dio=Dio();
       final prefs = await SharedPreferences.getInstance();
       String? authtoken = prefs.getString('auth_token');
        var response = await dio.post(forgotPasswordURL,
        options: Options(
          headers: {
             'Authorization': 'Bearer $authtoken'
          },
          followRedirects: false,
          validateStatus: (status) {
            return status !<=500;
          },
        ),
        data: {
           "mobile":mobile,
        }
        ); 
        print('::::::::::<forgot password api>:::::::::::<status code>::::::::::::');
        print(response.statusCode);
        print(response.data);
        responseJson = response;
    }
    on SocketException{
      print('no internet');
    }
    return responseJson;
  }
  dynamic returnResponse(Response<dynamic>response){
    switch (response.statusCode){
      case 200:
      dynamic responseJson = response.data;
      print('here.>>>');
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