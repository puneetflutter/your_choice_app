import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:your_choice_app/src/service/networks/auth_api_service/otp_verify_url.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/change_password_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/forgotpass_verification_screen.dart';
import 'package:your_choice_app/src/view/auth_views/forgotscreen/password_create_screen.dart';
import '../constants/app_fonts.dart';
import '../service/networks/auth_api_service/forgot_password_api_service.dart';

class ForfotPasswordController extends GetxController {
  ForgotPasswordApiService forgotPasswordApiService =
      ForgotPasswordApiService();

  OTPVerifyApiServices otpVerifyApiServices = OTPVerifyApiServices();

  forgotpassword({
    required String mobile,
  }) async {
    dio.Response<dynamic> response =
        await forgotPasswordApiService.getForgotpassword(mobile: mobile);
    if (response.data['status'] == true) {
      Get.to(() => ForgotPassVerificationScreen(
            mobileNUmber: mobile,
          ));
    } else {
      Get.rawSnackbar(
          backgroundColor: Colors.red,
          messageText: Text(
            response.data['message'],
            style: primaryFont.copyWith(color: Colors.white),
          ));
    }
  }

  verifyOTP(String mobileNumber, String otp) async {
    dio.Response<dynamic> response = await otpVerifyApiServices
        .otpVerifyApiServices(mobil: mobileNumber, otp: otp);

    print(response.data);

    if (response.data["status"] == true) {
      Get.rawSnackbar(
          message: "Otp verified Successfully", backgroundColor: Colors.green);
      Get.offAll(() => PasswordCreateScreen(
            userId: response.data["data"]["id"].toString(),
          ));
    } else {
      Get.rawSnackbar(
          message: "${response.data["message"]}", backgroundColor: Colors.red);
    }
  }
}
