import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class RechargeScreen extends StatefulWidget {
  const RechargeScreen({super.key});

  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  var mobileController=TextEditingController();
  List image=[
    'assets/images/rechargeprofile2.png',
    'assets/images/rechargeprofile3.png',
    'assets/images/rechargeprofile4.png',
    'assets/images/rechargeprofile5.png',
    'assets/images/rechargeprofile6.png',
  ];
  List title=[
    'AA',
    'Bikky Pate',
    'Cnas Kumar',
    'Dam Vicky',
    'Eanna',
    'Fikky Pate'
  ];
  List subtitle=[
    '9876543210',
    '9876543210',
    '9876543210',
    '9876543210',
    '9876543210',
    '9876543210'
  ];
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
                                  Container(
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
                                   Container(
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
                        
                        decoration: BoxDecoration(
                          color: ywhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                          )
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15,left: 15),
                              child: Container(
                                height: 49,
                              
                                decoration: BoxDecoration(
                                  color: ywhite,
                                  border: Border.all(
                                    color: yblue,
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(6)
                                ),
                                child: TextField(
                                  controller: mobileController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Name or Mobile Number',
                                    suffixIcon: Image.asset('assets/icons/contactimage.png'),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                      
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6)
                                    )
                                  ),
                                  
                                ),
                              ),
                            ),
                            ysizedbox20,
                          Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width,
                        decoration:BoxDecoration(
                          color: ygrey.withOpacity(0.5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Recent Recharge',
                              style: primaryFontmedium.copyWith(
                                fontSize: 17
                              ),)
                            ],
                          ),
                        ),
                      ),
                    
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
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
                          child: Column(
                            
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 15),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/rechargeprofile.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text('Ram',
                                          style: primaryFontmedium.copyWith(
                                            fontSize: 18,
                                            color: yblue
                                          ),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3),
                                            child: Text('9876543210',
                                            style: TextStyle(
                                              fontSize: 11
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3),
                                            child: Text('Plan of 149 expires on 5 jun 2023',
                                            style: TextStyle(
                                              fontSize: 11
                                            ),),
                                          )
                                        ],
                                      ),
                                    )                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                        }, 
                      
                      ),
                           ysizedbox20,
                          Container(
                        height: 25,
                        width: MediaQuery.of(context).size.width,
                        decoration:BoxDecoration(
                          color: ygrey.withOpacity(0.5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Select a Contact',
                              style: primaryFontmedium.copyWith(
                                fontSize: 17
                              ),)
                            ],
                          ),
                        ),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed('/selectprepaid');
                            },
                            child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
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
                            child: Column(
                              
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 15),
                                  child: Row(
                                    children: [
                                      Image.asset(image[index]),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(title[index],
                                            style: primaryFontmedium.copyWith(
                                              fontSize: 18,
                                              color: yblue
                                            ),),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 3),
                                              child: Text(subtitle[index],
                                              style: TextStyle(
                                                fontSize: 11
                                              ),),
                                            ),
                                            
                                          ],
                                        ),
                                      ) 
                                       ],
                                  ),
                                ),
                                
                              ],
                            ),
                                                  ),
                          );
                        }, 
                      
                      ),
                          ],
                          ),
                        ),
                      ),
                        

                     
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}