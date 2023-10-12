import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';
import 'package:your_choice_app/src/controller/profile_controller/profileapi_controller.dart';

class SupportScreenNew extends StatefulWidget {
  const SupportScreenNew({super.key});

  @override
  State<SupportScreenNew> createState() => _SupportScreenNewState();
}

class _SupportScreenNewState extends State<SupportScreenNew> {

  final profileController = Get.find<ProfileApiController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileController.adminSupportDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
        child: GetBuilder<ProfileApiController>(
          builder: (_) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                            InkWell(
                               onTap: (){
                                 Get.back();
                                   },
                                     child: Image.asset('assets/icons/backarrow.png')),
                                       Text('Support(11AM-8PM)',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: ywhite,
                                        fontWeight: FontWeight.w600
                                       ),),
                                       Container(width: 20,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:const EdgeInsets.all(15.0),
                      child: profileController.adminSupportDetailData.isEmpty ? Container() : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              const Image(image: AssetImage("assets/images/note.png"),height: 40,width: 40,),
                              const SizedBox(width: 10,),
                              Text('Note :',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                                       ),),
                            ],
                          ),
                          const SizedBox(height: 15,),
                                    Text('Please write your concern with\ntransactionor reference id we will\ntry resolve as soon as possible.',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 17,
                                        color: yindigo,
                                        fontWeight: FontWeight.w700
                                       ),),
                                       const SizedBox(height: 15,),
                                        Text('BANk SERVER ISSUE, IT WILL\nTAKE UP TO 2 WORKING DAYS',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 17,
                                        color: yindigo,
                                        fontWeight: FontWeight.w700
                                       ),),
                                       const SizedBox(height: 20,),
                                       Row(
                            children: [
                              const Image(image: AssetImage("assets/images/social.png"),height: 40,width: 40,),
                              const SizedBox(width: 10,),
                              Text('Whatsapp :',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                                       ),),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          profileController.adminSupportDetailData.isEmpty ? const Text("") : 
                          Text('${profileController.adminSupportDetailData.first.whatsappNumber}(Whatsapp your\nqueries, please avoid phone call)',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 17,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600
                                       ),),
                                       const SizedBox(height: 20,),
                            Row(
                            children: [
                              const Image(image: AssetImage("assets/images/mail.png"),height: 40,width: 40,),
                              const SizedBox(width: 10,),
                              Text('Email :',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                                       ),),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          for(int i = 0; i < profileController.adminSupportDetailData.first.email.length; i++)
                          profileController.adminSupportDetailData.isEmpty ? const Text("") : 
                          Text(profileController.adminSupportDetailData.first.email[i],
                                           style: primaryFontmedium.copyWith(
                                            fontSize: 17,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600
                                ),
                          ),
                            const SizedBox(height: 20,),
                             Row(
                            children: [
                              const Image(image: AssetImage("assets/images/locations.png"),height: 40,width: 40,),
                              const SizedBox(width: 10,),
                              Text('Our Location :',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                               ),),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          profileController.adminSupportDetailData.isEmpty ? const Text("") : 
                          Text(profileController.adminSupportDetailData.first.locations,
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 17,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600
                            ),),
                            const SizedBox(height: 20,),
                           Row(
                            children: [
                              const Image(image: AssetImage("assets/images/share.png"),height: 40,width: 40,),
                              const SizedBox(width: 10,),
                              Text('Share App :',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600
                               ),),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Text('Share Application Link',
                                       style: primaryFontmedium.copyWith(
                                        fontSize: 17,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600
                            ),), 
                            const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}