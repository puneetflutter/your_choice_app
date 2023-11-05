import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/top_up_controller.dart';
import 'package:your_choice_app/src/models/p_to_p_order_model.dart';
import 'package:your_choice_app/src/view/home_view/home_screen.dart';
import 'package:your_choice_app/src/widgets/bottumnav_bar.dart';

import '../../../controller/sigin_controller.dart';

class TransferSummeryScreen extends StatefulWidget {
  PtoPModelData data;
  TransferSummeryScreen({super.key, required this.data});

  @override
  State<TransferSummeryScreen> createState() => _TransferSummeryScreenState();
}

class _TransferSummeryScreenState extends State<TransferSummeryScreen> {
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
                                Navigator.of(context).pushNamed('/home');
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: yblue,
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
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Transfer Summery',
                                        style: primaryFontmedium.copyWith(
                                            fontSize: 19,
                                            color: const Color(0xff004481)),
                                      )
                                    ],
                                  ),
                                  ysizedbox20,
                                  Text(
                                    'To:',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 20, top: 20),
                                    child: Container(
                                      height: 202,
                                      decoration: BoxDecoration(
                                          color: ywhite,
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                offset: Offset(0.0, 0.75),
                                                blurRadius: 5,
                                                color: ygrey)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, right: 15, left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      'You Are Sending',
                                                      style: primaryFontmedium
                                                          .copyWith(
                                                              fontSize: 14,
                                                              color: const Color(
                                                                  0xff174885)),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                        '₹ ${widget.data.subTotal}'))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Fund Transfer Fee',
                                                  style: primaryFontmedium
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: const Color(
                                                              0xff174885)),
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                        '₹ ${widget.data.fundTransferFee}'))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Service Charge',
                                                  style: primaryFontmedium
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: const Color(
                                                              0xff174885)),
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                        '₹ ${widget.data.serviceCharge}'))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Your Total',
                                                  style: primaryFontmedium
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: const Color(
                                                              0xff174885)),
                                                ),
                                                Container(
                                                    width: 65,
                                                    child: Text(
                                                        '₹ ${widget.data.amount}'))
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Receipiant Receives',
                                                  style: primaryFontmedium
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xff174885)),
                                                ),
                                                Container(
                                                  width: 65,
                                                  child: Text(
                                                    '₹ ${widget.data.subTotal}',
                                                    style: primaryFontsemiBold
                                                        .copyWith(
                                                            fontSize: 14,
                                                            color: yblue),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  ysizedbox40,
                                  ysizedbox40,
                                  ysizedbox20,
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(size.width, 50),
                                            backgroundColor: yindigo,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        onPressed: () async {
                                          var paymentLink =
                                              await topupController
                                                  .createLink(widget.data.id);
                                          showGeneratedLink(paymentLink);
                                          //Navigator.of(context).pushNamed( '/transfersummery');
                                        },
                                        child: Text(
                                          'Generate Link',
                                          style: primaryFontsemiBold.copyWith(
                                              fontSize: 17, color: ywhite),
                                        )),
                                  ),
                                  ysizedbox20,
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(size.width, 50),
                                            backgroundColor: ygrey,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        onPressed: () {
                                          Get.back();
                                          //Navigator.of(context).pushNamed( '/transfersummery');
                                        },
                                        child: Text(
                                          'Back',
                                          style: primaryFontsemiBold.copyWith(
                                              fontSize: 17, color: yblue),
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  showGeneratedLink(String paymentLink) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (context) {
          return Container(
              height: 350,
              decoration: const BoxDecoration(),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset(
                    'assets/images/generatelinkimage.png',
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                ysizedbox10,
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: ywhite,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            offset: const Offset(0.0, 0.75),
                            blurRadius: 5,
                            color: ygrey)
                      ],
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            paymentLink,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        )),
                      ),
                      InkWell(
                        onTap: () async {
                          await Clipboard.setData(
                              ClipboardData(text: paymentLink));
                          Get.rawSnackbar(
                              message: "Copied", backgroundColor: Colors.green);
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: yindigo,
                              //color:Color(0xff185697),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/paymentlinkimage.png',
                                color: ywhite,
                                height: 20,
                                fit: BoxFit.fitHeight,
                              ),
                              Text(
                                'Copy',
                                style: TextStyle(fontSize: 15, color: ywhite),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ysizedbox20,
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => BottumBar());
                  },
                  child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: yindigo,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                offset: const Offset(0.0, 0.75),
                                blurRadius: 5,
                                color: ygrey)
                          ],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Done',
                          style: primaryFontsemiBold.copyWith(
                              color: ywhite, fontSize: 18),
                        ),
                      )),
                )
              ]));
        });
  }
}
