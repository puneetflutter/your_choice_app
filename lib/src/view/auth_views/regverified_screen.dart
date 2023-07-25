import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../constants/app_colors.dart';

class RegisterverifiedScreen extends StatefulWidget {
  const RegisterverifiedScreen({super.key});

  @override
  State<RegisterverifiedScreen> createState() => _RegisterverifiedScreenState();
}

class _RegisterverifiedScreenState extends State<RegisterverifiedScreen> {
  OtpFieldController otpbox = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
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
                    Text(
                      'Enter 4-digit code we have sent to at',
                      style: TextStyle(fontSize: 16, height: 1.6),
                    ),
                    Text(
                      '+91-123 456 7890',
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
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Entered OTP Code: $pin");
                  },
                ),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you didn"t receive the code ?'),
                    Text(
                      'Resend',
                      style: TextStyle(fontSize: 14, color: yindigo),
                    )
                  ],
                ),
                ysizedbox40,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(290, 50),
                        backgroundColor: yindigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('/bottumnavbar');
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(fontSize: 17),
                    )),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
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
