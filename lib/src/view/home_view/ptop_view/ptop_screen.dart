import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/top_up_controller.dart';

import '../../../controller/sigin_controller.dart';

class PtopScreen extends StatefulWidget {
  const PtopScreen({super.key});

  @override
  State<PtopScreen> createState() => _PtopScreenState();
}

class _PtopScreenState extends State<PtopScreen> {
  var purposeController = TextEditingController();
  var transferController = TextEditingController();
  var customernameController = TextEditingController();
  var custmobilenumberController = TextEditingController();
  // var descriptionController = TextEditingController();
  final pageshowController = Get.find<AuthController>();

  final topupController = Get.find<InstantTopUpController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: yindigo,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/bottumnavbar');
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: ywhite,
                              )),
                          Text(
                            'Send Payment',
                            style: primaryFontsemiBold.copyWith(
                                color: ywhite, fontSize: 20),
                          ),
                          Image.asset(
                            'assets/images/femaleprofile.png',
                            fit: BoxFit.fitHeight,
                            height: 45,
                          )
                        ],
                      ),
                    ),
                    ysizedbox40,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: ywhite,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Image.asset(
                                'assets/images/ptoscreenpayment.png'),
                          ),
                        ),
                        Image.asset('assets/images/forwardimage.png'),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: ygrey,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: ywhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ysizedbox10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Payment',
                          style: primaryFontmedium.copyWith(
                              fontSize: 14, color: ywhite),
                        ),
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Complete',
                            style: primaryFontsemiBold.copyWith(
                              color: ywhite.withOpacity(0.6),
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ysizedbox40,
                Column(
                  children: [
                    Container(
                      height: 600,
                      decoration: BoxDecoration(
                          color: ywhite,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 33, top: 30, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Purpose Payment',
                              style: primaryFont.copyWith(
                                  fontSize: 16,
                                  color: yblue,
                                  letterSpacing: 0.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Container(
                                width: 365,
                                decoration: BoxDecoration(
                                    color: ywhite,
                                    border: Border.all(color: yblueversion),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  enabled: true,
                                  controller: purposeController,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                            ),
                            ysizedbox20,
                            Text(
                              'Transfer Amount',
                              style: primaryFont.copyWith(
                                  fontSize: 16,
                                  color: yblue,
                                  letterSpacing: 0.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Container(
                                width: 365,
                                decoration: BoxDecoration(
                                    color: ywhite,
                                    border: Border.all(color: yblueversion),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  enabled: true,
                                  controller: transferController,
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                    FilteringTextInputFormatter.digitsOnly,
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r'\s')),
                                  ],
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                            ),
                            ysizedbox20,
                            Text(
                              'Customer Name',
                              style: primaryFont.copyWith(
                                  fontSize: 16,
                                  color: yblue,
                                  letterSpacing: 0.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Container(
                                width: 365,
                                decoration: BoxDecoration(
                                    color: ywhite,
                                    border: Border.all(color: yblueversion),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  enabled: true,
                                  controller: customernameController,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                            ),
                            ysizedbox20,
                            Text(
                              'Customer Mobile Number',
                              style: primaryFont.copyWith(
                                  fontSize: 16,
                                  color: yblue,
                                  letterSpacing: 0.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Container(
                                width: 365,
                                decoration: BoxDecoration(
                                    color: ywhite,
                                    border: Border.all(color: yblueversion),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  enabled: true,
                                  controller: custmobilenumberController,
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                    FilteringTextInputFormatter.digitsOnly,
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r'\s')),
                                  ],
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                            ),
                            ysizedbox40,
                            Obx(() => topupController.isLoading.isTrue ?  Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size(size.width, 50),
                                              backgroundColor: yindigo,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8))),
                                          onPressed: () {
                                          },
                                          child: const CupertinoActivityIndicator(
                                            color: Colors.white,
                                          ) ),
                                    )  : Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(size.width, 50),
                                        backgroundColor: yindigo,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8))),
                                    onPressed: () {
                                      if (purposeController.text.isNotEmpty ||
                                          transferController.text.isNotEmpty ||
                                          customernameController
                                              .text.isNotEmpty ||
                                          custmobilenumberController
                                              .text.isNotEmpty) {
                                        topupController.createPtoPOrder(
                                            purpuse: purposeController.text,
                                            amount: transferController.text,
                                            name: customernameController.text,
                                            mobileNumber:     custmobilenumberController.text,
                                            description: "");
                                      } else {
                                        Get.rawSnackbar(
                                            message: "Fill all the fields",
                                            backgroundColor: Colors.red);
                                      }
                                    },
                                    child: Text(
                                      'Next',
                                      style: primaryFontsemiBold.copyWith(
                                          fontSize: 17, color: ywhite),
                                    )),
                              ),
                            ),
                            ysizedbox20,
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
