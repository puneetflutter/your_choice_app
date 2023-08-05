import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../base_urls/base_urls.dart';

class CreatepinApiService extends BaseApiService{
  
Future createapiservice({
  required String pinnumber,
})
async{
  dynamic responseJson;
   try{
    var dio =Dio();
     final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString('auth_token');

      var response = await dio.post(
        createpinURL,
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
          'pinnumber':pinnumber
        }
      );
      print(':::::::::::create pin api:::::::::::<status code>::::::::::::');
      print(response.data);
      print(response.statusCode);
      responseJson = response;
   }
   on SocketException{
    print('no internet');
   }
   return responseJson;
}
dynamic returnResponse(Response<dynamic>response){
 switch (response.data){
  case 200:
  dynamic responseJson = response.data;
  print('here.>>>>>');
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