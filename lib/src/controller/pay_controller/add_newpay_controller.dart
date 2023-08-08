
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart'as dio;
import '../../constants/app_fonts.dart';
import '../../models/add_new_model.dart';
import '../../models/getpay_model.dart';
import '../../service/networks/pay_api_service/add_newpay_api_service.dart';
import '../../service/networks/pay_api_service/delete_pay_api_service.dart';
import '../../service/networks/pay_api_service/getpay_api_service.dart';

class payController extends GetxController{
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
      update();
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
  GetpayApiService getpayApiService = GetpayApiService();

  List <GetpaylistData> getpaydata=[]; 

  getnewpay()async{
    getpaydata.clear();
    dio.Response<dynamic> response= await getpayApiService.Getpayapiservice();
    if(response.data['status']==true){
    GetpayModel getpayModel = GetpayModel.fromJson(response.data);
      getpaydata=getpayModel.data.data;
      update();
    }
    else{
      Get.rawSnackbar(
         message: response.data["message"],
        backgroundColor: Colors.red
      );
    }
    update();
  }
  
  DeletepayAPiSerice deletepayAPiSerice = DeletepayAPiSerice();

  deletepay({required String id,})async{
   dio.Response<dynamic> response = await deletepayAPiSerice.deletepayservice(id: id);
   if(response.data['status']==true){
    getnewpay();
   } else {
        Get.rawSnackbar(
         message: response.data["message"],
        backgroundColor: Colors.red
      );
}
  }

}