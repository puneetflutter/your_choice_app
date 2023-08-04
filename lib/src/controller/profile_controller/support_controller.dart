import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import '../../constants/app_fonts.dart';
import '../../service/networks/auth_api_service/profile/support_api_service.dart';

class CreateSupportController extends GetxController{

CreateSupportApiService createsupportapiservice = CreateSupportApiService();

createsupport({
  required String name,
  required String email,
  required String  message,
})
async{
  dio.Response<dynamic> response = await createsupportapiservice.createSupport(
    name: name, 
    email: email, 
    message: message);
    if(response.data["status"] == true){
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