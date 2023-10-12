import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';
import '../../../controller/profile_controller/profileapi_controller.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  var currentpasswordController = TextEditingController();
  var newpasswordController = TextEditingController();
  var confirpasswordController = TextEditingController();

  bool currentvisibility =false;
  bool newvisibility=false;
  bool confirvisibility=false;

  final profileapiController = Get.find<ProfileApiController>();
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
               Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                             Get.back();
                            },
                            child: Image.asset('assets/icons/backarrow.png')),
                       Text('Password Set',
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
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ysizedbox30,
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Text( 'Current Password',
                          style: primaryFontmedium.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w800
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: TextField(
                            controller: currentpasswordController,
                            decoration: InputDecoration(
                              fillColor:const Color(0xffDDE9F0),
                              filled: true,
                              suffixIcon:currentvisibility?IconButton(
                                onPressed: (){
                                      setState(() {
                                        currentvisibility=!currentvisibility;
                                      });
                              }, icon: Icon(Icons.visibility,
                              color: ygrey,)):IconButton(
                                onPressed: (){
                                  setState(() {
                                        currentvisibility=!currentvisibility;
                                      });
                                }, 
                              icon:Icon(Icons.visibility_off,
                              color: ygrey,)),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                        ysizedbox30,
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Text('New Password',
                          style: primaryFontmedium.copyWith(
                             fontWeight: FontWeight.w800,
                            fontSize: 14,
                          
                          ),),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: TextField(
                            controller: newpasswordController,
                            decoration: InputDecoration(
                              fillColor:const Color(0xffDDE9F0),
                              filled: true,
                              suffixIcon:newvisibility?IconButton(
                                onPressed: (){
                                      setState(() {
                                        newvisibility=!newvisibility;
                                      });
                              }, icon: Icon(Icons.visibility,
                              color: ygrey,)):IconButton(
                                onPressed: (){
                                  setState(() {
                                        newvisibility=!newvisibility;
                                      });
                                }, 
                              icon:Icon(Icons.visibility_off,
                              color: ygrey,)),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                        ysizedbox30,
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Text('Confirm New Password',
                          style: primaryFontmedium.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w800
                          ),),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: TextField(
                            controller: confirpasswordController,
                            decoration: InputDecoration(
                              fillColor:const Color(0xffDDE9F0),
                              filled: true,
                              suffixIcon:confirvisibility?IconButton(
                                onPressed: (){
                                      setState(() {
                                        confirvisibility=!confirvisibility;
                                      });
                              }, icon: Icon(Icons.visibility,
                              color: ygrey,)):IconButton(
                                onPressed: (){
                                  setState(() {
                                        confirvisibility=!confirvisibility;
                                      });
                                }, 
                              icon:Icon(Icons.visibility_off,
                              color: ygrey,)),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        ),
                        ysizedbox40,
                        ysizedbox40,
                        ysizedbox40,
                        ysizedbox40,
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: InkWell(
                            onTap: (){
                              showDialog(context: context, 
                              builder: (context){
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Container(
                                    height: 520,
                                    width:MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: ywhite,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: [
                                        ysizedbox10,
                                        Image.asset('assets/images/profilepasswordimage.png'),

                                        ysizedbox20,
                                        Text('Password Reset',
                                        style: primaryFontmedium.copyWith(
                                          color: Colors.black,
                                          fontSize: 25,
                                        
                                        ),),
                                        ysizedbox10,
                                         Text('Your password has been reset successfully',
                                         style: TextStyle(
                                          fontSize: 16
                                         ),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.of(context).pushNamed( '/bottumnavbar');
                                              },
                                              child: Container(
                                                height: 45,
                                                width: MediaQuery.of(context).size.width,
                                                decoration: BoxDecoration(
                                                  color: yindigo,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Center(
                                                  child: Text('Complete',
                                                  style: primaryFontmedium.copyWith(
                                                    color: ywhite,
                                                    fontSize: 17
                                                  ),),
                                                ),
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                );
                              });
                            },
                            child: InkWell(
                              onTap: (){
                                profileapiController.password(
                                  password: newpasswordController.text, 
                                  confirm_password: confirpasswordController.text, 
                                  userId: currentpasswordController.text);
                              },
                              child: Container(
                                height: 55,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: yindigo,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text('Update Passwrd',
                                  style: primaryFontmedium.copyWith(
                                    color: ywhite,
                                    fontSize: 20
                                  ),),
                                ),
                              ),
                            ),
                          ),
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