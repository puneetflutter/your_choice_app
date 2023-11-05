import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/forgotpassword_controller.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var mobilenumberController = TextEditingController();
  final forgotpasswordController = Get.find<ForfotPasswordController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ysizedbox40,
              Container(
                child: Row(
                  children: [
                    //   IconButton(
                    //   onPressed: (){
                    //     Navigator.of(context).pop();
                    //   },
                    // icon: Icon(Icons.arrow_back,
                    // color: yblue,)),
                  ],
                ),
              ),
              ysizedbox40,
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Center(
                    child: Image.asset(
                  'assets/images/forgotimage.png',
                  height: 140,
                  fit: BoxFit.fitHeight,
                )),
              ),
              ysizedbox30,
              Text(
                'Forgot Password?',
                style: primaryFont.copyWith(
                    letterSpacing: 1, fontSize: 21, color: yblue),
              ),
              ysizedbox10,
              const Text(
                'We just need you registered phone \n number to send you password reset code',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              ysizedbox40,
              Container(
                height: 52,
                width: 290,
                child: TextField(
                  controller: mobilenumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: ygrey))),
                ),
              ),
              ysizedbox40,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(290, 50),
                      backgroundColor: yindigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {
                    if (mobilenumberController.text.isNotEmpty) {
                      forgotpasswordController.forgotpassword(
                          mobile: mobilenumberController.text);
                    } else {
                      Get.rawSnackbar(
                          message: "Please enter your Mobile Number",
                          backgroundColor: Colors.red);
                    }

                    // Navigator.of(context).pushNamed('/forgotverification');
                  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 17),
                  )),
              ysizedbox30,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don"t have an account ?',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/registerscreen');
                        },
                        child: Text(
                          ' Register Now',
                          style: TextStyle(color: yindigo, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Having Trouble ?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            ' Get Help',
                            style: TextStyle(color: yindigo, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
