import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:your_choice_app/src/controller/profile_controller/profileapi_controller.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';
class PaymentLinkScreen extends StatefulWidget {
  const PaymentLinkScreen({super.key});

  @override
  State<PaymentLinkScreen> createState() => _PaymentLinkScreenState();
}

class _PaymentLinkScreenState extends State<PaymentLinkScreen> {

  final profileapiController = Get.find<ProfileApiController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileapiController.getprofile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(     '/bottumnavbar'     )   ;   
                    },
                    child: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Payment Link',
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
          
          Image.asset('assets/images/paymentlinkscreenimage.png'),
        
          Column(
            
            children: [
              Text('Share with the world',textAlign: TextAlign.center,
              style: primaryFontmedium.copyWith(
                fontSize: 13,
                color: yblue
              ),),
              GetBuilder<ProfileApiController>(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 54,
                          decoration: BoxDecoration(
                            color: ywhite,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset:const Offset(0.0, 0.75),
                                blurRadius: 5,
                                color: ygrey
                              )
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 250,
                                  child: profileapiController.profileData.isEmpty ? 
                                  const Text("") : 
                                  Text('https://yourchoice.batechnology.in/payment/${profileapiController.profileData.first.paymentId}',
                                  overflow: TextOverflow.ellipsis,
                                  style: primaryFontmedium.copyWith(
                                    fontSize: 13,
                                    color:yblue,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: InkWell(
                                    onTap: () async {
                                      await profileapiController.profileData.isEmpty ? 
                                      const Text("") : Clipboard.setData(
                                      ClipboardData(text: "https://yourchoice.batechnology.in/payment/${profileapiController.profileData.first.paymentId}"));
                                      Get.rawSnackbar(
                                      message: "Copied", backgroundColor: Colors.green);
                                     },
                                    child: Container(
                                      width: 75,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color:yindigo,
                                        borderRadius: BorderRadius.circular(7)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset('assets/images/paymentlinkimage.png',
                                          height: 20,
                                          color: ywhite,),
                                          Text('Copy',
                                          style: TextStyle(
                                            color: ywhite
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
              ysizedbox20,
               Padding(
                 padding: const EdgeInsets.only(bottom: 10,left: 20,right: 20),
                 child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             minimumSize:const Size(200, 50),
                             backgroundColor: yindigo,
                             shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8)
                             )
                           ),
                           onPressed: (){
                            //  profileapiController.profileData.isEmpty ? 
                            //  const Text("") :
                            //  Share.share('https://yourchoice.batechnology.in/payment/${profileapiController.profileData.first.id}');
                           }, 
                       child:const Center(
                         child: Text('Share',
                         style: TextStyle(
                             fontSize: 17
                         ),),
                       )),
               ),
            ],
          ),
        ],
      )),
    );
  }
}