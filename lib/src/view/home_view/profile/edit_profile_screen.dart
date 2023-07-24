import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var usernameController = TextEditingController();
  var mobilenumberController = TextEditingController();
  var emailController = TextEditingController();
  var addresController = TextEditingController();
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
                    ysizedbox20,
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed('/profile');
                            },
                            child: Image.asset('assets/icons/backarrow.png')),
                       Text('Profile Edit',
                       style: primaryFontmedium.copyWith(
                        fontSize: 25,
                        color: ywhite
                       ),),
                       Container()
                        ],
                       ),
                     )
                  ],
                ),
                ysizedbox40,
                ysizedbox40,
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:ywhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      ),
                      child: Column(
                        children: [
                          ysizedbox20,
                          Stack(
                            children: [
                             Image.asset('assets/images/editprofileimgae.png'),

                             Positioned(
                              top: 120,
                              left: 110,
                              child: Image.asset('assets/icons/cameraicon.png',
                             ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,),
                            child: Text('Replace Photo',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: yblue
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                            child: Container(
                              height: 64,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('assets/icons/personicon.png'),
                                  hintText: 'User Name',
                                  hintStyle: TextStyle(
                                    fontSize: 14
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                ),
                            ),
                          ),
                             Padding(
                            padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                            child: Container(
                              height: 64,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextField(
                                controller: mobilenumberController,
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('assets/icons/phoneicon.png'),
                                  hintText: 'Mobile Nmber',
                                  hintStyle: TextStyle(
                                    fontSize: 14
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                ),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                            child: Container(
                              height: 64,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('assets/icons/emailicon.png'),
                                  hintText: 'Email Id',
                                  hintStyle: TextStyle(
                                    fontSize: 14
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
                            child: Container(
                              height: 64,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: ywhite,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextField(
                                controller: addresController,
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset('assets/icons/addressicon.png'),
                                  hintText: 'Address',
                                  hintStyle: TextStyle(
                                    fontSize: 14
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                ),
                            ),
                          ),
                          ysizedbox30,
                             Padding(
                               padding: const EdgeInsets.only(left: 20,right: 20),
                               child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: yindigo,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text('Save',
                                  style: TextStyle(
                                    color: ywhite,
                                    fontSize: 18
                                  ),),
                                ),
                               ),
                             ),
                            ysizedbox40,
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}