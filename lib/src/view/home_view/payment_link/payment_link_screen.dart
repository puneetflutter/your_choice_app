import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';
class PaymentLinkScreen extends StatefulWidget {
  const PaymentLinkScreen({super.key});

  @override
  State<PaymentLinkScreen> createState() => _PaymentLinkScreenState();
}

class _PaymentLinkScreenState extends State<PaymentLinkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Payment Link',
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
          
          Image.asset('assets/images/paymentlinkscreenimage.png'),
        
          Column(
            
            children: [
              Text('Share with the world',textAlign: TextAlign.center,
              style: primaryFontmedium.copyWith(
                fontSize: 13,
                color: yblue
              ),),
    
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 320,
                      height: 54,
                      decoration: BoxDecoration(
                        color: ywhite,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            offset: Offset(0.0, 0.75),
                            blurRadius: 5,
                            color: ygrey
              
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('https://www.youchoice.com/search?',
                          style: primaryFontmedium.copyWith(
                            fontSize: 13,
                            color:yblue 

                          ),),
                          Container(
                            width: 75,
                            height: 34,
                            decoration: BoxDecoration(
                              color:yindigo,
                              borderRadius: BorderRadius.circular(7)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/images/paymentlinkimage.png',
                                height: 20,
                                color: ywhite,),
                                Text('Copy',
                                style: TextStyle(
                                  color: ywhite
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ysizedbox20,
               Padding(
                 padding: const EdgeInsets.only(bottom: 10),
                 child: ElevatedButton(
                           
                           style: ElevatedButton.styleFrom(
                             minimumSize: Size(290, 50),
                             backgroundColor: yindigo,
                             shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                             )
                           ),
                           onPressed: (){
                             //Navigator.of(context).pushReplacementNamed('/selectcard');
                           }, 
                       child:Row(
                         children: [
                           Text('Share',
                           style: TextStyle(
                               fontSize: 17
                           ),),
                           //Icon(Icons.)
                         ],
                       )),
               ),
            ],
          ),
        
        ],
      )),
    );
  }
}