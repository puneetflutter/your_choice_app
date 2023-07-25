import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/sigin_controller.dart';

class SelectCardScreen extends StatefulWidget {
  const SelectCardScreen({super.key});

  @override
  State<SelectCardScreen> createState() => _SelectCardScreenState();
}

class _SelectCardScreenState extends State<SelectCardScreen> {
  List cardimage=[
    'assets/images/normalcardimage.png',
    'assets/images/corpratecardimage.png',
    'assets/images/corpratecard2image.png',
    'assets/images/preparedcardimage.png',
    'assets/images/amexcardimage.png',
    'assets/images/dinnercardimage.png'
  ];
  List title=[
    'Normal Card',
    'Corporate / \nBusiness Card 1',
    'Corporate / \nBusiness Card 2',
    'Prepard Card',
    'Amex Card',
  
  ];
  final signinController=Get.find<SiginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(()=>
           Column(
            
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/instaptop');
                      },
                      child: Icon(Icons.arrow_back,color: yblue,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
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
            // ysizedbox40,
            // ysizedbox30,
            // Padding(
            //   padding: const EdgeInsets.only(left: 10,right: 10),
            //   child: GridView.builder(
            //     shrinkWrap: true,
            //     itemCount: cardimage.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     mainAxisSpacing: 40,
            //     crossAxisSpacing: 20), 
            //     itemBuilder: (context,index){
            //        return Container(
            //          child: Column(
            //            children: [
            //              Container(
            //                     height: 50,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                       color:ywhite,
            //                      // boxShadow: <BoxShadow>[
            //                       //   BoxShadow(
            //                       //     offset: Offset(0.0, 0.75),
            //                       //     blurRadius: 5,
            //                       //     color: ygrey
            //                       //   )
            //                       // ],
            //                       border: Border.all(
            //                         color: yindigo.withOpacity(1),
            //                         width: 1.5
            //                       ),
            //                      borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: Center(
            //                       child: Image.asset(cardimage[index],fit: BoxFit.fitHeight,height: 45,),
            //                     ),
            //              ),
            //            Text(title[index],)
            //            ],
            //          ),
            //        );
            //     }),
              ysizedbox40,
              ysizedbox30,
             Padding(
               padding: const EdgeInsets.only(left: 6,right: 6),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:yblueversion,
                     
                    ),
                    child: Image.asset( 'assets/images/selectednormal.png')),
                     Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:yblueversion,
                     
                    ),
                    child: Image.asset('assets/images/selected1coorprate.png'),),
                     Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yblueversion,
                     
                    ),
                    child: Image.asset( 'assets/images/selected2coorprate.png') ),
                  
                 
                  
                 
                
                ],
               ),
             ),
             ysizedbox10,
             Padding(
               padding: const EdgeInsets.only(left: 6,right: 6),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      signinController.selctedtextindex(0);
                      signinController.update();
                    },
                    child: Text( 'Normal Card',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                      fontSize: 13,
                      color:signinController.selctedtextindex==0? yblueversion:yblue
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      signinController.selctedtextindex(1);
                      signinController.update();
                    },
                    child: Text('Corporate / \nBusiness Card 1',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                      fontSize: 13,
                      color:signinController.selctedtextindex==1? yblueversion:yblue
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                     signinController.selctedtextindex(2);
                     signinController.update();
                    },
                    child: Text(  'Corporate / \nBusiness Card 2',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                     fontSize: 13,
                     color:signinController.selctedtextindex==2?yblueversion: yblue
                    ),),
                  )
                ],
               ),
             ),
        
           ysizedbox40,
              ysizedbox30,
             Padding(
               padding: const EdgeInsets.only(left: 6,right: 6),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yblueversion,
                   
                    ),
                    child: Image.asset( 'assets/images/preparedcardimage.png',color: ywhite,)),
                     Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yblueversion,
                     
                    ),
                    child: Image.asset( 'assets/images/selectedamex.png',),),
                     Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yblueversion,
                    
                    ),
                    child: Image.asset('assets/images/selecteddinnerimage.png') ),
                ],
               ),
             ),
                ysizedbox10,
             Padding(
               padding: const EdgeInsets.only(left: 6,right: 6),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                        signinController.selctedtextindex(3);
                        signinController.update();
                    },
                    child: Text( 'Prepard Card',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                     fontSize: 13,
                     color:signinController.selctedtextindex==3?yblueversion: yblue
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      signinController.selctedtextindex(4);
                      signinController.update();
                    },
                    child: Text('Amex Card',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                        fontSize: 13,
                        color:signinController.selctedtextindex==4? yblueversion:yblue
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      signinController.selctedtextindex(5);
                      signinController.update();
                    },
                    child: Text( 'Dinner"s Card',textAlign: TextAlign.center,
                    style: primaryFont.copyWith(
                      fontSize: 13,
                      color:signinController.selctedtextindex==5?yblueversion: yblue
                    ),),
                  )
                ],
               ),
             ),
             ysizedbox40,
             ysizedbox40,
             ysizedbox40,
             ysizedbox40,
             ysizedbox20,
              ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                minimumSize: Size(290, 50),
                backgroundColor: yindigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: (){
              Navigator.of(context).pushNamed( '/topupscreen');
              }, 
                       child:Text('Next',
                       style: TextStyle(
              fontSize: 17
                       ),)),
             ysizedbox20,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Select the card for Amex Card Continue!',
                style: primaryFont.copyWith(
                  fontSize: 15,
                  color: yblue
        
                ),)
              ],
             )
          ],
              ),
        )
      ),
    );
  }
}