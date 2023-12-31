import 'package:flutter/material.dart';

import 'package:your_choice_app/src/constants/app_colors.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class AuthLandingScreen extends StatefulWidget {
  const AuthLandingScreen({super.key});

  @override
  State<AuthLandingScreen> createState() => _AuthLandingScreenState();
}

class _AuthLandingScreenState extends State<AuthLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ysizedbox10,
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Row(
                      children: [
                        //   IconButton(
                        //   onPressed: (){
                        //     Navigator.of(context).pushNamed("/onbording");
                        //   },
                        // icon: Icon(Icons.arrow_back,
                        // color: yblue,)),
                      ],
                    ),
                  ),
                ),
                ysizedbox40,
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Image.asset('assets/images/authlandingimage.png'),
                ),
                ysizedbox20,
                Text(
                  'Fast & Secure',
                  style: primaryFont.copyWith(
                      fontSize: 25, color: yblue, fontStyle: FontStyle.italic),
                ),
                ysizedbox20,
                Text(
                    'A signup page (also known as a \n registration page) enables users and \n organizations to independently register and \n gain access to your system.',
                    textAlign: TextAlign.center,
                    style:
                        primaryFontregular.copyWith(fontSize: 16, height: 1.8)),
                ysizedbox40,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 45),
                        backgroundColor: yindigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/siginhome');
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 17),
                    )),
                ysizedbox20,
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registerscreen');
                  },
                  child: Text(
                    'Create a new account',
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
