import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/controller/profile_controller/profileapi_controller.dart';

import '../../../controller/sigin_controller.dart';
import '../../auth_views/signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final navigationCOntroller = Get.find<AuthController>();

  var profileapiController = Get.find<ProfileApiController>();

  String userName = "";
  String phoneNumber = "";

  @override
  void initState() {
    super.initState();
    setDefault();
  }

  setDefault() async {
    await profileapiController.getprofile();
    setState(() {
  userName = profileapiController.profileData.first.name;
  phoneNumber = profileapiController.profileData.first.mobile;
});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: yindigo,
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
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
                                'Profile',
                                style: TextStyle(
                                    color: ywhite,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '$userName, $phoneNumber',
                                      style: TextStyle(color: ywhite),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('/editprofile');
                                        },
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(color: ywhite),
                                        ),
                                      ),
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
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed('/notification');
                                    },
                                    child: SvgPicture.asset(
                                            'assets/images/notificationimage.svg')),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/editprofile');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                      'assets/images/homeprofileimage.png'),
                                ),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/createpin');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: ywhite,
                            borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Container(
                                height: 56,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: yindigo,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/icons/createpinprofile.png'),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Create Tpin',
                                              style: TextStyle(color: ywhite),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .pushNamed('/createpin');
                                              },
                                              child: Image.asset(
                                                  'assets/icons/forwardprofile.png'))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ysizedbox30,
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/password');
                                },
                                child: Container(
                                  height: 56,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/passwordprofile.png'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Password',
                                                style: TextStyle(color: ywhite),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushNamed('/password');
                                                },
                                                child: Image.asset(
                                                    'assets/icons/forwardprofile.png'))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ysizedbox30,
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/referal');
                                },
                                child: Container(
                                  height: 56,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/referalpofile.png'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Referral',
                                                style: TextStyle(color: ywhite),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushNamed('/referal');
                                                },
                                                child: Image.asset(
                                                    'assets/icons/forwardprofile.png'))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ysizedbox30,
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/support');
                                },
                                child: Container(
                                  height: 56,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/supportprofile.png'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Support',
                                                style: TextStyle(color: ywhite),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushNamed('/support');
                                                },
                                                child: Image.asset(
                                                    'assets/icons/forwardprofile.png'))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ysizedbox30,
                              InkWell(
                                onTap: () {
                                  _showModalSheet();
                                },
                                child: Container(
                                  height: 56,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: yindigo,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/signoutprofile.png'),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Sign Out',
                                                style: TextStyle(color: ywhite),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/icons/forwardprofile.png')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              ysizedbox30,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NORMAL CARD - 1.6% , CORP/BUSINESS 1 - 2.0%',
                                    style: TextStyle(
                                        height: 1.8,
                                        fontSize: 14,
                                        color: yblue),
                                  ),
                                  Text(
                                    'CORP/BUSINESS 2 - 2.2% , DINNERS CARD - 2.2%',
                                    style: TextStyle(
                                        height: 1.8,
                                        fontSize: 14,
                                        color: yblue),
                                  ),
                                  Text(
                                    'AMEX CARD - 2.4% , PREPAID CARD - 2.4%',
                                    style: TextStyle(
                                        height: 1.8,
                                        fontSize: 14,
                                        color: yblue),
                                  )
                                ],
                              ),
                              ysizedbox20,
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 25),
                                child: Container(
                                  height: 81,
                                  width: MediaQuery.of(context).size.width,
                                  decoration:
                                      BoxDecoration(color: Color(0xffDDE9F0)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          'NOTE: INSTANT SETTLEMENT TO YOUR BANK \nACCOUNT, IF BANK SERVER ISSUE, IT WILL \nTAKE UP TO 2 WORKING DAYS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: yblue,
                                              height: 1.5,
                                              fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ysizedbox30,
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ]),
          ysizedbox40
        ],
      )),
    );
  }

  void _showModalSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      context: context,
      builder: (builder) {
        return Container(
          height: 162,
          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              const Center(
                  child: Text(
                "Do you want to Logout?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40),
                      backgroundColor: yblue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      // await FirebaseMessaging.instance.deleteToken();
                      await prefs.setString("auth_token", "null");
                      // Get.to(const SigninScreen(),);
                      Navigator.of(context)
                          .pushReplacementNamed("/authlanding");
                      //Navigator.pushReplacementNamed(context, );
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(fontSize: 15, color: ywhite),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: yblue, width: 1),
                        minimumSize: const Size(110, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/bottumnavbar');
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: 15, color: yblue),
                      ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
