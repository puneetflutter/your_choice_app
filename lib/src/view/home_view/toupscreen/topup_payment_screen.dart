import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';

class TopUpPaymentScreen extends StatefulWidget {
  const TopUpPaymentScreen({super.key});

  @override
  State<TopUpPaymentScreen> createState() => _TopUpPaymentScreenState();
}

class _TopUpPaymentScreenState extends State<TopUpPaymentScreen> {
  var cardnumberController=TextEditingController();
  var ccvcodeController=TextEditingController();
  var edateController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
               Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/topupscreen');
                      },
                      child: Icon(Icons.arrow_back,
                      color: yblue,),
                    ),
                    Text('Payment Details',
                    style: primaryFontsemiBold.copyWith(
                      color: yblue,
                      fontSize: 20,
                      ),),
                      Container()
                     
                  ],   
                ),
              ),
            ),
            ysizedbox30,
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Container(
                          height: 241,
                          width: 374,
                          decoration: BoxDecoration(
                            color: ywhite,
                            border: Border.all(
                              color: yblue,
                              width: 1
                            )
                          ),
                          child: Column(
                          
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                                
                                      children: [
                                        Image.asset('assets/images/mostercardimage1.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 7),
                                          child: Text('Master Card',
                                          style: primaryFontregular.copyWith(
                                            fontSize: 17,
                                            color: yblue
                                          ),),
                                        ),
                                       
                                      ],
                                    ),
                                     Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: yblue
                                                ),
                                                color: ywhite
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 5,right:5),
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: yblue
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 15),
                                child: Row(
                                  children: [
                                    Text('CREDIT CARD NUMBER',
                                    style: primaryFontsemiBold.copyWith(
                                             color: yblue,
                                             fontSize: 8
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                child: Container(
                                  height: 26.13,
                                  width: 339,
                                  decoration: BoxDecoration(
                                    color: ygrey.withOpacity(0.6),
                                    border: Border.all(
                                      color: yblueversion,
                                      
                                    ),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: cardnumberController,
                                      decoration: InputDecoration(
                                        hintText: '0000 0000 0000 ****',
                                        hintStyle: TextStyle(
                                          fontSize: 9.5
                                        ),
                                        border: OutlineInputBorder(
                                         // borderRadius: BorderRadius.circular(5)
                                        )
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                              ysizedbox10,
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text('CVV CODE',
                                    style: primaryFont.copyWith(
                                      fontSize: 9,
                                      color: yblue
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
             ),
             ysizedbox40,
             ysizedbox40,
             ysizedbox40,
               ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
              Navigator.of(context).pushReplacementNamed( '/paymentsuccess');
              }, 
                       child:Text('Next',
                       style: TextStyle(
              fontSize: 17
                       ),)),
          ],
        ),
      ),
    );
  }
}