import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart' as dio;
import 'package:your_choice_app/src/service/networks/auth_api_service/otp_verify_url.dart';
import 'package:your_choice_app/src/view/auth_views/auth_landing_screen.dart';
import 'package:your_choice_app/src/view/auth_views/registred_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';
import '../models/register_model.dart';
import '../service/networks/auth_api_service/login_api_services.dart';
import '../service/networks/auth_api_service/register_api_services.dart';

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

  RegisterServicesApi registerServicesApi = RegisterServicesApi();
  LoginServicesApi loginServicesApi = LoginServicesApi();
  OTPVerifyApiServices otpVerifyApiServices = OTPVerifyApiServices();

//LOG IN
  loginUser({
    required String email_mobile,
    required String password,
  }) async {
    isLoading(true);
    dio.Response<dynamic> response = await loginServicesApi.loginApi(
        email_mobile: email_mobile, password: password);
    isLoading(false);
    if (response.data["status"] == true) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("auth_token", response.data["token"]);
      await prefs.setString("id", response.data["data"]["id"].toString());
      Get.offAllNamed('/bottumnavbar');
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

//REGISTER
  registerUser(RegisterModel registerModel) async {
    isLoading(true);
    dio.Response<dynamic> response =
        await registerServicesApi.registerApi(registerModel);
    isLoading(false);
    print("------------------------------->>${response.data["status"]}");
    if (response.data["status"] == true) {
      final prefs = await SharedPreferences.getInstance();
      // await prefs.setString("auth_token", response.data["token"]);
      // await prefs.setString("auth_token", response.data["token"]);
      await prefs.setString("id", response.data["data"]["id"].toString());
      await prefs.setString("verify", "false");
      // Get.offAllNamed('/registeredscreen');

      Get.offAll(() => RegisteredScreen(
            mobileNumber: registerModel.mobile,
          ));

      // Navigator.of(context)
      // .pushReplacementNamed('/registeredscreen');
      // Get.to(otp_page(
      //   phoneNumber: registerModel.mobile,
      //   otp: response.data["user"]["otp"].toString(),
      // ));
    } else
    //    if (response.statusCode == 422)
    {
      Get.rawSnackbar(
        messageText: Text(
          response.data["message"],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      );
    }
  }

  verifyOTP(String mobileNumber, String otp) async {
    dio.Response<dynamic> response = await otpVerifyApiServices
        .otpVerifyApiServices(mobil: mobileNumber, otp: otp);

    if (response.data["status"] == true) {
      Get.rawSnackbar(
          message: "Otp verified Successfully", backgroundColor: Colors.green);
      Get.offAll(() => const AuthLandingScreen());
    } else {
      Get.rawSnackbar(
          message: "${response.data["message"]}", backgroundColor: Colors.red);
    }
  }
}
