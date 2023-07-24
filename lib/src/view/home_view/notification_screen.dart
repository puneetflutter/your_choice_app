import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          ysizedbox30,
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Image.asset('assets/icons/backarrow.png',
                      color: yblue,),),
                Text('Notification',
                style: primaryFontsemiBold.copyWith(
                  color: yblue,
                  fontSize: 20
                ),),
                Icon(Icons.more_horiz,
                color: yblue,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20),
            child: Row(
              children: [
                Text('New'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: ygrey.withOpacity(0.4),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Text('2',
                      style: TextStyle(
                        color: yindigo
                      ),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}