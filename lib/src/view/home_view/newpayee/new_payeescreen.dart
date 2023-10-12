import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:your_choice_app/src/controller/payout_controller.dart';
import '../../../controller/pay_controller/add_newpay_controller.dart';

import '../../../controller/sigin_controller.dart';

class NewPayeeScreen extends StatefulWidget {
  const NewPayeeScreen({super.key});

  @override
  State<NewPayeeScreen> createState() => _NewPayeeScreenState();
}

class _NewPayeeScreenState extends State<NewPayeeScreen> {
  @override
  void initState() {
    super.initState();
    getpayController.getnewpay();
  }

  List image = [
    'assets/images/newpayeeimage1.png',
    'assets/images/newpayeeimage2.png',
    'assets/images/newpayeeimage3.png',
    'assets/images/newpayeeimage4.png',
  ];

  final getpayController = Get.find<PayController>();
  final navigationCOntroller = Get.find<AuthController>();
  final payeeController =Get.find<PayoutController>();
  String _selectedValue = '';

  Future _showAlert({required String payid}) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text('Delete pay'),
          content: const Text('Are you sure want to delete '),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes', style: TextStyle(color: Colors.black)),
              onPressed: () {
                getpayController.deletepay(id: payid);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
      // builder:
    );
  }
// --- Button Widget --- //

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
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ywhite,
                          borderRadius: const BorderRadius.only(
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
                          GetBuilder<PayController>(builder: (_) {
                            return getpayController.getpaydata.isEmpty
                                ? Container(
                                    height: size.height / 2,
                                    width: size.width,
                                    child: const Center(child: Text("No Data")))
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount:
                                        getpayController.getpaydata.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          //Navigator.of(context).pushNamed( '/dthdetail');
                                          payeeController
                                              .checkPinAvailability(
                                                  getpayController
                                                      .getpaydata[index].id
                                                      .toString());
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, left: 20),
                                                  child: Column(
                                                    children: [
                                                      Image.asset(
                                                        'assets/icons/profileicon.png',
                                                        fit: BoxFit.fitHeight,
                                                        height: 50,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20, top: 20),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        getpayController
                                                            .getpaydata[index]
                                                            .name,
                                                        style: TextStyle(
                                                            fontSize: 15.5),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Bank Name :  ',
                                                            style: TextStyle(
                                                                height: 1.5),
                                                          ),
                                                          Text(getpayController
                                                              .getpaydata[index]
                                                              .bankName)
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'AC.No :  ',
                                                            style: TextStyle(
                                                                height: 1.5),
                                                          ),
                                                          Text(
                                                            getpayController
                                                                .getpaydata[
                                                                    index]
                                                                .accountNumber,
                                                            style: TextStyle(
                                                                color: ygrey
                                                                    .withOpacity(
                                                                        0.9)),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'IFSC Code :  ',
                                                            style: TextStyle(
                                                                height: 1.5),
                                                          ),
                                                          Text(
                                                            getpayController
                                                                .getpaydata[
                                                                    index]
                                                                .bankIfscCode,
                                                            style: TextStyle(
                                                                color: ygrey
                                                                    .withOpacity(
                                                                        0.9)),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'Mobile Number :  ',
                                                            style: TextStyle(
                                                                height: 1.5),
                                                          ),
                                                          Text(
                                                            getpayController
                                                                .getpaydata[
                                                                    index]
                                                                .contactNumber,
                                                            style: TextStyle(
                                                                color: ygrey
                                                                    .withOpacity(
                                                                        0.9)),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: Row(
                                                    children: [
                                                      PopupMenuButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7)),
                                                          icon: Icon(
                                                              Icons.more_vert),
                                                          onSelected:
                                                              (String value) {
                                                            setState(() {
                                                              _selectedValue =
                                                                  value;
                                                            });
                                                            _showAlert(
                                                                payid: getpayController
                                                                    .getpaydata[
                                                                        index]
                                                                    .id
                                                                    .toString());
                                                          },
                                                          itemBuilder:
                                                              (BuildContext
                                                                      ctx) =>
                                                                  [
                                                                    const PopupMenuItem(
                                                                        value:
                                                                            '',
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Icon(
                                                                            CupertinoIcons.delete,
                                                                            color:
                                                                                Colors.grey,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        ))
                                                                  ]),
                                                      //  IconButton(onPressed: (){

                                                      //  },
                                                      //  icon:Icon(Icons.more_vert))
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
                                  );
                          }),
                          ysizedbox40,
                          ysizedbox20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/newpaydetail');
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
