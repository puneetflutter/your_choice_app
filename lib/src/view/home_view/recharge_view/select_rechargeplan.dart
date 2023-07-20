import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class SelectRechargePlanScreen extends StatefulWidget {
  const SelectRechargePlanScreen({super.key});

  @override
  State<SelectRechargePlanScreen> createState() => _SelectRechargePlanScreenState();
}

class _SelectRechargePlanScreenState extends State<SelectRechargePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                      Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                       GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pushReplacementNamed('/home');
                                        },
                                        child: Image.asset('assets/icons/backarrow.png')),
                                     Text('Recharge Bill',
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
                              ysizedbox10,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children:[
                                       Container(
                                        height: 66,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: ywhite,
                                          borderRadius: BorderRadius.circular(18),
                                          
                                        ),
                                        child: Center(
                                          child: Image.asset('assets/icons/containermobile.png'),
                                        ),
                                       ),
                                       ysizedbox10,
                                       Text('Mobile',
                                       style: TextStyle(
                                        fontSize: 14,
                                        color: ywhite.withOpacity(0.8)
                                       ),)
                                    ]
                                       ),
                                  Column(
                                    children:[
                                      InkWell(
                                        onTap: (){

                                        },
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.of(context).pushReplacementNamed('/dthscreen');
                                          },
                                          child: Container(
                                            height: 66,
                                            width: 65,
                                            decoration: BoxDecoration(
                                              color: ywhite,
                                              borderRadius: BorderRadius.circular(18),
                                              
                                            ),
                                            child: Center(
                                              child: Image.asset('assets/icons/containerdth.png'),
                                            ),
                                           ),
                                        ),
                                      ),
                                       //Image.asset('assets/images/containerdth.png'),
                                       ysizedbox10,
                                       Text('DTH',
                                       style: TextStyle(
                                        fontSize: 14,
                                        color: ywhite.withOpacity(0.4)
                                       ),),

                                ]),
                                  Column(
                                    children:[
                                       InkWell(
                                        onTap: (){
                                          Navigator.of(context).pushReplacementNamed('/postpaid');
                                        },
                                         child: Container(
                                          height: 66,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            color: ywhite,
                                            borderRadius: BorderRadius.circular(18),
                                            
                                          ),
                                          child: Center(
                                            child: Image.asset('assets/icons/containerpostpaid.png'),
                                          ),
                                         ),
                                       ),
                                       ysizedbox10,
                                       Text('Postpaid',
                                       style: TextStyle(
                                        fontSize: 14,
                                        color: ywhite.withOpacity(0.5)
                                       ),)
                                ])
                                  
                                ],
                              )
                ],
              ),
              ysizedbox40,
              Column(
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      color: ywhite,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight:Radius.circular(10) 
                      )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 25),
                          child: Row(
                            children: [
                              Text('Select a recharge plan',
                              style: primaryFontsemiBold.copyWith(
                                fontSize: 20,
                                color: yblue
                              ),)
                            ],
                          ),
                        ),
                        ysizedbox40,
                        ysizedbox30,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('₹ 15',
                            style: primaryFontmedium.copyWith(
                              fontSize: 50,
                              color: yblue
                            ),),
                            ysizedbox10,
                           Container(
                              width: 200,
                              child: Divider(
                                color: ygrey.withOpacity(0.9),
                              )),
                          ],
                        ),
                        ysizedbox20,

                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        
                               
                              Text('Validity: Existing Plan',
                              style: TextStyle(
                                fontSize: 23,

                              ),),
                              ysizedbox30,
                              Text('Data: 1 GB',
                              style: TextStyle(
                                fontSize: 23
                              ),)
                            ],
                          ),
                        ),
                        ysizedbox40,
                          Container(
                            height: 63,
                            width: 250,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: yblue,

                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Text('Change Plan',
                              style: TextStyle(
                                color: yblue,
                                fontSize: 22
                              ),),
                            ),
                          ),
                          ysizedbox30,
                          ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              minimumSize: Size(290, 50),
              backgroundColor: yblue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
            onPressed: (){
                   showDialog(context: context,
                    builder:(context){
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        actions: [
                          Container(
                          
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              
                              children: [
                                ysizedbox30,
                                Center(child: Image.asset('assets/images/checkimage.png',
                                height: 110,
                                fit: BoxFit.fitHeight,)),
                                ysizedbox20,
                                Text('Recharge Successful \nComplate 1GB Data',
                                style: primaryFontmedium.copyWith(
                                  height: 1.5,
                                  color: yblue,
                                  fontSize: 20
                                ),),
                                ysizedbox40,
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).pushReplacementNamed( '/recharge');
                                  },
                                  child: Container(
                                    height: 45,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('Done',
                                    style: primaryFontmedium.copyWith(
                                      color: ywhite,
                                      fontSize: 17
                                    ),)),
                                  ),
                                ),
                                ysizedbox10,
                              ],
                            ),
                          )
                        ],
                      );
                    });
                    
             // Navigator.of(context).pushReplacementNamed('/selectcard');
            }, 
                     child:Text('Pay ₹15',
                     style: TextStyle(
            fontSize: 20
                     ),)),
                     ysizedbox10
                    
                      ],
                    ),
                  )
                ],
              )
            ],
      ),
          ],
        )),
    );
  }
}