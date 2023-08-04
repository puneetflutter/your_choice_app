import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../base_urls/base_urls.dart';

class CreateSupportApiService extends BaseApiService{
  
  Future createSupport({
    required String name,
    required String email,
    required String message,
  })
async{
  dynamic responseJson;
  try{
    var dio = Dio();
    final prefs = await SharedPreferences.getInstance();
    String? authtoken = prefs.getString('auth_token');

    var response = await dio.post(getsupportURL,
    options: Options(
      headers: {
         'Authorization': 'Bearer $authtoken'
      },
      followRedirects: false,
      validateStatus: (status) {
        return status! <=500;
      },
      
    ),
    data: {
      	"name":name,
        "message":message, 	
        "email":email,   				
    }
    ); 
    print('::::::::::::<create support api>::::::::::status code::::::::::::');
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