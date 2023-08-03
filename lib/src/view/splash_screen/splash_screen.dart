import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_colors.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    toHomepage();
  }

  toHomepage()async{
   await Future.delayed(Duration(seconds: 2));
   Navigator.of(context).pushReplacementNamed("/onbording");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ywhite ,
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset('assets/images/splashimage.png'),
        ),
      ),
    );
  }
}