import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/sigin_controller.dart';

class TransferSummeryScreen extends StatefulWidget {
  const TransferSummeryScreen({super.key});

  @override
  State<TransferSummeryScreen> createState() => _TransferSummeryScreenState();
}

class _TransferSummeryScreenState extends State<TransferSummeryScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.of(context).pushNamed('/home');
                          },
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
                    ysizedbox40,
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
                ysizedbox40,
                Column(
                 
                  children: [
                    Container(
                      height: 600,
                     
                      decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                )
                      ),
                      
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Transfer Summery',
                                  style: primaryFontmedium.copyWith(
                                    fontSize: 19,
                                    color: Color(0xff004481)
                                  ),)
                                ],
                              ),
                              ysizedbox20,
                              Text('To:',
                              style: TextStyle(
                                fontSize: 18
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(left: 5,right: 20,top: 20),
                                child: Container(
                                  height: 202,
                                
                                  decoration: BoxDecoration(
                                    color: ywhite,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        offset: Offset(0.0, 0.75),
                                        blurRadius: 5,
                                        color: ygrey
                              
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text('You Are Sending',
                                                style: primaryFontmedium.copyWith(
                                                  fontSize: 14,
                                                  color: Color(0xff174885)
                                                ),),
                                              ],
                                            ),
                                            Container(
                                              width: 65,
                                              child: Text('₹ 1000'))
                                          ],
                                        ),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Found Transfer Fee',
                                            style: primaryFontmedium.copyWith(
                                              fontSize: 14,
                                              color: Color(0xff174885)
                                            ),),
                                            Container(
                                              width: 65,
                                              child: Text('₹ 20,00'))
                                          ],
                                        ),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Service Charge',
                                            style: primaryFontmedium.copyWith(
                                              fontSize: 14,
                                              color: Color(0xff174885)
                                            ),),
                                            Container(
                                              width: 65,
                                              child: Text('₹ 50,00'))
                                          ],
                                        ),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Your Total',
                                            style: primaryFontmedium.copyWith(
                                              fontSize: 14,
                                              color: Color(0xff174885)
                                            ),),
                                            Container(
                                              width: 65,
                                              child: Text('₹ 1000.0'))
                                          ],
                                        ),
                                         Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Receipiant Receives',
                                            style: primaryFontmedium.copyWith(
                                              fontSize: 14,
                                              color: Color(0xff174885)
                                            ),),
                                            Container(
                                              width: 65,
                                              child: Text('₹ 999.00',
                                              style: primaryFontsemiBold.copyWith(
                                                fontSize: 14,
                                                color: yblue
                                              ),),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ysizedbox40,
                      ysizedbox40,
                      ysizedbox20,
             ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(320, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  context: context, 
                builder: (context){
                  return Container(
                           height: 350,
                           decoration: BoxDecoration(

                           ),
                           child: Column(
                             children:[ 
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Image.asset('assets/images/generatelinkimage.png',
                                                           height: 200,
                                                           fit: BoxFit.fitHeight,
                               ),
                              ),
                              ysizedbox10,
                              Container(
                                height: 50,
                                width: 320,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      offset: Offset(0.0, 0.75),
                                      blurRadius: 5,
                                      color: ygrey
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('https://www.yourchoice.com/search?'),
                                    Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: yindigo,
                                        //color:Color(0xff185697),
                                        borderRadius: BorderRadius.circular(6)
                                      ),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/images/paymentlinkimage.png',
                                          color: ywhite,height: 20,fit: BoxFit.fitHeight,),
                                          Text('Copy',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: ywhite
                                          ),)
                  
                                        ],
                                      ) ,
                                    )
                                  ],
                                ),
                              ),
                               ysizedbox20,
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushNamed('/ptopscreen');
                                },
                                child: Container(
                                  height: 50,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: yindigo,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        offset: Offset(0.0, 0.75),
                                        blurRadius: 5,
                                        color: ygrey
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Center(
                                    child: Text('Done',
                                    style: primaryFontsemiBold.copyWith(
                                      color: ywhite,
                                      fontSize: 18
                                    ),),
                                  )
                                   
                                     
                                    ),
                              )
                            
                                   ]       )     
                  );
                });
                //Navigator.of(context).pushNamed( '/transfersummery');
              }, 
             child:Text('Generate Link',
             style: primaryFontsemiBold.copyWith(
              fontSize: 17,
              color: ywhite
             ),)),
                  ysizedbox20,
             ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(320, 50),
                backgroundColor: ygrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
  Navigator.of(context).pushNamed('/ptopscreen');
                //Navigator.of(context).pushNamed( '/transfersummery');
              }, 
             child:Text('Back',
             style: primaryFontsemiBold.copyWith(
              fontSize: 17,
              color: yblue
             ),)),
                            ],
                          )
                        ],
                      ),
                    )
                    ),
                      
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}