import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class DthDiscriptionScreen extends StatefulWidget {
  const DthDiscriptionScreen({super.key});

  @override
  State<DthDiscriptionScreen> createState() => _DthDiscriptionScreenState();
}

class _DthDiscriptionScreenState extends State<DthDiscriptionScreen> {
  var registerednumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
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
                                                    Navigator.of(context).pushReplacementNamed( '/dthscreen');
                                                  },
                                                  child: Image.asset('assets/icons/backarrow.png')),
                                               Text('DTH Bill',
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
                ysizedbox30,
                Column(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 30),
                            child: Row(
                              children: [
                                Text('Airtel Digital TV',
                                style: primaryFontsemiBold.copyWith(
                                  fontSize: 20,
                                  color: yindigo
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 30,right: 10),
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: ywhite,
                                border: Border.all(
                                  color: yindigo
                                ),borderRadius: BorderRadius.circular(5)
                              ),
                              child: TextField(
                                controller: registerednumber,
                                decoration: InputDecoration(
                                  hintText: 'Subscriber ID/Registered Mobile Number',
                                  hintStyle: TextStyle(
                                    color: yblue,
                                    fontSize: 14
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  ),
                                  border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Text('Press the menu button on your airtel DTH remote and select my accont to get your subscriber id.',
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 11
                            ),),
                          ),
                          ysizedbox40,
                          ysizedbox40,
                          ysizedbox40,
                          ysizedbox40,
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed( '/dthscreen');
                            },
                            child: Container(
                              height: 58,
                              width: 250,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text('Confirm',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ywhite
                                ),),
                              ),
                            ),
                          )
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