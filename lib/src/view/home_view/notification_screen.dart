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
                        Navigator.of(context).pushNamed(  '/bottumnavbar');
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
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/connectdthimage.png")),
                       // color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
          
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("All Payment send Narsh new\nConncept Ideas solutions.",style: primaryFont.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text("9:35 AM",style: primaryFont.copyWith(
                   fontSize: 11,color: Colors.black45
                  ),),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bsnlimage.png")),
                       // color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
          
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Send New Payment Connect\nModels system",style: primaryFont.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text("9:35 AM",style: primaryFont.copyWith(
                   fontSize: 11,color: Colors.black45
                  ),),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}