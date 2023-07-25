import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';

import '../../../constants/app_fonts.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {

  var nameController = TextEditingController();
  var mobilenumberController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();
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
                                      Navigator.of(context).pushNamed( '/profile');
                                    },
                                    child: Image.asset('assets/icons/backarrow.png')),
                               Text('Support',
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
                  
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      ),
                      child: Column(children: [
                        ysizedbox40,
                        Text('How can we suppot you?',
                        style: primaryFontsemiBold.copyWith(
                          fontSize: 19
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text('It looks like you are experiencing problems \nwith our sign up process. We are here to \nsupport so please get in touch with us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.3
                          ),),
                        ),
                        ysizedbox40,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             CircleAvatar(
                              radius: 40,
                              backgroundColor: yblue,
                              child: Image.asset('assets/images/supportsmsimage.png',
                               height: 30,
                              fit: BoxFit.fitHeight,
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                                  backgroundColor: yblue,
                              child: Image.asset('assets/images/supportemailimage.png',
                              height: 30,
                              fit: BoxFit.fitHeight,
                            ),
                            ),
                           
                          ],
                        ),
                        ysizedbox10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Chat to US',
                            style: TextStyle(
                              fontSize: 17
                            ),),
                            Text('Email',
                            style: TextStyle(
                              fontSize: 17
                            ),)
                          ],
                        ),
                        ysizedbox40,
                        ysizedbox20,
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            color: ywhite,
                          borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            
                            ),
                        ),
                         ysizedbox20,
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            color: ywhite,
                          borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextField(
                            controller: mobilenumberController,
                            decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            
                            ),
                        ),
                           ysizedbox20,
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            color: ywhite,
                          borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'Email ID',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            
                            ),
                        ),
                                ysizedbox20,
                        Container(
                        
                          width: MediaQuery.of(context).size.width*0.85,
                          decoration: BoxDecoration(
                            color: ywhite,
                          borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextField(
                            maxLines: 2,
                            controller: messageController,
                            decoration: InputDecoration(
                              
                              hintText: 'Messages',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            
                            ),
                        ),
                        ysizedbox40,
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed( '/bottumnavbar');
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.85,
                            decoration: BoxDecoration(
                              color: yindigo,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text('Send',
                            style: primaryFontsemiBold.copyWith(
                              color: ywhite,
                              fontSize: 20
                            ),)),
                          ),
                        ),
                        ysizedbox30,
                      ]),
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