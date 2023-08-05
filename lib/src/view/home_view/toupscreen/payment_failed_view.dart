import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class PaymentFailedScreen extends StatefulWidget {
  const PaymentFailedScreen({super.key});

  @override
  State<PaymentFailedScreen> createState() => _PaymentFailedScreenState();
}

class _PaymentFailedScreenState extends State<PaymentFailedScreen> {
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
              Text(
                'Payment Failed',
                style: primaryFont.copyWith(fontSize: 19, color: yblue),
              ),
              ysizedbox20,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(290, 50),
                      backgroundColor: yindigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/bottumnavbar');
                  },
                  child: const Text(
                    'Go Back To Home',
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
