import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    chooseCheckUserFn();
  }

  toLandingPage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed("/onbording");
  }

  toHomePage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed("/home");
  }

  chooseCheckUserFn() async {
    final prefs = await SharedPreferences.getInstance();
    String? authToken = prefs.getString("auth_token");
    print(authToken);

    if (authToken == null) {
      toLandingPage();
    } else if (authToken == "null") {
      toLandingPage();
    } else {
      toHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ywhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset('assets/images/splashimage.png'),
        ),
      ),
    );
  }
}
