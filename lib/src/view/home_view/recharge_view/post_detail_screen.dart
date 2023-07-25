import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class PostpaidDetailScreen extends StatefulWidget {
  const PostpaidDetailScreen({super.key});

  @override
  State<PostpaidDetailScreen> createState() => _PostpaidDetailScreenState();
}
List image=[
   'assets/images/bsnlimage.png',
  'assets/images/airtelimage.png',
  'assets/images/airlinedthimage.png',
  'assets/images/asiantdthimage.png',
  'assets/images/connectdthimage.png',
  'assets/images/exceldthimage.png'
    // 'assets/images/jioimage.png',
    // 'assets/images/vodphoneimage.png'
];
List title=[
  'BSNL Broadhband/Landline',
 'Airtel Digital Tv',
 'Alliance Broadthband',
  'Asiant Broadthband',
  'Connect Broadthband',


];
class _PostpaidDetailScreenState extends State<PostpaidDetailScreen> {
  var searchController=TextEditingController();
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
                                                Navigator.of(context).pushNamed('/postpaid');
                                              },
                                              child: Image.asset('assets/icons/backarrow.png')),
                                           Text('BSNL Broadhband',
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
                                                Navigator.of(context).pushNamed('/dthscreen');
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
                ysizedbox30,
                Column(
                  children: [
                     Container(
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                            color: ywhite,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Text('Telephone Number',
                              style: primaryFontsemiBold.copyWith(
                                color: yblue,
                                fontSize: 16
                              ),),
                            ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                                   child: Container(
                                    height: 45,
                                     child: Center(
                                       child: TextField(
                                        controller: searchController,
                                        decoration: InputDecoration(
                          
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: yindigo
                                            ),
                                            
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: yindigo
                                            ),
                                            borderRadius: BorderRadius.circular(10)
                                          )
                                        ),
                                       ),
                                     ),
                                   ),
                                 ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 0),
                              child: Row(
                                children: [
                                  Text('Please enter your Telephone number with \nSTD code(exclude 0)',
                                  style: TextStyle(
                                    color: yblue,
                                    fontSize: 12
                                  ),
                                  )
                                ],
                              ),
                            ),
                            ysizedbox40,
                            ysizedbox40,
                            ysizedbox40,
                            ysizedbox40,
                            ysizedbox40,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).pushNamed('/postpaid');
                                    },
                                    child: Container(
                                                          height: 50,
                                                          width: 270,
                                                          decoration:BoxDecoration(
                                                            color: yindigo,
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: Center(
                                                            child: Text('Confirm',
                                                            style: primaryFontmedium.copyWith(
                                                              fontSize: 17,
                                                              color: ywhite
                                                            ),),
                                                          ),
                                                        ),
                                  ),
                                ],
                              ),
                          
                          ],
                        ),
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