
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart'as dio;
import '../../constants/app_fonts.dart';
import '../../models/add_new_model.dart';
import '../../service/networks/pay_api_service/add_newpay_api_service.dart';

class AddnewpayController extends GetxController{
   RxBool isLoading = false.obs;
  AddnewPayApiService addnewPayApiService = AddnewPayApiService();

  addnewpay({
    required AddnewModel addnewModel
  })
  async{
   isLoading(true);
   dio.Response<dynamic>response = await addnewPayApiService.addnewpayapiservice(
    addnewModel: addnewModel); 
     isLoading(false);
     if(response.data['status']==true){
      Get.rawSnackbar(
        backgroundColor: Colors.green,
        messageText: Text(
            "profile updated",
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
      print(response.statusCode);
    }
  }
}