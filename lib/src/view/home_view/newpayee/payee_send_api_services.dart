import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/top_up_controller.dart';
import 'package:your_choice_app/src/view/home_view/newpayee/input_pin_number_view.dart';

class PayeeSendScreen extends StatefulWidget {
  var payeeId;
  PayeeSendScreen({super.key, required this.payeeId});

  @override
  State<PayeeSendScreen> createState() => _PayeeSendScreenState();
}

class _PayeeSendScreenState extends State<PayeeSendScreen> {
  var amountController = TextEditingController();

  final topupController = Get.find<InstantTopUpController>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Payout',
          style: primaryFontsemiBold.copyWith(
            color: yblue,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Image.asset('assets/images/topupimage.png'),
                ),
                ysizedbox20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Amount',
                        style: primaryFontsemiBold.copyWith(
                            color: yblue, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: TextFormField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter an Amount";
                          } else {
                            return null;
                          }
                        },
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.digitsOnly,
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        decoration: InputDecoration(
                            prefix: Text(
                              "₹ ",
                              style: primaryFont.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            hintText: 'Enter Amount',
                            hintStyle: TextStyle(
                              color: Color(0xff010101).withOpacity(0.5),
                              fontSize: 13,
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            border: const OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
                ysizedbox40,
                ysizedbox40,
                Obx(
                  () => topupController.isLoading.isTrue
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(290, 50),
                              backgroundColor: yindigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {},
                          child: const CupertinoActivityIndicator(
                            color: Colors.white,
                          ),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(290, 50),
                              backgroundColor: yindigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.to(() => InputPinNumber(
                                    amount: amountController.text,
                                    payeeId: widget.payeeId,
                                  ));
                            }
                          },
                          child: const Text(
                            'Proceed',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
