import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class paymentSucessScreen extends StatefulWidget {
  const paymentSucessScreen({super.key});

  @override
  State<paymentSucessScreen> createState() => _paymentSucessScreenState();
}

class _paymentSucessScreenState extends State<paymentSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ysizedbox40,
          ysizedbox40,
          Center(child: Image.asset('assets/images/paymentimage.png')),
          ysizedbox30,
          Column(
            children: [
              Text('Topup Successfully! Done',
              style: primaryFont.copyWith(
                fontSize: 19,
                color: yblue
              ),),
              ysizedbox20,
                ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
              Navigator.of(context).pushReplacementNamed( '/home');
              }, 
                       child:Text('Go Back To Home',
                       style: TextStyle(
              fontSize: 18
                       ),)),
            ],
          )
        ],
      )),
    );
  }
}