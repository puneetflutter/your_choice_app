import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class InstantTopupScreen extends StatefulWidget {
  const InstantTopupScreen({super.key});

  @override
  State<InstantTopupScreen> createState() => _InstantTopupScreenState();
}

class _InstantTopupScreenState extends State<InstantTopupScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
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
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color: yindigo)
                  ),
                  child: Image.asset( 'assets/images/normalcardimage.png')),
                   Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color: yindigo)
                  ),
                  child: Image.asset('assets/images/corpratecardimage.png'),),
                   Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color: yblueversion)
                  ),
                  child: Image.asset( 'assets/images/corpratecard2image.png') ),
                
               
                
               
              
              ],
             ),
           ),
           ysizedbox10,
           Padding(
             padding: const EdgeInsets.only(left: 6,right: 6),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text( 'Normal Card',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                  fontSize: 13,
                  color: yblue
                ),),
                Text('Corporate / \nBusiness Card 1',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                  fontSize: 13,
                  color: yblue
                ),),
                Text(  'Corporate / \nBusiness Card 2',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                 fontSize: 13,
                 color: yblue
                ),)
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
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color: yblueversion)
                  ),
                  child: Image.asset( 'assets/images/preparedcardimage.png',)),
                   Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color:yblueversion)
                  ),
                  child: Image.asset(  'assets/images/amexcardimage.png',),),
                   Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ywhite,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     offset: Offset(0.0, 0.75),
                    //     blurRadius: 5,
                    //     color: ygrey
                    //   )
                    // ],
                    border: Border.all(color: yblueversion)
                  ),
                  child: Image.asset(  'assets/images/dinnercardimage.png') ),
                
               
                
               
              
              ],
             ),
           ),
              ysizedbox10,
           Padding(
             padding: const EdgeInsets.only(left: 6,right: 6),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text( 'Prepard Card',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                 fontSize: 13,
                 color: yblue
                ),),
                Text('Amex Card',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                    fontSize: 13,
                    color: yblue
                ),),
                Text( 'Dinner"s Card',textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                  fontSize: 13,
                  color: yblue
                ),)
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
              Navigator.of(context).pushReplacementNamed('/selectcard');
            }, 
                     child:Text('Next',
                     style: TextStyle(
            fontSize: 17
                     ),)),
           ysizedbox20,
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please any one card choose!',
              style: primaryFont.copyWith(
                fontSize: 15,
                color: yblue

              ),)
            ],
           )
        ],
      )
      ),
    );
  }
}