import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart' as dio;
import '../service/networks/auth_api_service/login_api_services.dart';

class AuthController extends GetxController {
  RxInt siginIndex = 0.obs;
  RxInt naviIndex = 0.obs;
  RxInt selctedtextindex = 0.obs;
  RxInt pageshowindex = 0.obs;
  RxBool transaction = false.obs;
  RxBool moneyadd = false.obs;
  RxBool moneypaid = false.obs;
  RxInt dropdrownindex = 0.obs;
  RxBool allcategory = false.obs;
  RxBool businesspay = false.obs;
  RxBool paymentlink = false.obs;
  RxBool isLoading = false.obs;

  LoginServicesApi loginServicesApi = LoginServicesApi();
    loginUser({required String email_mobile, required String password, }) async {
    isLoading(true);
    dio.Response<dynamic> response =
        await loginServicesApi.loginApi(email_mobile:email_mobile, password: password);
    isLoading(false);
    if (response.data["status"] == true) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("auth_token", response.data["token"]);
     Get.toNamed('/bottumnavbar');
      Get.rawSnackbar(
        messageText: const Text(
          "Login Successful",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      );
    } else
      Get.rawSnackbar(
        messageText: Text(
          response.data["message"],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      );
    }
  }


