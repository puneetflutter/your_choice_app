import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_choice_app/src/service/base_urls/base_urls.dart';

class PasswordApiService extends BaseApiService{

  Future getPassword({
    required String password,
    required String confirm_password,
    required String userId,
  })async{
    dynamic responseJson;
   try{
    var dio =Dio();
    final prefs = await SharedPreferences.getInstance();
     String? authtoken = prefs.getString('auth_token');

     //paasing method
     String? id = prefs.getString('id');

     var response = await dio.post(
      getpasswordURL,
      options: Options(
        headers: {
          'Authorization':'Baerer$authtoken'
          
        },
        followRedirects: false,
         validateStatus: (status) {
           return status!<=500;
         },
      ),
      data: {
        "password":password,
        "confirm_password":confirm_password,
         "userId":id,          
      }
     
     );
     print(':::::::::<password api>::::::::::<status code>::::$password::::::$confirm_password:::::::$userId::::::::');
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
    switch(response.statusCode){
    case 200:
    dynamic responseJson = response.data;
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