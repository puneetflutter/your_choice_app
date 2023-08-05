import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_fonts.dart';
import '../../models/notification_list_model.dart';
import '../../models/profile_model.dart';
import '../../models/profileupdate_model.dart';
import '../../service/networks/auth_api_service/profile/profile_api_services.dart';
import '../../service/networks/auth_api_service/profile/profileupdate_api_service.dart';
import '../../service/networks/notification_api_services/notification_list.dart';

class ProfileApiController extends GetxController{
    RxBool isLoading = false.obs;
  GetNotificationListApi getNotificationLiistApi = GetNotificationListApi();
  GetProfileApiService getprofileapiservice = GetProfileApiService();
    List<ProfileData> profileData = [];

   getprofile()async{
    profileData.clear();
    dio.Response<dynamic> response = await getprofileapiservice.GetProfile();

    if(response.data["status"] == true){
      ProfileModel profilemodel = ProfileModel.fromJson(response.data);
      profileData.add(profilemodel.data);
      update();
  
    } else {
      Get.rawSnackbar(
        message: response.data["message"],
        backgroundColor: Colors.red
      );
    }
   }
   GetProfileUpdateApiService getprofileUpdateApiService = GetProfileUpdateApiService(); 

   profileUpdate({required ProfileUpdateModel profileUpdateModel })async{
    isLoading(true);
    dio.Response<dynamic> response = await getprofileUpdateApiService.getprofileupdate(profileUpdateModel: profileUpdateModel);
    isLoading(false);
    if(response.statusCode==200||response.statusCode==201){
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

}