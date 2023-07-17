import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/sigin_controller.dart';

class PtopScreen extends StatefulWidget {
  const PtopScreen({super.key});

  @override
  State<PtopScreen> createState() => _PtopScreenState();
}

class _PtopScreenState extends State<PtopScreen> {
  var purposeController=TextEditingController();
  var transferController=TextEditingController();
  var customernameController=TextEditingController();
  var custmobilenumberController=TextEditingController();
  var descriptionController=TextEditingController();
  final pageshowController=Get.find<SiginController>();
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
                            Navigator.of(context).pushReplacementNamed('/home');
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
                ),ysizedbox40,
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
                        padding: const EdgeInsets.only(left: 33,top: 30),
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text('Purpose Payment',
                            style: primaryFont.copyWith(
                              fontSize: 16,
                              color: yblue,
                              letterSpacing: 0.5
                            ),),
                          
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 10),
                              child: Container(
                                width: 365,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblueversion
                                  ),
                                  borderRadius:BorderRadius.circular(5)
                                ),
                                child: TextField(
                                  enabled: true,
                                  controller: purposeController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    border: OutlineInputBorder(
                                      
                            
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                ),
                              ),
                            ),
                            ysizedbox20,
                              Text('Transfer Amount',
                            style: primaryFont.copyWith(
                              fontSize: 16,
                              color: yblue,
                              letterSpacing: 0.5
                            ),),
                            
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 10),
                              child: Container(
                                width: 365,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblueversion
                                  ),
                                  borderRadius:BorderRadius.circular(5)
                                ),
                                child: TextField(
                                  enabled: true,
                                  controller: transferController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    border: OutlineInputBorder(
                                      
                            
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                ),
                              ),
                            ),
                             ysizedbox20,
                              Text('Customer Name',
                            style: primaryFont.copyWith(
                              fontSize: 16,
                              color: yblue,
                              letterSpacing: 0.5
                            ),),
                            
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 10),
                              child: Container(
                                width: 365,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblueversion
                                  ),
                                  borderRadius:BorderRadius.circular(5)
                                ),
                                child: TextField(
                                  enabled: true,
                                  controller: customernameController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    border: OutlineInputBorder(
                                      
                            
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                ),
                              ),
                            ),
                             ysizedbox20,
                              Text('Customer Mobile Number',
                            style: primaryFont.copyWith(
                              fontSize: 16,
                              color: yblue,
                              letterSpacing: 0.5
                            ),),
                            
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 10),
                              child: Container(
                                width: 365,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblueversion
                                  ),
                                  borderRadius:BorderRadius.circular(5)
                                ),
                                child: TextField(
                                  enabled: true,
                                  controller: custmobilenumberController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    border: OutlineInputBorder(
                                      
                            
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                ),
                              ),
                            ),
                             ysizedbox20,
                              Text('Description',
                            style: primaryFont.copyWith(
                              fontSize: 16,
                              color: yblue,
                              letterSpacing: 0.5
                            ),),
                            
                            Padding(
                              padding: const EdgeInsets.only(right: 20,top: 10),
                              child: Container(
                                width: 365,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblueversion
                                  ),
                                  borderRadius:BorderRadius.circular(5)
                                ),
                                child: TextField(
                                  enabled: true,
                                  controller: descriptionController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    border: OutlineInputBorder(
                                      
                            
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                ),
                              ),
                            ),
                            ysizedbox40,
             ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(310, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){

                Navigator.of(context).pushReplacementNamed( '/transfersummery');
              }, 
             child:Text('Next',
             style: primaryFontsemiBold.copyWith(
              fontSize: 17,
              color: ywhite
             ),)),
             ysizedbox20,
                          ],
                        ),
                      ),
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