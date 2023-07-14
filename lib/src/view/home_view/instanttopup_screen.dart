import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class InstantTopupScreen extends StatefulWidget {
  const InstantTopupScreen({super.key});

  @override
  State<InstantTopupScreen> createState() => _InstantTopupScreenState();
}

class _InstantTopupScreenState extends State<InstantTopupScreen> {
  List cardimage=[
    'assets/images/normalcardimage.png',
    'assets/images/corpratecardimage.png',
    'assets/images/corpratecard2image.png',
    'assets/images/preparedcardimage.png',
    'assets/images/amexcardimage.png',
    'assets/images/dinnercardimage.png'
  ];
  List title=[
    ''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Choose the Card Type',
                        style: primaryFontsemiBold.copyWith(
                          color: yblue,
                          fontSize: 20,
                          ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: cardimage.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10), 
            itemBuilder: (context,index){
               return Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color:ywhite,
                        border: Border.all(
                          color: yindigo
                        )
                      ),
                      child: Center(
                        child: Image.asset(cardimage[index]),
                      ),
               );
            })
        ],
      )),
    );
  }
}