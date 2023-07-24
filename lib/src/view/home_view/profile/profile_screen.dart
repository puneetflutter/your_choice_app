import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../controller/sigin_controller.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  final navigationCOntroller=Get.find<SiginController>();
  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
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
                      Column(
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Profile',
                                          style: TextStyle(
                                            color: ywhite,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Raja, 987654321',
                                                style: TextStyle(
                                                  color: ywhite
                                                ),),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 6),
                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.of(context).pushReplacementNamed('/editprofile');
                                                    },
                                                    child: Text('Edit',
                                                    style: TextStyle(
                                                      color: ywhite
                                                    ),),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                     ],
                                   ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 5),
                                   child: Image.asset('assets/images/notificationimage.png'),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 5),
                                   child: Image.asset('assets/images/homeprofileimage.png'),
                                 )
                             
                                ],
                                           )
                                 ],
                               ),
                             ),
                  ],
                ),
                ysizedbox40,
                Column(
                  children: [
                    Container(
                     
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/createpinprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Create Tpin',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          InkWell(
                                            onTap: (){
                                                      Navigator.of(context).pushReplacementNamed('/createpin');
                                            },
                                            child: Image.asset('assets/icons/forwardprofile.png'))
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                            ysizedbox30,
                               Container(
                                                           height: 56,
                                                           width: 350,
                                                           decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                                                           ),
                                                           child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/passwordprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Password',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          InkWell(
                                            onTap: (){
                                                 Navigator.of(context).pushReplacementNamed('/password');
                                            },
                                            child: Image.asset('assets/icons/forwardprofile.png'))
                                          ],
                                         )
                                  ],
                                ),
                                                           ),
                                                         ),
                              ysizedbox30,
                               Container(
                                  height: 56,
                                  width: 350,
                                decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/referalpofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Referral',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          InkWell(
                                            onTap: (){
                                                  Navigator.of(context).pushReplacementNamed('/referal');
                                            },
                                            child: Image.asset('assets/icons/forwardprofile.png'))
                                          ],
                                         )
                                  ],
                                ),
                                                           ),
                                                         ),
                             ysizedbox30,
                               Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/supportprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Support',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          InkWell(
                                            onTap: (){
                                              Navigator.of(context).pushReplacementNamed('/support');
                                            },
                                            child: Image.asset('assets/icons/forwardprofile.png'))
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                              ysizedbox30,
                               Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/signoutprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Sign Out',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          Image.asset('assets/icons/forwardprofile.png')
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),

                            ysizedbox30,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('NORMAL CARD - 1.6% , CORP/BUSINESS 1 - 2.0%',
                                style: TextStyle(
                                  height: 1.8,
                                  fontSize: 14,
                                  color: yblue
                                ),),

                                Text('CORP/BUSINESS 2 - 2.2% , DINNERS CARD - 2.2%',
                                style: TextStyle(
                                  height: 1.8,
                                  fontSize: 14,
                                  color: yblue
                                ),),
                                Text('AMEX CARD - 2.4% , PREPAID CARD - 2.4%',
                                style: TextStyle(
                                  height: 1.8,
                                  fontSize: 14,
                                  color: yblue
                                ),)
                              ],
                            ),
                            ysizedbox20,
                            Padding(
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: Container(
                                height: 81,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color(0xffDDE9F0)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text('NOTE: INSTANT SETTLEMENT TO YOUR BANK \nACCOUNT, IF BANK SERVER ISSUE, IT WILL \nTAKE UP TO 2 WORKING DAYS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: yblue,
                                        height: 1.5,
                                        fontSize: 13
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ysizedbox30,

                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
              ]
            ),
          ],
        )
      ),
      bottomNavigationBar: Container(
         height: 60,
            width: size.width,
        color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.only(left: 5,right:5),
           child: Container(
            height: 52,
            width: size.width,
            decoration: BoxDecoration(
              color:yindigo,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Obx(()=>
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                                  onTap: (){
                                    navigationCOntroller.naviIndex(0);
                                    navigationCOntroller.update();
                                  },
                            child:navigationCOntroller.naviIndex==0? Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/navigationhome.png'),
                                    Text('Home')
                                  ],
                                ),
                              ),
                            ):Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                child:  Center(
                                  child: Image.asset('assets/images/navigationhome.png',
                                  color: ywhite,),
                                ),
                              ),
                            ),
                          ),
                           GestureDetector(
                            onTap: () {
                              navigationCOntroller.naviIndex(1);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed('/newpayee');
                            },
                             child:navigationCOntroller.naviIndex==1? Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationnewpayee.png',
                                   color: yindigo,),
                                  
                                    Text('New Payee')
                                  ],
                                ),
                              ),
                            ):Container(
                              child:  Image.asset('assets/images/navigationnewpayee.png',
                              color: ywhite,),
                            ),
                           ),
                           GestureDetector(
                            onTap: () {
                              navigationCOntroller.naviIndex(2);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed( '/history');
                            },
                             child:navigationCOntroller.naviIndex==2? Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationhistory.png',color: yindigo,),
                                  
                                    Text('History')
                                  ],
                                ),
                              ),
                            ):Container(
                              child:   Image.asset('assets/images/navigationhistory.png',color: ywhite,),
                            ),
                           ),
                           GestureDetector(
                            onTap: (){
                              navigationCOntroller.naviIndex(3);
                              navigationCOntroller.update();
                              Navigator.of(context).pushReplacementNamed('/profile');
                            },
                             child:navigationCOntroller.naviIndex==3? Container(
                              height: 30,
                              width: 85,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                   Image.asset('assets/images/navigationprofile.png',
                                   color: yindigo,),
                                  
                                    Text('Profile')
                                  ],
                                ),
                              ),
                            ):Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                child:  Image.asset('assets/images/navigationprofile.png',
                                     color: ywhite,),
                              ),
                            ),
                           )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
           ),
         ),
       ),
    );
  }
}