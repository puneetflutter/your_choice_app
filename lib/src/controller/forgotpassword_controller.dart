import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import '../constants/app_fonts.dart';
import '../service/networks/auth_api_service/forgot_password_api_service.dart';

class ForfotPasswordController extends GetxController{
  
  ForgotPasswordApiService forgotPasswordApiService =ForgotPasswordApiService(); 

  forgotpassword({
    required String mobile,
  })async{
      dio.Response<dynamic>response = await forgotPasswordApiService.getForgotpassword(mobile: mobile);
      if(response.data['status']==true){
        Get.back();
      Get.rawSnackbar(
        backgroundColor: Colors.green,
        messageText: Text(
          response.data['message'],
            style: primaryFont.copyWith(color: Colors.white),
        )
      );
    }
    else{
      Get.rawSnackbar(
         backgroundColor: Colors.red,
          messageText: Text(
            "Something went wrong",
            style: primaryFont.copyWith(color: Colors.white),
          )
      );
     
      }
  }
}