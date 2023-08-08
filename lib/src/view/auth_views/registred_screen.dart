import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/view/auth_views/regverified_screen.dart';

class RegisteredScreen extends StatefulWidget {
  String mobileNumber;
  RegisteredScreen({super.key, required this.mobileNumber});

  @override
  State<RegisteredScreen> createState() => _RegisteredScreenState();
}

class _RegisteredScreenState extends State<RegisteredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:ywhite,
      //   leading:
      // ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ysizedbox40,
          ///   ysizedbox10,
          Container(
            child: Row(
              children: [
                //   IconButton(
                //   onPressed: (){
                //     Navigator.of(context).pop();
                //   },
                // icon: Icon(Icons.arrow_back_ios)),
              ],
            ),
          ),
          ysizedbox40,
          Center(
            child: Image.asset(
              'assets/images/registerdimage.png',
              height: 210,
              fit: BoxFit.fitHeight,
            ),
          ),
          ysizedbox20,
          Text(
            'You have signup successfully,\n For verification,  OTP sent on the \n mobile no. ${widget.mobileNumber}',
            style: TextStyle(height: 1.4, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          ysizedbox40,
          ysizedbox40,
          ysizedbox20,
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(290, 50),
                  backgroundColor: yindigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                // Navigator.of(context).pushNamed('/registerverifiedscreen');
                Get.offAll(() => RegisterverifiedScreen(
                      mobileNumber: widget.mobileNumber,
                    ));
              },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 17),
              )),
        ],
      )),
    );
  }
}
