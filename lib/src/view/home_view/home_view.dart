import 'package:flutter/material.dart';
import 'package:your_choice_app/src/constants/app_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your choice",
          style: primaryFont.copyWith(
              color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
