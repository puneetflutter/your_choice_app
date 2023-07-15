import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class PtopScreen extends StatefulWidget {
  const PtopScreen({super.key});

  @override
  State<PtopScreen> createState() => _PtopScreenState();
}

class _PtopScreenState extends State<PtopScreen> {
  var purposeController=TextEditingController();
  var transferController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){},
                       icon: Icon(Icons.arrow_back,
                       color: yblue,)),
                       Text('Send Payment',
                       style: primaryFontsemiBold.copyWith(
                        color: ywhite,
                        fontSize: 20
                       ),),
                       Image.asset('assets/images/femaleprofile.png',
                       fit: BoxFit.fitHeight,height: 45,)
                    ],
                  ),
                ),
                ysizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Image.asset('assets/images/ptoscreenpayment.png'),
                      ),
                    ),
                    Image.asset('assets/images/forwardimage.png'),
                      Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ygrey,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Icon(Icons.check,
                        color: ywhite,),
                      ),
                    ),
                  ],
                ),ysizedbox10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Payment',
                    style: primaryFontmedium.copyWith(
                      fontSize: 14,
                      color: ywhite
                    ),),
                    Text(''),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Complete',
                      style: primaryFontsemiBold.copyWith(
                        color: ywhite.withOpacity(0.6),
                        fontSize: 14,
                      ),),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 500,
                  color: ywhite,
                  child: Column(
                    children: [
                      Text('Purpose Payment'),
                      Container(
                        width: 365,
                        height: 45,
                        decoration: BoxDecoration(
                          color: ywhite
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}