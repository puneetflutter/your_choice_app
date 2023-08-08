import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/service/networks/pay_api_service/payee_send_api.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/check_availability_pin_api.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/create_pin_services.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/reset_pin_api_services.dart';
import 'package:your_choice_app/src/view/home_view/newpayee/payee_send_api_services.dart';
import 'package:your_choice_app/src/view/home_view/profile/create_pin_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/paymentsucess_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';

class PayoutController extends GetxController {
  CheckAvailabilityApi checkAvailabilityApi = CheckAvailabilityApi();
  CreatePinApi createPinApi = CreatePinApi();
  ResetPinApiServices resetPinApiServices = ResetPinApiServices();

  PayeePaymentApi payeePaymentApi = PayeePaymentApi();

  checkPinAvailability(String payeeId) async {
    var response = await checkAvailabilityApi.checkAvailblityApi();
    if (response["data"]["is_available"] == 1) {
      //create pin
      Get.to(() => CreatePinScreen());
    } else {
      //initiate payment
      Get.to(() => PayeeSendScreen(
            payeeId: payeeId,
          ));
    }
  }

  createPin(String pinNumber) async {
    var response = await createPinApi.createPinApi(pinNumber);
    print(response);
    Get.back();
  }

  resetPin(String pinNumber) async {
    print(pinNumber);
    var response = await resetPinApiServices.resetPinApi(pinNumber);
    print(response);

    if (response["status"] == true) {
      Get.snackbar("Successfully changed your pin", "",
          colorText: Colors.white,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM);

      Get.offAll(() => BottumBar());
    }
  }

  RxBool isLoading = true.obs;

  payeeSendPay(String amount, String payeeId, String userPin) async {
    var response =
        await payeePaymentApi.payeeSendPayment(amount, payeeId, userPin);
    print(response);
    isLoading(false);
    // if (response["message"] == "Wrong pin.Please reset your pin") {
    //   print(userPin);
    //   Get.snackbar("Wrong Pin", "Please reset your pin",
    //       colorText: Colors.white,
    //       backgroundColor: Colors.red,
    //       snackPosition: SnackPosition.BOTTOM);
    // }
    // if (response["message"] == "Insufficient balance.Topup immediately") {
    //   Get.snackbar("Insufficient balance", "Topup immediately",
    //       colorText: Colors.white,
    //       backgroundColor: Colors.red,
    //       snackPosition: SnackPosition.BOTTOM);
    // }
    print(";;;;;;;;;;;;;;;;;;;;;;;;;;;message;;;;;;;;;;;;;;;;;;;;;;");
    print(response["message"]);
    if (response["status"] == true) {
      // if (response["message"] == "Request accepted") {
      Get.to(() => PaymentSucessScreen());
    } else {
      Get.rawSnackbar(message: response["message"]);
    }
  }
}
