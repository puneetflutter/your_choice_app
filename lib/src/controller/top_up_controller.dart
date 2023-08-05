import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:your_choice_app/src/service/networks/top_up_api_services/create_order_api_services.dart';
import 'package:your_choice_app/src/service/networks/top_up_api_services/pay_order_api_services.dart';
import 'package:your_choice_app/src/service/networks/top_up_api_services/payment_response_api_services.dart';
import 'package:your_choice_app/src/service/networks/top_up_api_services/payment_status_api_services.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/payment_failed_view.dart';
import 'package:your_choice_app/src/view/home_view/toupscreen/paymentsucess_screen.dart';
import 'package:your_choice_app/src/view/payment_status_view/payment_web_view.dart';

class InstantTopUpController extends GetxController {
  // GenerateCashFreeApi generateCashFreeApi = GenerateCashFreeApi();
  CreateOrderApi createOrderApi = CreateOrderApi();
  // EaseBuzzTokenApiService easeBuzzApi = EaseBuzzTokenApiService();

  PaymentStatusServices paymentStatusServices = PaymentStatusServices();

  PayOrderResponseApiServices payOrderResponseApi =
      PayOrderResponseApiServices();

  PayOrderApiServices payOrderApiServices = PayOrderApiServices();

  static MethodChannel _channel = MethodChannel('easebuzz');

  RxBool isLoading = false.obs;

  String orderCurrency = "INR";
  String appId = "106156187c34a3694450d2831c651601";
  String notifyUrl = "https://test.gocashfree.com/notify";

  // openPayment({
  //   required String token,
  //   required String orderId,
  //   required String amount,
  //   required String note,
  //   required String customerName,
  //   required String customerPhone,
  //   required String customerEmail,
  // }) {
  //   Map<String, dynamic> inputParams = {
  //     "orderId": orderId,
  //     "orderAmount": amount,
  //     "customerName": customerName,
  //     "orderNote": note,
  //     "orderCurrency": "INR",
  //     "appId": appId,
  //     "tokenData": token,
  //     "customerPhone": customerPhone,
  //     "customerEmail": customerEmail,
  //     "stage": "TEST",
  //     "notifyUrl": notifyUrl
  //   };

  //   CashfreePGSDK.doPayment(inputParams)
  //       .then((value) => value?.forEach((key, value) {
  //             print("$key : $value");
  //             //Do something with the result
  //           }));
  // }

  createOrder(String amount) async {
    dio.Response<dynamic> response =
        await createOrderApi.createTopUpOrder(amount, "1");
    print(response);

    if (response.data["status"] == true) {
      payWithRunPaisa(response.data["order_details"]["id"]);
    } else {
      isLoading(false);
      Get.rawSnackbar(
          message: response.data["message"], backgroundColor: Colors.red);
    }

    // paythroughtEaseBuzz(
    //     amount: amount,
    //     customerName: response["customer_name"],
    //     id: response["id"].toString(),
    //     email: response["customer_email"],
    //     phone: response["customer_phone"]);
  }

  payWithRunPaisa(int id) async {
    var response = await payOrderApiServices.createPayOrder(id: id);
    isLoading(false);
    print(
        "::::::::---------------::::::::::::::::::--------------::::::::::::::::::---------------::::::::::::");
    print(response);
    Get.to(() => PaymentWebView(
          url: response["paymentLink"],
          orderId: id,
        ));
  }

  // paythroughtEaseBuzz({
  //   required String amount,
  //   required String customerName,
  //   required String id,
  //   required String email,
  //   required String phone,
  // }) async {
  //   var response = await easeBuzzApi.getPaymentToken(
  //       amount: amount,
  //       customerName: customerName,
  //       email: email,
  //       id: id,
  //       phone: phone);

  //   String access_key = response["data"];
  //   String pay_mode = "test";

  //   Object parameters = {"access_key": access_key, "pay_mode": pay_mode};
  //   final payment_response =
  //       await _channel.invokeMethod("payWithEasebuzz", parameters);

  //   print(",,,,,,<<<<<<<<<<<<<<<<payment response>>>>>>>>>>>>>>,,,,,,");
  //   print(payment_response);
  //   // var response2 = await paymentStatusServices.paymentStatusServices(
  //   //     orderId: payment_response["payment_response"]["txnid"],
  //   //     orderAmount: payment_response["payment_response"]["amount"],
  //   //     status: payment_response["payment_response"]["status"],
  //   //     paymentMode: payment_response["payment_response"]["card_type"],
  //   //     txnTime: payment_response["payment_response"]["addedon"],
  //   //     signature: payment_response["payment_response"]["hash"],
  //   //     type: payment_response["payment_response"]["status"],
  //   //     refernceId: payment_response["payment_response"]["easepayid"]);

  //   // print("<<<<<<<<<<<<<<<payment Success status response >>>>>>>>>>>>>>>");
  //   // print(response2);
  //   if (payment_response["result"] == "payment_successfull") {
  //     Get.off(() => PaymentSuccessPage());
  //   } else {
  //     Get.off(() => PaymentFailedPage());
  //   }
  // }

  getPaymantResponse(int orderId) async {
    dio.Response<dynamic> response =
        await payOrderResponseApi.getResponsePayOrder(orderId);

    if (response.statusCode == 200) {
      // var response2 = await paymentStatusServices.paymentStatusServices(
      //     orderId: response.data["response"]["ORDER_ID"],
      //     orderAmount: response.data["response"]["TXN_AMOUNT"],
      //     status: response.data["response"]["STATUS"],
      //     paymentMode: response.data["response"]["TXN_MODE"],
      //     txnTime: response.data["response"]["TXN_DATE"],
      //     message:  response.data["message"],
      //     refernceId: response.data["response"]["BANK_TXNID"],
      //    );

      // print("<<<<<<<<<<<<<<<payment Success status response >>>>>>>>>>>>>>>");
      // print(response2);
      Get.off(() => const PaymentSucessScreen());
    } else if (response.statusCode == 400) {
      Get.off(() => PaymentFailedScreen());
    }
  }
}
