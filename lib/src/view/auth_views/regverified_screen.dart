import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/sigin_controller.dart';

import '../../constants/app_colors.dart';

class RegisterverifiedScreen extends StatefulWidget {
  String mobileNumber;
  RegisterverifiedScreen({super.key, required this.mobileNumber});

  @override
  State<RegisterverifiedScreen> createState() => _RegisterverifiedScreenState();
}

class _RegisterverifiedScreenState extends State<RegisterverifiedScreen> {
  OtpFieldController otpbox = OtpFieldController();
  String? otpNumber;

  final authController = Get.find<AuthController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ysizedbox40,
                Container(
                  child: Row(
                    children: [
                      // IconButton(
                      //     onPressed: () {
                      //       Navigator.of(context).pop();
                      //     },
                      //     icon: Icon(Icons.arrow_back_ios)),
                    ],
                  ),
                ),
                ysizedbox40,
                Center(
                    child: Image.asset(
                  'assets/images/forgotimage.png',
                  height: 140,
                  fit: BoxFit.fitHeight,
                )),
                ysizedbox30,
                Text(
                  'Verification',
                  style: primaryFontmedium.copyWith(
                      fontSize: 25.5, color: yblue, wordSpacing: 1),
                ),
                ysizedbox20,
                Column(
                  children: [
                    Text(
                      'Enter the verification code we just sent\n you on your registered phone number',
                      style: TextStyle(
                        height: 1.6,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Enter 4-digit code we have sent to at',
                      style: TextStyle(fontSize: 16, height: 1.6),
                    ),
                    Text(
                      widget.mobileNumber,
                      style:
                          TextStyle(height: 1.6, color: yindigo, fontSize: 16),
                    )
                  ],
                ),
                ysizedbox40,
                OTPTextField(
                  controller: otpbox,
                  length: 4,
                  width: 250,
                  fieldWidth: 50,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Entered OTP Code: $pin");
                    setState(() {
                      otpNumber = pin;
                    });
                  },
                ),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('If you didn"t receive the code ?'),
                    Text(
                      'Resend',
                      style: TextStyle(fontSize: 14, color: yindigo),
                    )
                  ],
                ),
                ysizedbox40,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(290, 50),
                        backgroundColor: yindigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      authController.verifyOTP(widget.mobileNumber, otpNumber!);
                    },
                    child: const Text(
                      'Done',
                      style: TextStyle(fontSize: 17),
                    )),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Having Trouble ?',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      ' Get Help',
                      style: TextStyle(color: yindigo, fontSize: 14),
                    )
                  ],
                ),
                // ysizedbox30
              ],
            ),
          ],
        ),
      ),
    );
  }
}
