import 'package:get/get.dart';

import 'package:flutter/material.dart';

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

}
