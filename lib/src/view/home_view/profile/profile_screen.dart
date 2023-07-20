import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Profile',
                                          style: TextStyle(
                                            color: ywhite,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Raja, 987654321',
                                                style: TextStyle(
                                                  color: ywhite
                                                ),),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 6),
                                                  child: Text('Edit',
                                                  style: TextStyle(
                                                    color: ywhite
                                                  ),),
                                                )
                                              ],
                                            ),
                                          )
                                     ],
                                   ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.only(right: 5),
                                   child: Image.asset('assets/images/notificationimage.png'),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 5),
                                   child: Image.asset('assets/images/homeprofileimage.png'),
                                 )
                             
                                ],
                                           )
                                 ],
                               ),
                             ),
                  ],
                ),
                ysizedbox40,
                Column(
                  children: [
                    Container(
                      height: 630,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ywhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/createpinprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Create Tpin',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          Image.asset('assets/icons/forwardprofile.png')
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                            ysizedbox30,
                               Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/passwordprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Password',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          Image.asset('assets/icons/forwardprofile.png')
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                              ysizedbox30,
                               Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/icons/referalpofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Referral',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          Image.asset('assets/icons/forwardprofile.png')
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                             ysizedbox30,
                               Container(
                              height: 56,
                              width: 350,
                              decoration: BoxDecoration(
                                color: yindigo,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/ icons/supportprofile.png'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Support',
                                          style: TextStyle(
                                            color: ywhite
                                          ),),
                                        ),
                                        
                                      ],
                                    ),
                                     Row(
                                          children: [
                                          Image.asset('assets/icons/forwardprofile.png')
                                          ],
                                         )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
              ]
            ),
          ],
        )
      )
    );
  }
}