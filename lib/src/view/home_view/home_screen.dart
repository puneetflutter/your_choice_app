import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/payout_controller.dart';
import 'package:your_choice_app/src/controller/profile_controller/profileapi_controller.dart';

import '../../controller/sigin_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final navigationCOntroller = Get.find<AuthController>();
  final profileController = Get.find<ProfileApiController>();
  final payoutController = Get.find<PayoutController>();

  @override
  void initState() {
    super.initState();
    profileController.getprofile();
    payoutController.walletHistory(startDate: "2023-01-01", endDate: "2023-10-02");
  }

  void openWhatsapp(
      {required BuildContext context,
      required String text,
      required String number}) async {
    var whatsapp = number; //+92xx enter like this
    var whatsappURlAndroid =
        "whatsapp://send?text=Pay now https://admin.havyou.com/payment/ ";
    //  var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";

    // android , web
    if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
      await launchUrl(Uri.parse(whatsappURlAndroid));
    } else {
       ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp not installed")));
    }
  }

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
                      GetBuilder<ProfileApiController>(builder: (_) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹ ${profileController.walletAmount}',
                                style: TextStyle(
                                    color: ywhite,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('/notification');
                                        },
                                        child: SvgPicture.asset(
                                            'assets/images/notificationimage.svg')),
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
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Main Wallet',
                              style: TextStyle(fontSize: 16, color: ywhite),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      ysizedbox40,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/instaptop');
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/images/instant_topup.svg',
                                  height: 35,
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/paymentlink');
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/paymemt_link_icon.svg',
                                height: 30,
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                openWhatsapp(
                                    number: '+919633749714',
                                    text: 'hii',
                                    context: context);

                                // showModalBottomSheet(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.all(
                                //           Radius.circular(10.0)),
                                //     ),
                                //     context: context,
                                //     builder: (context) {
                                //       return Padding(
                                //         padding: const EdgeInsets.only(
                                //             left: 10, right: 10),
                                //         child: Container(
                                //           height: 200,
                                //           decoration: BoxDecoration(
                                //             color: ywhite,
                                //           ),
                                //           child: Column(
                                //             children: [
                                //               ysizedbox10,
                                //               Row(
                                //                 mainAxisAlignment:
                                //                     MainAxisAlignment
                                //                         .spaceBetween,
                                //                 children: [
                                //                   Text(
                                //                     'Open With',
                                //                     style: primaryFontsemiBold
                                //                         .copyWith(
                                //                             color: yblue,
                                //                             fontSize: 20),
                                //                   ),
                                //                   Image.asset(
                                //                     'assets/images/wrongwhatsappimage.png',
                                //                     color: Colors.black,
                                //                     height: 17,
                                //                     width: 17,
                                //                     fit: BoxFit.fitHeight,
                                //                   )
                                //                 ],
                                //               ),
                                //               ysizedbox20,
                                //               Row(
                                //                 mainAxisAlignment:
                                //                     MainAxisAlignment
                                //                         .spaceAround,
                                //                 children: [
                                //                   Image.asset(
                                //                       'assets/images/whatsapplogoimage.png'),
                                //                   Image.asset(
                                //                       'assets/images/gbwhatsapplogoimage.png')
                                //                 ],
                                //               ),
                                //               Padding(
                                //                 padding: const EdgeInsets.only(
                                //                     left: 20),
                                //                 child: Row(
                                //                   mainAxisAlignment:
                                //                       MainAxisAlignment
                                //                           .spaceAround,
                                //                   children: [
                                //                     Text(
                                //                       'Whatsapp',
                                //                       style: TextStyle(
                                //                           fontSize: 17,
                                //                           color: yindigo),
                                //                     ),
                                //                     Text(
                                //                       'GB Whatsapp',
                                //                       style: TextStyle(
                                //                           fontSize: 17,
                                //                           color: yindigo),
                                //                     )
                                //                   ],
                                //                 ),
                                //               )
                                //             ],
                                //           ),
                                //         ),
                                //       );
                                //     });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/images/whatsapp_icon.svg',
                                  height: 30,
                                ),
                              ))
                        ],
                      ),
                      ysizedbox10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Instant Topup',
                            style: TextStyle(
                              fontSize: 14,
                              color: ywhite,
                            ),
                          ),
                          Text(
                            'Payment Link',
                            style: TextStyle(
                              fontSize: 14,
                              color: ywhite,
                            ),
                          ),
                          Text(
                            'Whatsapp Link',
                            style: TextStyle(
                              fontSize: 14,
                              color: ywhite,
                            ),
                          )
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
                            borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25, left: 20,bottom: 25),
                              child: Row(
                                children: [
                                  Text(
                                    'Service Operation',
                                    style: primaryFontbold.copyWith(
                                        fontSize: 19, color: yblue),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/ptopscreen');
                                      },
                                      child: SvgPicture.asset(
                                          'assets/images/p_to_p_icon.svg')),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'P to P',
                                      style: primaryFont.copyWith(),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/creditcard');
                                      },
                                      child: SvgPicture.asset(
                                          'assets/images/credi_card_icons.svg')),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Credit Card',
                                      style: primaryFont.copyWith(),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/recharge');
                                      },
                                      child: SvgPicture.asset(
                                          'assets/images/recharge_icons.svg')),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Recharge',
                                        style: primaryFont.copyWith()),
                                  )
                                ])
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20,top: 25,bottom: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Recent Transaction',
                                      style: primaryFontbold.copyWith(
                                          fontSize: 18)),
                                  // Text(
                                  //   'See all',
                                  //   style:
                                  //       TextStyle(color: yblue, fontSize: 15),
                                  // )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: GetBuilder<PayoutController>(
                                builder: (_) {
                                  return payoutController.walletTransactionData.isEmpty ? 
                                   Center(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 10,),
                                        const Image(image: AssetImage("assets/images/walletnotavailableimage.png")),
                                        const SizedBox(height: 10,),
                                        Text("Transaction not found",
                                        style: primaryFontmedium.copyWith(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700
                                        ),
                                ),
                                      ],
                                    ),
                                  ) :
                                  Container(
                                    height: 200,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        color: ywhite),
                                        child: ListView.builder(
                                          itemCount: payoutController.walletTransactionData.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 55,
                                                        width: 55,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey
                                                                .withOpacity(0.2),
                                                            borderRadius:
                                                                BorderRadius.circular(60)),
                                                        alignment: Alignment.center,
                                                        child: SvgPicture.asset(
                                                            'assets/images/Icon awesome-user-alt.svg',
                                                            height: 30),
                                                      ),
                                                   const SizedBox(width: 10,),
                                                   Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        payoutController.walletTransactionData[index].flag,
                                                        style: primaryFont.copyWith(
                                                            fontSize: 17),
                                                      ),
                                                       Padding(
                                                        padding:const EdgeInsets.only(top: 4),
                                                        child: Text(payoutController.walletTransactionData[index].remarks),
                                                      )
                                                    ],
                                                  ),
                                                    ],
                                                  ),
                                                
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(payoutController.walletTransactionData[index].flag == "payout" ?
                                                            payoutController.walletTransactionData[index].debitAmount : payoutController.walletTransactionData[index].creditAmount,
                                                            style: primaryFontsemiBold
                                                                .copyWith(
                                                                    color:payoutController.walletTransactionData[index].flag == "payout" ? Colors.red : Colors.green,
                                                                    fontSize: 17),
                                                          ),
                                                           Padding(
                                                            padding:const EdgeInsets.only(top: 4),
                                                            child: Text(formatDate(payoutController.walletTransactionData[index].createdAt, [MM," ", dd])),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                        ),
                                  );
                                }
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
        //   bottomNavigationBar: BottumBar(),
        //  bottomNavigationBar: Container(
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
        //                             SvgPicture.asset('assets/icons/home.svg'),
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
        //  ),
      ),
    );
  }
}
