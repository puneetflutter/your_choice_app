import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../controller/sigin_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final navigationCOntroller=Get.find<SiginController>();
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Container(
      height: 1000,
      child: Scaffold(
        backgroundColor: yindigo,
       body: SafeArea(
         child: ListView(
           children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ysizedbox30,
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('₹2,344.67',
                              style: TextStyle(
                                color: ywhite,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),),
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
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Row(
                        children: [
                          Text('Main Wallet',
                          style: TextStyle(
                            fontSize: 16,
                            color: ywhite
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Image.asset('assets/images/arrowforimage.png',height: 18,
                            fit: BoxFit.fitHeight,),
                          )
                          
                        ],
                       ),
                     ),
                     ysizedbox40,
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/instaptop');
                          },
                          child: Image.asset('assets/images/instopupimage.png')),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/paymentlink');
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ywhite
                            ),
                            child: Image.asset('assets/images/paymentlinkimage.png'))),
                        GestureDetector(
                          onTap: (){
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
                              context: context, 
                            builder: (context){
                              return Padding(
                                padding: const EdgeInsets.only(left: 10,right:10),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: ywhite,
                                    
                                  ),
                                  child: Column(
                                    children: [
                                      ysizedbox10,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Open With',
                                          style: primaryFontsemiBold.copyWith(
                                            color: yblue,
                                            fontSize: 20
                                          ),),
                                          Image.asset('assets/images/wrongwhatsappimage.png',
                                          color: Colors.black,
                                          height: 17,
                                          width: 17,
                                          fit:BoxFit.fitHeight ,)
                              
                                        ],
                                      ),
                                      ysizedbox20,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/images/whatsapplogoimage.png'),
                                          Image.asset('assets/images/gbwhatsapplogoimage.png')
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Whatsapp',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: yindigo
                                            ),),
                                            Text('GB Whatsapp',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: yindigo
                                            ),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          child: Image.asset('assets/images/homewhatsappimage.png'))
                      ],
                     ),
                     ysizedbox10,
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Instant Topup',
                        style: TextStyle(
                          fontSize: 14,
                          color: ywhite,
                        ),),
                        Text('Payment Link',
                          style: TextStyle(
                          fontSize: 14,
                          color: ywhite,
                        ),),
                        Text('Whatsapp Link',
                          style: TextStyle(
                          fontSize: 14,
                          color: ywhite,
                        ),)
                      ],
                     )
    
                   
                  ],
                ),
                ysizedbox20,
                Column(
                  children: [
                    Container(
                      height: 600,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 25,left: 20),
                            child: Row(
                              children: [
                                Text('Service Operation',
                                style: primaryFontbold.copyWith(
                                  fontSize: 19,
                                  color: yblue
                                  
                                ),)
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(children:[
                                 GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pushReplacementNamed('/ptopscreen');
                                  },
                                  child: Image.asset('assets/images/ptopimage.png')),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('P to P',
                                    style: primaryFont.copyWith(
                                      
                                    ),),
                                  ),
                            ]),
                              Column(
                                children:[ 
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).pushReplacementNamed('/creditcard');
                                    },
                                    child: Image.asset('assets/images/creditcardimage.png')),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('Credit Card',
                                  style: primaryFont.copyWith(
    
                                  ),),
                                ),
                              ]
                              ),
                              Column(
                                children:[
                                 GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pushReplacementNamed( '/recharge');
                                  },
                                  child: Image.asset('assets/images/rechargeimage.png')),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10),
                                     child: Text('Recharge',
                                     style: primaryFont.copyWith(
    
                                  )
                                  ),
                                   )])
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Text('Recent Transaction',
                                  style: primaryFontbold.copyWith(
                                      fontSize: 18         
                           
                                    )
                               ),
                               Text('See all',
                               style: TextStyle(
                                color: yblue,
                                fontSize: 15
                               ),)
                              
                              
                              ],
                            ),
                          ),
                          
                          Container(
                            height: 370,
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                              color: ywhite
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('assets/images/personimage.png'),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Payment',
                                                              style: primaryFont.copyWith(
                                                                fontSize: 17    ),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 4),
                                                                child: Text('Payment from Wasim'),
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                            Text('₹243.54',
                                                            style: primaryFontsemiBold.copyWith(
                                                              color: Colors.green,
                                                              fontSize: 17
                                                            ),),
                                                             Padding(
                                                               padding: const EdgeInsets.only(top: 4),
                                                               child: Text('JUN 26'),
                                                             )
                                                            ],
                                                          )
                                                        ],
                                                        ),
                                ),
                                Divider(),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('assets/images/personimage.png'),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Payment',
                                                              style: primaryFont.copyWith(
                                                                fontSize: 17                                                            ),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 4),
                                                                child: Text('Payment from Wasim'),
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                            Text('₹243.54',
                                                            style: primaryFontsemiBold.copyWith(
                                                              color: Colors.red,
                                                              fontSize: 17
                                                            ),),
                                                             Padding(
                                                               padding: const EdgeInsets.only(top: 4),
                                                               child: Text('JUN 26'),
                                                             )
                                                            ],
                                                          )
                                                        ],
                                                        ),
                                ),
                                Divider(),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('assets/images/personimage.png'),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Payment',
                                                              style: primaryFont.copyWith(
                                                                fontSize: 17                                                            ),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 4),
                                                                child: Text('Payment from Wasim'),
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                            Text('₹243.54',
                                                            style: primaryFontsemiBold.copyWith(
                                                              color: Colors.green,
                                                              fontSize: 17
                                                            ),),
                                                             Padding(
                                                               padding: const EdgeInsets.only(top: 4),
                                                               child: Text('JUN 26'),
                                                             )
                                                            ],
                                                          )
                                                        ],
                                                        ),
                                ),
                                Divider(),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('assets/images/personimage.png'),
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Payment',
                                                              style: primaryFont.copyWith(
                                                                fontSize: 17                                                            ),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 4),
                                                                child: Text('Payment from Wasim'),
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                            Text('₹243.54',
                                                            style: primaryFontsemiBold.copyWith(
                                                              color: Colors.red,
                                                              fontSize: 17
                                                            ),),
                                                             Padding(
                                                               padding: const EdgeInsets.only(top: 4),
                                                               child: Text('JUN 26'),
                                                             )
                                                            ],
                                                          )
                                                        ],
                                                        ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                      
                  ],
                ),
             
       
              ],
             ),
           ],
         ),
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
      ),
    );
  }
}
