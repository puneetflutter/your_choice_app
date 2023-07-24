import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:otp_text_field/otp_field.dart';
import '../../../constants/app_fonts.dart';

class ConfirmationPinScreen extends StatefulWidget {
  const ConfirmationPinScreen({super.key});

  @override
  State<ConfirmationPinScreen> createState() => _ConfirmationPinScreenState();
}

class _ConfirmationPinScreenState extends State<ConfirmationPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed('/createpin');
                            },
                            child: Image.asset('assets/icons/backarrow.png')),
                       Text('Confirm Pin',
                       style: primaryFontmedium.copyWith(
                        fontSize: 25,
                        color: ywhite
                       ),),
                       Image.asset('assets/images/homeprofileimage.png')
                        ],
                       ),
                     )

                ],
              ),
              ysizedbox40,
              
              Column(
                children: [
                  Container(
                    height: 650,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ywhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                    ),
                    child: Column(
                      children: [
                        ysizedbox40,
                        ysizedbox20,
                        Text('Create PIN for your Safebox',
                        style: primaryFontmedium.copyWith(
                          fontSize: 20,
                          color: yindigo
                        ),),
                        ysizedbox30,
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: OTPTextField(
                            
                          length: 4,
                          otpFieldStyle: OtpFieldStyle(
                            
                            focusBorderColor: yblue,
                            borderColor: yblue
                          ),
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 80,
                          style: TextStyle(
                            color: yblue,
                            fontSize: 17
                          ),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.underline,
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          },
                        ),
                        ),
                        ysizedbox30,
                        Text('Type Four Pin, Don"t show',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff4E6171)
                        ),),
                        ysizedbox40,
                        ysizedbox40,
                        ysizedbox40,
                        ysizedbox40,
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/profile');
                          },
                          child: Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width*0.6,
                            decoration: BoxDecoration(
                              color: yindigo,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text('Done',
                              style: primaryFontmedium.copyWith(
                                fontSize: 22,
                                color: ywhite
                              ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}