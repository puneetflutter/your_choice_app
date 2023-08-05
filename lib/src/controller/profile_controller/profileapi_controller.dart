import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/view/auth_views/auth_landing_screen.dart';

import '../../constants/app_fonts.dart';
import '../../models/notification_list_model.dart';
import '../../models/profile_model.dart';
import '../../models/profileupdate_model.dart';
import '../../service/networks/notification_api_services/notification_list.dart';
import '../../service/networks/profile/createpin_api_service.dart';
import '../../service/networks/profile/password_api_service.dart';
import '../../service/networks/profile/profile_api_services.dart';
import '../../service/networks/profile/profileupdate_api_service.dart';
import '../../service/networks/profile/support_api_service.dart';

class ProfileApiController extends GetxController {
  RxBool isLoading = false.obs;
  GetNotificationListApi getNotificationLiistApi = GetNotificationListApi();
  GetProfileApiService getprofileapiservice = GetProfileApiService();
  List<ProfileData> profileData = [];

  RxString walletAmount = "0.00".obs;

  getprofile() async {
    profileData.clear();
    dio.Response<dynamic> response = await getprofileapiservice.GetProfile();

    if (response.statusCode != 401) {
      if (response.data["status"] == true) {
        ProfileModel profilemodel = ProfileModel.fromJson(response.data);
        walletAmount(profilemodel.walletAmount);
        profileData.add(profilemodel.data);
        update();
      } else {
        Get.rawSnackbar(
            message: response.data["message"], backgroundColor: Colors.red);
      }
    } else {
      Get.offAll(() => AuthLandingScreen());
    }
  }

  GetProfileUpdateApiService getprofileUpdateApiService =
      GetProfileUpdateApiService();

  profileUpdate({required ProfileUpdateModel profileUpdateModel}) async {
    isLoading(true);
    dio.Response<dynamic> response = await getprofileUpdateApiService
        .getprofileupdate(profileUpdateModel: profileUpdateModel);
    isLoading(false);
    if(response.data['status']==true){
      Get.rawSnackbar(
          backgroundColor: Colors.green,
          messageText: Text(
            "profile updated",
            style: primaryFont.copyWith(color: Colors.white),
          ));
    } else {
      Get.rawSnackbar(
          backgroundColor: Colors.red,
          messageText: Text(
            "Something went wrong",
            style: primaryFont.copyWith(color: Colors.white),
          ));
      print(response.statusCode);
    }
  }

  List<ListElement> notificationList = [];
  RxInt notificationCount = 0.obs;

  getNotificationList() async {
    dio.Response<dynamic> response =
        await getNotificationLiistApi.getNotifionListApi();

    if (response.statusCode == 201) {
      NotificationListModel notificationListModel =
          NotificationListModel.fromJson(response.data);
      notificationList = notificationListModel.data;
      //  notificationCount(notificationListModel.);
    }
    update();
  }

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

       PasswordApiService passwordApiService = PasswordApiService();

       password({
        required String password,
        required String confirm_password,
        required String userId,
       })async{
        dio.Response<dynamic> response = await passwordApiService.getPassword(
          password: password, 
          confirm_password: confirm_password, 
          userId: userId);
           print(response.data);  

          if(response.data['status'] == true){
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
       CreatepinApiService createpinApiService = CreatepinApiService();

       createpin({
        required String pinnumber,
       })
       async{
        dio.Response<dynamic> response = await createpinApiService.createapiservice(
          pinnumber: pinnumber);
          print(response.data);
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
