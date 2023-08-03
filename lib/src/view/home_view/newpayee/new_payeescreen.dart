import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

import '../../../controller/sigin_controller.dart';

class NewPayeeScreen extends StatefulWidget {
  const NewPayeeScreen({super.key});

  @override
  State<NewPayeeScreen> createState() => _NewPayeeScreenState();
}

class _NewPayeeScreenState extends State<NewPayeeScreen> {
  List image = [
    'assets/images/newpayeeimage1.png',
    'assets/images/newpayeeimage2.png',
    'assets/images/newpayeeimage3.png',
    'assets/images/newpayeeimage4.png',
  ];
  @override
  Widget build(BuildContext context) {
    final navigationCOntroller = Get.find<AuthController>();
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New Payee',
                              style: TextStyle(
                                  color: ywhite,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Add new payments method',
                                style: TextStyle(color: ywhite),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/bottumnavbar');
                                  },
                                  child: Image.asset(
                                      'assets/images/notificationimage.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Image.asset(
                                  'assets/images/homeprofileimage.png'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            children: [
                              Text(
                                'Add Payee',
                                textAlign: TextAlign.start,
                                style: primaryFontbold.copyWith(
                                    color: yindigo, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        ysizedbox10,
                        Divider(
                          color: ygrey,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: image.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                //Navigator.of(context).pushNamed( '/dthdetail');
                              },
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 20),
                                        child: Column(
                                          children: [
                                            Image.asset(image[index]),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Raja',
                                              style: TextStyle(fontSize: 15.5),
                                            ),
                                            Text('ABC Bank Name'),
                                            Row(
                                              children: [
                                                Text('AC.No:'),
                                                Text(
                                                  ' 122323432442555425',
                                                  style: TextStyle(
                                                      color: ygrey
                                                          .withOpacity(0.7)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text('IFSC Code:'),
                                                Text(
                                                  ' ABCD12',
                                                  style: TextStyle(
                                                      color: ygrey
                                                          .withOpacity(0.7)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Mobile Number:',
                                                ),
                                                Text(
                                                  ' 9876543210',
                                                  style: TextStyle(
                                                      color: ygrey
                                                          .withOpacity(0.7)),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              ':',
                                              style: primaryFontbold.copyWith(
                                                  color: yblue),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  ysizedbox10,
                                  Divider(
                                    //thickness: 1,
                                    color: ygrey,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        ysizedbox40,
                        ysizedbox20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/bottumnavbar');
                              },
                              child: Container(
                                height: 50,
                                width: 230,
                                decoration: BoxDecoration(
                                    color: yblueversion,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    'Add New Payee',
                                    style: primaryFontmedium.copyWith(
                                        fontSize: 17, color: ywhite),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ysizedbox40,
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
      //   bottomNavigationBar:Container(
      //    height: 60,
      //       width: size.width,
      //   color: Colors.white,
      //    child: Padding(
      //      padding: const EdgeInsets.only(left: 5,right:5),
      //      child: Container(
      //       height: 52,
      //       width: size.width,
      //       decoration: BoxDecoration(
      //         color:yindigo,
      //         borderRadius: BorderRadius.circular(10)
      //       ),
      //       child: Center(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 5,right: 5),
      //               child: Obx(()=>
      //                Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     GestureDetector(
      //                             onTap: (){
      //                               navigationCOntroller.naviIndex(0);
      //                               navigationCOntroller.update();
      //                             },
      //                       child:navigationCOntroller.naviIndex==0? Container(
      //                         height: 30,
      //                         width: 80,
      //                         decoration: BoxDecoration(
      //                           color: ywhite,
      //                           borderRadius: BorderRadius.circular(10)
      //                         ),
      //                         child: Center(
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                             children: [
      //                               Image.asset('assets/images/navigationhome.png'),
      //                               Text('Home')
      //                             ],
      //                           ),
      //                         ),
      //                       ):Padding(
      //                         padding: const EdgeInsets.only(left: 15),
      //                         child: Container(
      //                           child:  Center(
      //                             child: Image.asset('assets/images/navigationhome.png',
      //                             color: ywhite,),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                      GestureDetector(
      //                       onTap: () {
      //                         navigationCOntroller.naviIndex(1);
      //                         navigationCOntroller.update();
      //                         Navigator.of(context).pushNamed('/newpayee');
      //                       },
      //                        child:navigationCOntroller.naviIndex==1? Container(
      //                         height: 30,
      //                         width: 100,
      //                         decoration: BoxDecoration(
      //                           color: ywhite,
      //                           borderRadius: BorderRadius.circular(10)
      //                         ),
      //                         child: Center(
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                             children: [
      //                              Image.asset('assets/images/navigationnewpayee.png',
      //                              color: yindigo,),

      //                               Text('New Payee')
      //                             ],
      //                           ),
      //                         ),
      //                       ):Container(
      //                         child:  Image.asset('assets/images/navigationnewpayee.png',
      //                         color: ywhite,),
      //                       ),
      //                      ),
      //                      GestureDetector(
      //                       onTap: () {
      //                         navigationCOntroller.naviIndex(2);
      //                         navigationCOntroller.update();
      //                         Navigator.of(context).pushNamed( '/history');
      //                       },
      //                        child:navigationCOntroller.naviIndex==2? Container(
      //                         height: 30,
      //                         width: 90,
      //                         decoration: BoxDecoration(
      //                           color: ywhite,
      //                           borderRadius: BorderRadius.circular(10)
      //                         ),
      //                         child: Center(
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                             children: [
      //                              Image.asset('assets/images/navigationhistory.png',color: yindigo,),

      //                               Text('History')
      //                             ],
      //                           ),
      //                         ),
      //                       ):Container(
      //                         child:   Image.asset('assets/images/navigationhistory.png',color: ywhite,),
      //                       ),
      //                      ),
      //                      GestureDetector(
      //                       onTap: (){
      //                         navigationCOntroller.naviIndex(3);
      //                         navigationCOntroller.update();
      //                         Navigator.of(context).pushNamed('/profile');
      //                       },
      //                        child:navigationCOntroller.naviIndex==3? Container(
      //                         height: 30,
      //                         width: 85,
      //                         decoration: BoxDecoration(
      //                           color: ywhite,
      //                           borderRadius: BorderRadius.circular(10)
      //                         ),
      //                         child: Center(
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                             children: [
      //                              Image.asset('assets/images/navigationprofile.png',
      //                              color: yindigo,),

      //                               Text('Profile')
      //                             ],
      //                           ),
      //                         ),
      //                       ):Padding(
      //                         padding: const EdgeInsets.only(right: 15),
      //                         child: Container(
      //                           child:  Image.asset('assets/images/navigationprofile.png',
      //                                color: ywhite,),
      //                         ),
      //                       ),
      //                      )
      //                   ],
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //      ),
      //    ),
      //  ) ,
    );
  }
}
