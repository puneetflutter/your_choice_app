import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:your_choice_app/src/service/base_urls/base_urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetProfileApiService extends BaseApiService{

  Future GetProfile()async{
   dynamic responseJson;
   
   try{
    var dio=Dio();
    final prefs = await SharedPreferences.getInstance();
     String? authtoken = prefs.getString('auth_token');
    //  String? authtoken ='22|SYqP3AHUZngRKhd0hm8L7cpmNJvJJyFtSlHC5sBc';
     String? id = prefs.getString('id');

     var response = await dio.get(
      "$getProfileURL/1",
      options: Options(
        headers: {
          'Accept':'Application/json',
          'Authorization':'Bearer $authtoken',

        },
        followRedirects: false,
        validateStatus: (status) {
          return status! <=500;
        },
      )
     );
    print(':::::::::::<Profile Api>::::::::status code:::::::::::::');
    print(response.statusCode);
    print(response.data);
    responseJson=response;

   }on SocketException{
    print('No Internet');
   }

   return responseJson;
  }
  dynamic returnResponse(Response<dynamic> response){
    switch(response.statusCode){
      case 200:
      dynamic responseJson = response.data;
      print('here.>>>>>>');
        return responseJson;
       // throw BadRequestException(response.body.toString());
       case 400:
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