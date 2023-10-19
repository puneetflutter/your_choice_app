import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/models/wallet_history_model.dart';
import 'package:your_choice_app/src/service/networks/easebuzz_paymaent_api_service/easebuzz_payment_api_service.dart';
import 'package:your_choice_app/src/service/networks/pay_api_service/payee_send_api.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/check_availability_pin_api.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/create_pin_services.dart';
import 'package:your_choice_app/src/service/networks/pin_handle_api_services/reset_pin_api_services.dart';
import 'package:your_choice_app/src/service/networks/transaction_history_api_service/wallet_history_api_service.dart';
import 'package:your_choice_app/src/view/home_view/newpayee/payee_send_api_services.dart';
import 'package:your_choice_app/src/view/home_view/profile/create_pin_screen.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/paymentsucess_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';
import 'package:dio/dio.dart' as dio;

class PayoutController extends GetxController {
  CheckAvailabilityApi checkAvailabilityApi = CheckAvailabilityApi();
  CreatePinApi createPinApi = CreatePinApi();
  ResetPinApiServices resetPinApiServices = ResetPinApiServices();

  PayeePaymentApi payeePaymentApi = PayeePaymentApi();

  checkPinAvailability(String payeeId) async {
    var response = await checkAvailabilityApi.checkAvailblityApi();
    if (response["data"]["is_available"] == 1) {
      //create pin
      Get.to(() => const CreatePinScreen());
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
      Get.to(() => const PaymentSucessScreen());
    } else {
      Get.rawSnackbar(message: response["message"]);
    }
  }

  //wallet history
  WalletHistoryApi walletHistoryApi = WalletHistoryApi();
  List<WalletTransactionsData> walletTransactionData = [];
  RxString totalCredit = "".obs;
  RxString totalDebit = "".obs;

  walletHistory({required String  startDate, required String endDate}) async {

    dio.Response<dynamic> response = await 
    walletHistoryApi.walletHistoryApi(startDate, endDate);
    if(response.statusCode == 200){
       WalletHistoryModel walletHistoryModel = WalletHistoryModel.fromJson(response.data);
       walletTransactionData = walletHistoryModel.data;
       totalCredit(walletHistoryModel.totalCredit.toString());
       totalDebit(walletHistoryModel.totalDebit.toString());
    } else {
      Get.rawSnackbar(message: response.data["message"]);
    }
    update();
  }

  //easebuzz payment 

   static MethodChannel _channel = MethodChannel('easebuzz');
  EaseBuzzTokenApiService easeBuzzApi = EaseBuzzTokenApiService();

  payUseingEaseBuzz(
      {required String id,
      required String customerid,
      required String amount,
      required String customerName,
      required String email,
      required String phone,
      required dynamic status}) async {
        print(".............1");
    var response = await easeBuzzApi.getPaymentToken(
        amount: amount,
        // amount: "1",
        customerName: customerName,
        email: email,
        id: "07889${DateTime.now().microsecond}${DateTime.now().second}",
        phone: phone);
    print(".............2");
    String access_key = response["data"];
    String pay_mode = "test";

    print("access_key >>$access_key");
    Object parameters = {"access_key": access_key, "pay_mode": pay_mode};
    // isPayLoading(false);
    print(".............3");
    isLoading(false);
    final payment_response =
        await _channel.invokeMethod("payWithEasebuzz", parameters);
        print(".............4");
    print(payment_response);
    isLoading(false);
    if (payment_response["result"] == "payment_successfull") {
      //need to give id
      Get.snackbar(
        "Payment Successfully Paid",
        "",
        icon: const Icon(Icons.check_circle_outline_outlined,
            color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );

      print(response);
    } else {
      Get.closeAllSnackbars();
      Get.snackbar(
          "The last transaction has been cancelled!", "Please try again!",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

}
