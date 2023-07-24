import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class ReferalScreen extends StatefulWidget {
  const ReferalScreen({super.key});

  @override
  State<ReferalScreen> createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {
  var referallinkController = TextEditingController();

  List referhistoryimage =[
    'assets/images/referhistoryimage1.png',
    'assets/images/referhistoryimage2.png',
    'assets/images/referhistoryimage3.png',
    'assets/images/referhistoryimage4.png',
    'assets/images/referhistoryimage5.png',
    'assets/images/referhistoryimage6.png',
    'assets/images/referhistoryimage7.png',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child:ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                          Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pushReplacementNamed( '/profile');
                                },
                                child: Image.asset('assets/icons/backarrow.png')),
                           Text('Referral',
                           style: primaryFontmedium.copyWith(
                            fontSize: 25,
                            color: ywhite
                           ),),
                           Image.asset('assets/images/homeprofileimage.png')
                            ],
                           ),
                         )
                  ],
                ),
                ysizedbox40,
                Column(
                  children: [
                   Container(
                    height: 650,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ywhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      )
                    ),
                    child: Column(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 20),
                          child: Row(
                            children: [
                              Text('Referral Link',
                              style: primaryFontsemiBold.copyWith(
                                fontSize: 14,
                                color: yblue
                              ),),
                          
                            ],
                          ),

                        ),
                            ysizedbox10,
                              Padding(
                                padding: const EdgeInsets.only(left: 30,right: 30),
                                child: Container(
                                  height: 44,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: ywhite,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: TextField(
                                    controller: referallinkController,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.file_copy,
                                      color: yindigo,),
                                      hintText: 'http//yourchoicepayment.html.com',
                                      hintStyle: TextStyle(
                                        color: yindigo,
                                        fontSize: 14
                                      ),
                                      // fillColor: ywhite,
                                      // filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:BorderRadius.circular(10)
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Referral History',
                                    style: primaryFontsemiBold.copyWith(
                                      fontSize: 16
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 500,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context,index){
                                  return Column(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                         Container(
                                          width: MediaQuery.of(context).size.width,
                                           child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               Row(
                                                                               
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 50,left: 30),
                                                    child: Image(image: AssetImage(referhistoryimage[index])),
                                         
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 40,left: 10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 20),
                                                          child: Text('User Name'),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 5),
                                                          child: Text('Total Refer Amounts'),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text('Time : 09:43',
                                                              style: TextStyle(
                                                                fontSize: 12
                                                              ),),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 20,),
                                                                child: Text('Date : 8-7-2022',
                                                                style: TextStyle(
                                                                  fontSize: 12
                                                                ),),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  
                                                ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(top: 15,right: 10),
                                                 child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Text('₹ 345'),
                                                      ],
                                                    ),
                                               )
                                             ],
                                           ),
                                         ),
                                      
                                         Padding(
                                           padding: const EdgeInsets.only(left: 30,right: 10,top: 5),
                                           child: Divider(
                                            thickness: 1,
                                           ),
                                         )
                                    ],
                                  );
                                }),
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